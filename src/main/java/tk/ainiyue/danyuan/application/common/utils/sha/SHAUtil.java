package tk.ainiyue.danyuan.application.common.utils.sha;

import java.security.MessageDigest;

/**
 * 文件名 ： SHAUtil.java
 * 包 名 ： org.eastone.utils.sha
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月18日 下午2:04:33
 * 版 本 ： V1.0
 */
public class SHAUtil {
	/***
	 * SHA加密 生成40位SHA码
	 * @param 待加密字符串
	 * @return 返回40位SHA码
	 */
	public static String shaEncode(String inStr) throws Exception {
		MessageDigest sha = null;
		try {
			sha = MessageDigest.getInstance("SHA");
		} catch (Exception e) {
			System.out.println(e.toString());
			e.printStackTrace();
			return "";
		}
		
		byte[] byteArray = inStr.getBytes("UTF-8");
		byte[] md5Bytes = sha.digest(byteArray);
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
	// String str = new String("amigoxiexiexingxing");
	// System.out.println("原始：" + str);
	// System.out.println("SHA后：" + shaEncode(str));
	// }
}
