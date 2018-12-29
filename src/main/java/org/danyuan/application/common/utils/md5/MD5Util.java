package org.danyuan.application.common.utils.md5;

import java.security.MessageDigest;

/**
 * 文件名 ： MD5Util.java
 * 包 名 ： org.eastone.utils.md5
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月18日 下午2:00:13
 * 版 本 ： V1.0
 */
public class MD5Util {
	/***
	 * MD5加密 生成32位md5码
	 * @param 待加密字符串
	 * @return 返回32位md5码
	 */
	public static String md5Encode(String inStr) throws Exception {
		MessageDigest md5 = null;
		try {
			md5 = MessageDigest.getInstance("MD5");
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			return "";
		}
		
		byte[] byteArray = inStr.getBytes("UTF-8");
		byte[] md5Bytes = md5.digest(byteArray);
		StringBuffer hexValue = new StringBuffer();
		for (int i = 0; i < md5Bytes.length; i++) {
			int val = (md5Bytes[i]) & 0xff;
			if (val < 16) {
				hexValue.append("0");
			}
			hexValue.append(Integer.toHexString(val));
		}
		return hexValue.toString();
	}
	
	/**
	 * 测试主函数
	 * @param args
	 * @throws Exception
	 */
	// public static void main(String args[]) throws Exception {
	// String str = new String("123456");
	// System.out.println("原始：" + str);
	// System.out.println("MD5后：" + md5Encode(str));
	// }
}
