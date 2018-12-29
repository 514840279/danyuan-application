package org.danyuan.application.common.utils.string;

import java.io.UnsupportedEncodingException;
import java.text.NumberFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

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

	/**
	 * 功能：过滤input中的HTML标记
	 * <p>
	 * 效果: 将双引号变成&#38;#34;
	 * </p>
	 *
	 * @param str
	 *            过滤input中value=""中间特殊字符
	 * @return
	 */
	public static final String toInputValue(final String str) {
		if (null == str) {
			return "";
		} else {
			return str.replace("\"", "&#34;");
		}
	}
	
	/**
	 * 功能：过滤HTML标记
	 * <p>
	 * 效果: 将&#60;input type="text"&#62;输出，而不是显示文本框
	 * </p>
	 *
	 * @param str
	 *            <input type="text">
	 * @return &#60;input type="text"&#62;
	 */
	public static final String toHtml(final String str) {
		if (null == str) {
			return "";
		}
		
		Map<String, String> escapeMap = new HashMap<>();
		escapeMap.put(" ", "&nbsp;");
		escapeMap.put("<", "&#60;");
		escapeMap.put(">", "&#62;");
		escapeMap.put("&", "&#38;");
		escapeMap.put("'", "&#39;");
		
		escapeMap.put("\"", "&#34;");
		escapeMap.put("+", "&#43;");
		escapeMap.put("%", "&#37;");
		escapeMap.put("?", "&#63;");
		escapeMap.put("\r", "<br>");
		
		escapeMap.put("\n", "<br>");
		escapeMap.put("\t", "&nbsp;&nbsp;&nbsp;&nbsp;");
		escapeMap.put("©", "&#169;");
		escapeMap.put("®", "&#174;");
		escapeMap.put("™", "&#8482;");
		
		escapeMap.put("×", "&#215;");
		escapeMap.put("÷", "&#247;");
		
		StringBuffer hold = new StringBuffer();
		for (int i = 0; i < str.length(); i++) {
			String value = escapeMap.get(str.substring(i, i + 1));
			hold.append((null != value ? value : str.substring(i, i + 1)));
		}
		return hold.toString();
	}
	
	public static final String ltrim(final String str) {
		return (null == str ? "" : str.replaceAll("^\\s+", ""));
	}
	
	public static final String rtrim(final String str) {
		return (null == str ? "" : str.replaceAll("\\s+$", ""));
	}
	
	public static final String trim(final String str) {
		return (null == str ? "" : str.trim());
	}
	
	public static final boolean isNotEmpty(final String str) {
		return (null != str && !"".equals(str));
	}
	
	public static final long IpToNumber(final String ip) {
		try {
			long ipsum = 0;
			String[] ipSegs = ip.split("\\.");
			if (null != ipSegs && ipSegs.length == 4) {
				ipsum += to_number(ipSegs[0]) * (255 * 255 * 255);
				ipsum += to_number(ipSegs[1]) * (255 * 255);
				ipsum += to_number(ipSegs[2]) * (255);
				ipsum += to_number(ipSegs[3]);
				return ipsum;
			} else {
				return -1;
			}
		} catch (Exception e) {
			return -1;
		}
	}
	
	public static boolean checkIp(String ip, String ipStart, String ipEnd) {
		// 将IP地址转化成数字，直接进行比较
		long ipNum = IpToNumber(ip);
		long ipStartNum = IpToNumber(ipStart);
		long ipEndNum = IpToNumber(ipEnd);
		if (ipNum >= ipStartNum && ipNum <= ipEndNum) {
			return true;
		} else {
			return false;
		}
	}
	
	public static final String substrb(final String str, int cutLength) {
		StringBuffer result = new StringBuffer();
		int length = 0;
		for (int index = 0; index < str.length(); index++) {
			char c = str.charAt(index);
			if (c >= 0 && c <= 255) {
				length++;
			} else {
				length += 3;
			}
			if (length <= cutLength) {
				result.append(c);
			}
		}
		return result.toString();
	}
	
	/**
	 * 功能：类似oracle数据库中的正则截取
	 * <p>
	 * 效果: 将djd13912345j, [0-9]{1,}载取成13912345
	 *
	 * @param input
	 *            djd13912345j
	 * @param regexp
	 *            [0-9]{1,}
	 * @return 13912345
	 */
	public static final String regexp_substr(final String input, final String regexp) {
		Pattern pattern = Pattern.compile(regexp);
		Matcher matcher = pattern.matcher(input);
		if (matcher.find()) {
			return matcher.group();
		}
		return null;
	}
	
	public static final long to_number(final String str) throws NumberFormatException {
		return Long.parseLong(str);
	}
	
	public static final String regexpSJHM(String s) {
		Pattern pattern = Pattern.compile("([^0-9]{1,}(13|14|15|18)[0-9]{9}[^0-9]{0,})|([^0-9]{0,}(13|14|15|18)[0-9]{9}[^0-9]{1,})|([^0-9]{1,}(13|14|15|18)[0-9]{9}[^0-9]{1,})|(^(13|14|15|18)[0-9]{9}$)");
		Matcher matcher1 = pattern.matcher(s);
		if (matcher1.find()) {
			Matcher matcher2 = Pattern.compile("(13|14|15|18)([0-9]{9})").matcher(matcher1.group());
			if (matcher2.find()) {
				String sjhm = matcher2.group();
				return sjhm;
			}
		}
		return null;
	}
	
	public static final String regexpSFZH(String s) {
		Pattern pattern = Pattern.compile("([^0-9]{1,}(([0-9]{17}[0-9Xx]{1})|([0-9]{15}))[^0-9]{0,})|([^0-9]{0,}(([0-9]{17}[0-9Xx]{1})|([0-9]{15}))[^0-9]{1,})|([^0-9]{1,}(([0-9]{17}[0-9Xx]{1})|([0-9]{15}))[^0-9]{1,})|(^(([0-9]{17}[0-9Xx]{1})|([0-9]{15}))$)");
		Matcher matcher1 = pattern.matcher(s);
		if (matcher1.find()) {
			Matcher matcher2 = Pattern.compile("(([0-9]{17}[0-9Xx]{1})|([0-9]{15}))").matcher(matcher1.group());
			if (matcher2.find()) {
				String sjhm = matcher2.group();
				return sjhm;
			}
		}
		return null;
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：将s的首字符转换成大写,不支持中文
	 * <p>
	 * 效果:
	 *
	 * @param s
	 *            非空字符
	 * @return String
	 */
	public static final String toUpcaseFirstChar(String s) {
		// 如果s是null或者s=""的情况不考虑
		if (s.length() == 1) {
			s = s.toUpperCase();
		} else {
			s = s.substring(0, 1).toUpperCase().concat(s.substring(1));
		}
		return s;
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：将List集合转换成String数组
	 * <p>
	 * 效果:
	 *
	 * @param list
	 *            集合
	 * @return String[] 数组
	 */
	public static final String[] listToStringArray(List<?> list) {
		Iterator<?> it = list.iterator();
		String[] result = new String[list.size()];
		for (int i = 0; it.hasNext(); i++) {
			result[i] = it.next().toString();
		}
		return result;
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：返回分隔符后面的字符串<br>
	 * <p>
	 * 效果:<br>
	 * StringUtil.endString(file.jdo, ".",true) 返回".jdo"<br>
	 * StringUtil.endString(file.jdo, ".",false) 返回"jdo"，相当于 StringUtil.endString(file.jdo, ".")
	 *
	 * @param srcStr
	 *            源字符串
	 * @param strdivision
	 *            分隔符
	 * @param flag
	 *            如果为真则带分隔符，否则不带分隔符
	 * @return 处理完毕的字符串,如果没有找到分隔符，则返回NULL
	 */
	public static final String endString(String srcStr, String strdivision, boolean flag) {
		// 判断源字符串和分隔符是否为空,如果为空则返回源字符串
		if ((isNullOrNone(srcStr) || isNullOrNone(strdivision))) {
			return srcStr;
		}
		// 如果没有找到分隔符，则返回整个字符串的长度，否则返回分隔符的位置
		int length = srcStr.lastIndexOf(strdivision);
		if (length == -1) {
			return null;
		}
		// 判断是否需要带分隔符,为真时需要带分隔符
		if (flag) {
			return srcStr.substring(length);
		} else {
			return srcStr.substring(length + strdivision.length());
		}
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：返回分隔符后面的字符串,不带分隔符<br>
	 * <p>
	 * 效果:<br>
	 * StringUtil.endString(file.jdo, ".") 返回 "jdo"
	 *
	 * @param srcStr
	 *            String 源字符串
	 * @param strdivision
	 *            String 分隔符
	 * @return String 处理完毕的字符串,如果没有找到分隔符，则返回NULL
	 */
	public static final String endString(String srcStr, String strdivision) {
		return endString(srcStr, strdivision, false);
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：判断字符串是否为NULL 或者 ""
	 * <p>
	 * 效果:
	 *
	 * @param srcStr
	 *            String 要判断的字符串
	 * @returnboolean NULL 或者 "" 返回真，否则返回假
	 */
	public static final boolean isNullOrNone(String srcStr) {
		// 判断源字符串是否为空或者""
		if ((srcStr == null) || ("".equals(srcStr))) {
			return true;
		}
		return false;
	}
	
	/**
	 * 创建时间：2009-9-26<br>
	 * <p>
	 * 功能：转换单引号和双引号为全角字符
	 * <p>
	 * 效果:
	 *
	 * @param str
	 *            String
	 * @return String
	 */
	public static final String converHtml(String str) {
		// 判断是否为空或者是空
		if (isNullOrNone(str)) {
			return "";
		}
		str.replaceAll("\"", "＂");
		return str.replaceAll("\"", "＂");
	}
	
	public static final String convertMoney(double money) {
		java.text.DecimalFormat df = new java.text.DecimalFormat("#.00");
		return df.format(money);
	}
	
	public static final String getRandColorCode() {
		String r = null;
		String g = null;
		String b = null;
		Random random = new Random();
		r = Integer.toHexString(random.nextInt(256)).toUpperCase();
		g = Integer.toHexString(random.nextInt(256)).toUpperCase();
		b = Integer.toHexString(random.nextInt(256)).toUpperCase();
		return r + g + b;
	}
	
	public static final String getSFZH18(final String SFZH15) {
		String newid = SFZH15.trim();
		if (newid.length() == 15) {
			final int[] W = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 };
			final String[] A = { "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" };
			int i, j, s = 0;
			
			newid = newid.substring(0, 6) + "19" + newid.substring(6, newid.length());
			for (i = 0; i < newid.length(); i++) {
				j = Integer.parseInt(newid.substring(i, i + 1)) * W[i];
				s = s + j;
			}
			s = s % 11;
			newid = newid + A[s];
			return newid;
		} else if (newid.length() == 18) {
			return newid.toUpperCase();
		} else {
			return null;
		}
	}
	
	public static final String getSFZH15(final String SFZH18) {
		String oldid = SFZH18.trim();
		if (oldid.length() == 18) {
			oldid = oldid.substring(0, 6) + oldid.substring(8, 17);
			return oldid;
		} else {
			return null;
		}
	}
	
	public static final String[] getSFZH(final String SFZH) {
		String newid = SFZH.trim();
		String SFZH15;
		String SFZH18;
		try {
			if (newid.length() == 15) {
				SFZH15 = newid;
				final int[] W = { 7, 9, 10, 5, 8, 4, 2, 1, 6, 3, 7, 9, 10, 5, 8, 4, 2, 1 };
				final String[] A = { "1", "0", "X", "9", "8", "7", "6", "5", "4", "3", "2" };
				int i, j, s = 0;
				
				newid = newid.substring(0, 6) + "19" + newid.substring(6, newid.length());
				for (i = 0; i < newid.length(); i++) {
					j = Integer.parseInt(newid.substring(i, i + 1)) * W[i];
					s = s + j;
				}
				s = s % 11;
				newid = newid + A[s];
				SFZH18 = newid;
				return new String[] { SFZH15, SFZH18.toLowerCase(), SFZH18.toUpperCase() };
			} else if (newid.length() == 18) {
				SFZH18 = newid;
				SFZH15 = newid.substring(0, 6) + newid.substring(8, 17);
				return new String[] { SFZH15, SFZH18.toLowerCase(), SFZH18.toUpperCase() };
			} else {
				return new String[] { newid };
			}
		} catch (Exception e) {
			return new String[] { newid };
		}
	}
	
	public static final String getBFB(final Object fz, final Object fm) {
		String str = "0.00%";
		if (0.0 != Double.parseDouble(fm.toString())) {
			double dou = Double.parseDouble(fz.toString()) / Double.parseDouble(fm.toString());
			NumberFormat nf = NumberFormat.getPercentInstance();
			nf.setMinimumFractionDigits(2);
			str = nf.format(dou);
		}
		return str;
	}
	
	public static final String replaceNum(String strNum) {
		if (null != strNum) {
			StringBuffer sb = new StringBuffer();
			char[] charNums = strNum.toCharArray();
			for (char charNum : charNums) {
				switch (charNum) {
					case '１':
						sb.append("1");
						break;
					case '２':
						sb.append("2");
						break;
					case '３':
						sb.append("3");
						break;
					case '４':
						sb.append("4");
						break;
					case '５':
						sb.append("5");
						break;
					case '６':
						sb.append("6");
						break;
					case '７':
						sb.append("7");
						break;
					case '８':
						sb.append("8");
						break;
					case '９':
						sb.append("9");
						break;
					case '０':
						sb.append("0");
						break;
					case '×':
					case 'Ⅹ':
					case 'Ｘ':
						sb.append("X");
						break;
					default:
						sb.append(charNum);
						break;
				}
			}
			return sb.toString();
		} else {
			return trim(strNum);
		}
	}
	
}
