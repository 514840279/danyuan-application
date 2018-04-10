package tk.ainiyue.danyuan.application.common.config.syslog;

import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.lang.reflect.Field;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;

@Aspect//用于将切面声明为一个普通的类
@Component//将这个类引入spring容器中去
public class HttpAspect {
	@Autowired
	SysComnLogsDao sysComnLogsDao;
	public static SysComnLogs logs = new SysComnLogs();
	

    private final static Logger logger = LoggerFactory.getLogger(HttpAspect.class);//参数为当前使用的类名

    @Pointcut("execution(public * tk.ainiyue.danyuan.application.*.*.controller.*.*(..))")//要处理的方法，包名+类名+方法名
    public void cut(){
    }

    @Before("cut()")//在调用上面 @Pointcut标注的方法前执行以下方法
    public void doBefore(JoinPoint joinPoint){//用于获取类方法
        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
        HttpServletRequest request =  attributes.getRequest();
        logs.setUuid(UUID.randomUUID().toString());
        //url
        logger.info("url ={}",request.getRequestURI());
        logs.setUrl(request.getRequestURI());
        //method
        logger.info("method={}",request.getMethod());
        logs.setMethod(request.getMethod());
        //ip
        logger.info("ip={}",request.getRemoteAddr());
        logs.setIp( getIpAddr(request));
        //类方法
        logger.info("class_method={}",joinPoint.getSignature().getDeclaringTypeName()+'.'+ joinPoint.getSignature().getName());//获取类名及类方法
        logs.setClassName(joinPoint.getSignature().getDeclaringTypeName());
        logs.setClassMethod( joinPoint.getSignature().getName());
        // 用户
        String user = (String) request.getSession().getAttribute("user");
        logs.setCreateUser(user);
        //参数
        logger.info("args={}",joinPoint.getArgs());
        ObjectMapper mapper = new ObjectMapper();  
        String ss="";
		try {
			ss = mapper.writeValueAsString(joinPoint.getArgs());
		} catch (JsonProcessingException e) {
		}
        logs.setArgs(ss);
        logs.setRequestLong(System.currentTimeMillis());
        
    }

    @After("cut()")//无论Controller中调用方法以何种方式结束，都会执行
    public void doAfter(){
        logger.info("----doAfter-----------");
        logs.setRequestLong(System.currentTimeMillis()-logs.getRequestLong());
        sysComnLogsDao.save(logs);
    }

    @AfterReturning(returning = "obj",pointcut = "cut()")//在调用上面 @Pointcut标注的方法后执行。用于获取返回值
    public void doAfterReturning(Object obj){
        logger.info("response={}",obj.toString());
    }
    
    
    public static Map<String, Object> objectToMap(Object obj) throws IllegalAccessException {
		Map<String, Object> map = new HashMap<>();
		Class<?> clazz = obj.getClass();
		System.out.println(clazz);
		for (Field field : clazz.getDeclaredFields()) {
			field.setAccessible(true);
			String fieldName = field.getName();
			Object value = field.get(obj).toString();
			map.put(fieldName, value);
		}
		return map;
	}
    
    /**
     * 获取登录用户远程主机ip地址
     * 
     * @param request
     * @return
     */
    private String getIpAddr(HttpServletRequest request) {
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}
