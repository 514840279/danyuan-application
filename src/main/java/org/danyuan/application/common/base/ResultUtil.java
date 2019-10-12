package org.danyuan.application.common.base;

/**
 * @文件名 ResultUtil.java
 * @包名 org.danyuan.application.common.base
 * @描述 数据返回构造工具类
 * @时间 2019年1月16日 下午5:20:32
 * @author Administrator
 * @版本 V1.0
 */
public class ResultUtil {
	
	public static <T> BaseResult<T> success(T data) {
		return commonResult(200, "请求成功", data);
	}

	public static <T> BaseResult<T> success() {
		return commonResult(200, "请求成功", null);
	}
	
	public static <T> BaseResult<T> error(String errorMsg) {
		return error(200, errorMsg);
	}
	
	public static <T> BaseResult<T> error(Integer code, String errorMsg) {
		return commonResult(code, errorMsg, null);
	}
	
	private static <T> BaseResult<T> commonResult(Integer code, String errMsg, T data) {
		BaseResult<T> result = new BaseResult<>();
		result.setCode(code);
		result.setMsg(errMsg);
		result.setData(data);
		return result;
	}
}
