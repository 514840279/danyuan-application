package org.danyuan.application.common.utils.httpsdownload;

/**    
*  文件名 ： PostTest.java  
*  包    名 ： org.danyuan.download  
*  描    述 ： TODO(用一句话描述该文件做什么)  
*  作    者 ： Tenghui.Wang  
*  时    间 ： 2016年3月17日 下午8:31:22  
*  版    本 ： V1.0    
*/
import java.io.IOException;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.CookieStore;
import java.net.HttpCookie;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.List;

import org.apache.commons.httpclient.DefaultHttpMethodRetryHandler;
import org.apache.commons.httpclient.Header;
import org.apache.commons.httpclient.HttpClient;
import org.apache.commons.httpclient.HttpException;
import org.apache.commons.httpclient.HttpStatus;
import org.apache.commons.httpclient.methods.PostMethod;
import org.apache.commons.httpclient.params.HttpMethodParams;

/**
 * 依赖 commons-httpclient-3.1.jar commons-codec-1.4.jar
 * @author tianjun
 */
public class PostTest {
	public static void main(String[] args) {
		main2();
	}
	
	public static void main2() {
		try {
			CookieManager manager = new CookieManager();
			manager.setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
			CookieHandler.setDefault(manager);
			URL url = new URL("http://www.xuexi111.com/");
			HttpURLConnection conn = (HttpURLConnection) url.openConnection();
			conn.getHeaderFields();
			CookieStore store = manager.getCookieStore();
			List<HttpCookie> lCookies = store.getCookies();
			System.out.printf("共%s个cookie\n", lCookies.size());
			for (HttpCookie cookie : lCookies) {
				System.out.printf("原:%s  名称:%s  解码值:%s\n", cookie.toString(), cookie.getName(), URLDecoder.decode(cookie.getValue(), "UTF8"));
			}
		} catch (Exception e) {
			
			e.printStackTrace();
			
		}
		
	}
	
	@SuppressWarnings("unused")
	public static String main1(String uri) {
		String body = "";
		// （1）构造HttpClient的实例
		HttpClient httpClient = new HttpClient();
		// （2）创建POST方法的实例
		PostMethod postMethod = new PostMethod(uri);
		// GetMethod getMethod = new
		// GetMethod("http://localhost:8080/b/test1.do");
		// （3）设置http request头
		List<Header> headers = new ArrayList<Header>();
		// headers.add(new Header("tianjun_key", "tianjun_value"));
		// httpClient.getHostConfiguration().getParams().setParameter(
		// "http.default-headers", headers);
		// 使用系统提供的默认的恢复策略
		postMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER, new DefaultHttpMethodRetryHandler());
		// getMethod.getParams().setParameter(HttpMethodParams.RETRY_HANDLER,
		// new DefaultHttpMethodRetryHandler());
		try {
			// （4）执行postMethod
			int statusCode = httpClient.executeMethod(postMethod);
			if (statusCode != HttpStatus.SC_OK) {
				System.err.println("Method failed:" + postMethod.getStatusLine());
			}
			// （5）读取response头信息
			Header headerResponse = postMethod.getResponseHeader("response_key");
			// String headerStr = headerResponse.getValue();
			// （6）读取内容
			byte[] responseBody = postMethod.getResponseBody();
			Header[] h = postMethod.getRequestHeaders();
			for (Header header : h) {
				System.out.println(header);
			}
			// （7） 处理内容
			// System.out.println(headerStr);
			// System.out.println();
			body = new String(responseBody);
		} catch (HttpException e) {
			// 发生致命的异常，可能是协议不对或者返回的内容有问题
			System.out.println("Please check your provided http address!");
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			// 释放连接
			postMethod.releaseConnection();
		}
		return body;
	}
}
