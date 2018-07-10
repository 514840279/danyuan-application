package tk.ainiyue.danyuan.application.common.utils.string;

import java.io.UnsupportedEncodingException;

/**
 * 文件名 ： StringUtils.java
 * 包 名 ：
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月2日 上午11:22:14
 * 版 本 ： V1.0
 */
public class StringUtils {
	
	public static String UUID() {
		return java.util.UUID.randomUUID().toString().replace("-", "");
	}
	
	public static String getUTF8(String string) throws UnsupportedEncodingException {
		String present = new String(string.getBytes("GBK"), "UTF-8");
		return present;
	}
	
	public static String[] getSplitArray(String str) {
		String[] strarry = str.replaceAll("[ |~|!|?|，|-|(|)|{|}|`|\\|]|[|/|	]", ",").split(",");
		return strarry;
	}
}
