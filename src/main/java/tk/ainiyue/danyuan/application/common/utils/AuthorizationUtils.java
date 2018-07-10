package tk.ainiyue.danyuan.application.common.utils;

import java.net.NetworkInterface;
import java.util.Enumeration;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;

import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

/**
 * java获取mac和机器码，注册码的实现
 */
@SuppressWarnings("deprecation")
public class AuthorizationUtils {
	private static final int	SPLITLENGTH	= 4;
	private static final String	SALT		= "danyuan.wang";
	
	public static void main(String args[]) throws Exception {
		String code = getMachineCode();
		
		String authCode = auth(code);
		System.out.println("机器码：" + code);
		System.out.println("注册码：" + authCode);
		
		// System.out.println("mac:"+getMac());
		// System.out.println("mac2:"+getMac2());
		
	}
	
	private static String getMachineCode() {
		Set<String> result = new HashSet<>();
		String mac = getMac();
		result.add(mac);
		Properties props = System.getProperties();
		String javaVersion = props.getProperty("java.version");
		result.add(javaVersion);
		// System.out.println("Java的运行环境版本： " + javaVersion);
		String javaVMVersion = props.getProperty("java.vm.version");
		result.add(javaVMVersion);
		// System.out.println("Java的虚拟机实现版本： " +
		// props.getProperty("java.vm.version"));
		String osVersion = props.getProperty("os.version");
		result.add(osVersion);
		// System.out.println("操作系统的版本： " + props.getProperty("os.version"));
		
		String code = new Md5PasswordEncoder().encodePassword(result.toString(), SALT);
		return getSplitString(code, "-", 4);
		
	}
	
	public static String auth(String machineCode) {
		String newCode = machineCode.toUpperCase();
		String code = new Md5PasswordEncoder().encodePassword(newCode, SALT).toUpperCase() + machineCode.length();
		return getSplitString(code);
	}
	
	private static String getSplitString(String str) {
		return getSplitString(str, "-", SPLITLENGTH);
	}
	
	private static String getSplitString(String str, String split, int length) {
		int len = str.length();
		StringBuilder temp = new StringBuilder();
		for (int i = 0; i < len; i++) {
			if (i % length == 0 && i > 0) {
				temp.append(split);
			}
			temp.append(str.charAt(i));
		}
		String[] attrs = temp.toString().split(split);
		StringBuilder finalMachineCode = new StringBuilder();
		for (String attr : attrs) {
			if (attr.length() == length) {
				finalMachineCode.append(attr).append(split);
			}
		}
		String result = finalMachineCode.toString().substring(0, finalMachineCode.toString().length() - 1);
		return result;
	}
	
	public static String bytesToHexString(byte[] src) {
		StringBuilder stringBuilder = new StringBuilder("");
		if (src == null || src.length <= 0) {
			return null;
		}
		for (int i = 0; i < src.length; i++) {
			int v = src[i] & 0xFF;
			String hv = Integer.toHexString(v);
			if (hv.length() < 2) {
				stringBuilder.append(0);
			}
			stringBuilder.append(hv);
		}
		return stringBuilder.toString();
	}
	
	// ‎00-24-7E-0A-22-93
	private static String getMac() {
		try {
			Enumeration<NetworkInterface> el = NetworkInterface.getNetworkInterfaces();
			while (el.hasMoreElements()) {
				byte[] mac = el.nextElement().getHardwareAddress();
				if (mac == null)
					continue;
				
				String hexstr = bytesToHexString(mac);
				return getSplitString(hexstr, "-", 2).toUpperCase();
				
			}
		} catch (Exception exception) {
			exception.printStackTrace();
		}
		return null;
	}
}