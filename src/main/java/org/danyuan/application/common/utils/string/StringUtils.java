package org.danyuan.application.common.utils.string;

import java.io.BufferedInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.NumberFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.UUID;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.http.HttpServletRequest;
import javax.xml.transform.OutputKeys;
import javax.xml.transform.Result;
import javax.xml.transform.Source;
import javax.xml.transform.Transformer;
import javax.xml.transform.TransformerConfigurationException;
import javax.xml.transform.TransformerException;
import javax.xml.transform.TransformerFactory;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.StreamResult;

import org.apache.commons.lang3.CharSet;
import org.danyuan.application.common.utils.tool.DateUtils;
import org.w3c.dom.Document;

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
	
	/**
	 * 许可的文件名
	 */
	private static CharSet	allowedFileName		= CharSet.getInstance("!#$%&'()+,.;=@[]_`{}~ 0-9a-zA-Z-^");
	
	/**
	 * 许可的mail地址
	 */
	private static CharSet	allowedMailAddress	= CharSet.getInstance(".@_0-9a-zA-Z-");
	
	/**
	 * 许可的密码
	 */
	private static CharSet	allowedPassword		= CharSet.getInstance("`~!@#$%^&*()-_+=|\\{}\\[\\]'\":;,.<>/?0-9a-zA-Z-");
	
	/**
	 * ASCII 文字（英数字）
	 */
	private static CharSet	alphaNumChar		= CharSet.getInstance("0-9A-Za-z");
	
	private StringUtils() {
	}
	
	/**
	 * 字符串是数值(含小数)的判定方法。
	 *
	 * @param str
	 *            字符串
	 * @return 数值(含小数) true
	 */
	public static boolean isNumeric(String str) {
		if (StringUtils.isEmpty(str)) {
			return false;
		}
		Pattern p = Pattern.compile("^\\d+(\\.\\d+)?$");
		Matcher m = p.matcher(str);
		return m.find();
	}
	
	/**
	 * 字符串null或空文字判定方法。
	 *
	 * @param str
	 *            字符串
	 * @return true: 字符串null或空文字, false: 字符串不是null也不是空文字
	 */
	public static boolean isNull(String str) {
		return str == null || str.length() == 0;
	}
	
	/**
	 * 字符串null或空文字或者全是空白判定方法。
	 *
	 * @param str
	 *            字符串
	 * @return true: 字符串null或空文字, false: 字符串不是null也不是空文字
	 */
	public static boolean isEmpty(String str) {
		return isNull(str) || trim(str).length() == 0;
	}
	
	/**
	 * 文件名是否许可的检查。
	 *
	 * @param fileName
	 *            文件名
	 * @return 许可 true
	 */
	public static boolean isAllowedFileName(String fileName) {
		if (StringUtils.isEmpty(fileName)) {
			return false;
		}
		boolean allowed = true;
		char[] cs = fileName.toCharArray();
		for (char element : cs) {
			if (!allowedFileName.contains(element)) {
				allowed = false;
				break;
			}
		}
		if (allowed && isVistaData(fileName)) {
			allowed = false;
		}
		return allowed;
	}
	
	/**
	 * mail地址是否许可的检查。
	 *
	 * @param mailAddress
	 *            mail地址
	 * @return 许可 true
	 */
	public static boolean isAllowedMailAddress(String mailAddress) {
		if (StringUtils.isEmpty(mailAddress)) {
			return false;
		}
		boolean allowed = true;
		char[] cs = mailAddress.toCharArray();
		for (char element : cs) {
			if (!allowedMailAddress.contains(element)) {
				allowed = false;
				break;
			}
		}
		return allowed;
	}
	
	/**
	 * 字符串是英数字的判定方法。
	 *
	 * @param str
	 *            字符串
	 * @return 英数字 true
	 */
	public static boolean isAsciiAlphaNumCharOnly(String str) {
		boolean asciiOnly = true;
		if (StringUtils.isEmpty(str)) {
			return asciiOnly;
		}
		char[] cs = str.toCharArray();
		for (char element : cs) {
			if (!alphaNumChar.contains(element)) {
				asciiOnly = false;
			}
		}
		return asciiOnly;
	}
	
	/**
	 * 从Windows Vista被POST数据中含有的文字列是否存在的检查方法。
	 *
	 * @param str
	 *            文字列
	 * @return 存在 true,不存在 false
	 */
	public static boolean isVistaData(String str) {
		Pattern p = Pattern.compile(".*&#\\d+?;.*");
		Matcher m = p.matcher(str);
		return m.find();
	}

	/**
	 * 从Windows Vista被POST数据中含有的文字列是否存在的检查方法。
	 *
	 * @param str
	 *            文字列
	 * @return 通过true,未通过 false
	 */
	public static boolean isBankCard(String str) {
		if (StringUtils.isEmpty(str)) {
			return false;
		}
		if (!StringUtils.isNumeric(str)) {
			return false;
		}
		if (str.length() >= 15 && str.length() < 20) {
			return true;
		} else {
			return false;
		}
	}
	
	/**
	 * 字符串前后空格（全角，半角）的trim
	 *
	 * @param orgstr
	 *            文字列
	 * @return trim后的文字列
	 */
	public static String trim(String orgstr) {
		while (orgstr.startsWith(" ") || orgstr.startsWith("　")) {
			orgstr = orgstr.substring(1);
		}
		while (orgstr.endsWith(" ") || orgstr.endsWith("　")) {
			orgstr = orgstr.substring(0, orgstr.length() - 1);
		}
		return orgstr;
	}
	
	/**
	 * 取得UUID。
	 *
	 * @return UUID
	 */
	public static String getUUID() {
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replace("-", "");
	}
	
	/**
	 * 密码是否许可的检查。
	 *
	 * @param password
	 *            密码
	 * @return 许可 true
	 */
	public static boolean isAllowedPassword(String password) {
		if (StringUtils.isEmpty(password)) {
			return false;
		}
		boolean allowed = true;
		char[] cs = password.toCharArray();
		for (char element : cs) {
			if (!allowedPassword.contains(element)) {
				allowed = false;
				break;
			}
		}
		return allowed;
	}
	
	public static boolean isLoginId(String str) {
		String regex = "^[a-zA-z][a-zA-Z0-9_]{3,15}$";
		return match(regex, str);
	}
	
	public static boolean isMobileNum(String str) {
		String regex = "^13[0-9]{9}$|14[0-9]{9}|15[0-9]{9}$|17[0-9]{9}$|18[0-9]{9}$";
		return match(regex, str);
	}
	
	public static boolean isPasswordStrength(String str) {
		String regex = "^(?![0-9]+$)(?![a-zA-Z]+$)(?![`~!@#$%^&*()_+=\\\\|{}\\[\\]'\":;,.<>/?-]+$)[`~!@#$%^&*()_+=\\\\|{}\\[\\]'\":;,.<>/?0-9a-zA-Z-]{6,20}$";
		return match(regex, str);
	}
	
	public static boolean isTelNum(String str) {
		String regex = "\\d{3,5}-\\d{7,8}(-\\d{1,})?$";
		return match(regex, str);
	}
	
	public static boolean isUrl(String str) {
		String regex = "^(\\w+:\\/\\/)?\\w+(\\.\\w+)+.*$";
		return match(regex, str);
	}
	
	public static boolean isMoney(String str) {
		String regex = "^[0-9]+(.[0-9]{1,2})?$";
		return match(regex, str);
	}
	
	public static boolean isAnnualRate(String str) {
//		String regex = "^[1-9][0-9]?(\\.\\d)?$";
//		String regex = "^[1-9][0-9]?([.]{1}[0-9]{1,2}){0,1}$";
//		String regex = "^[1-9]?[0-9]{1}([.]{1}[0-9]{1,2}){0,1}$";
		String regex = "^([1-9]\\d{0,1})$|^(0|[1-9]\\d{0,1})\\.(\\d{1,2})$|^0$|^100$";
		return match(regex, str);
	}
	
	public static boolean isPermillage(String str) {
//		String regex = "^[1-9][0-9]?(\\.\\d)?$";
//		String regex = "^[1-9][0-9]?([.]{1}[0-9]{1,2}){0,1}$";
		String regex = "^([1-9]\\d{0,2})$|^(0|[1-9]\\d{0,2})\\.(\\d{1,2})$|^0$|^1000$";
		return match(regex, str);
	}
	
	public static boolean isSettingNum(String str) {
		String regex = "^([1-9]\\d*)$|^(0|[1-9]\\d*)\\.(\\d{1,2})$|^0$";
		return match(regex, str);
	}
	
	public static boolean isEmail(String str) {
		String regex = "^\\w+([-+.']\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*$";
		return match(regex, str);
	}
	
	/**
	 * 检查充值金额是否正确的方法。<br />
	 * 充值的金额，100的倍数，不大于10,000,000。
	 *
	 * @param str
	 *            要验证的字符串
	 * @return 正确返回true，否则返回false
	 */
	public static boolean isRechargeAmount(String str) {
		String regex = "^(\\d{1,5}|100000)0{2}$";
		return match(regex, str);
	}
	
	/**
	 * 功能：判断字符串是否为日期格式
	 *
	 * @param str
	 * @return
	 */
	public static boolean isDate(String strDate) {
		Pattern pattern = Pattern.compile("^((\\d{2}(([02468][048])|([13579][26]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])))))|(\\d{2}(([02468][1235679])|([13579][01345789]))[\\-\\/\\s]?((((0?[13578])|(1[02]))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(3[01])))|(((0?[469])|(11))[\\-\\/\\s]?((0?[1-9])|([1-2][0-9])|(30)))|(0?2[\\-\\/\\s]?((0?[1-9])|(1[0-9])|(2[0-8]))))))(\\s(((0?[0-9])|([1-2][0-3]))\\:([0-5]?[0-9])((\\s)|(\\:([0-5]?[0-9])))))?$");
		Matcher m = pattern.matcher(strDate);
		if (m.matches()) {
			return true;
		} else {
			return false;
		}
	}

	/**
	 * 判断邮政编码是否有效
	 *
	 * @param postcode
	 *            邮政编码
	 * @return
	 */
	public static boolean isPostcode(String postcode) {
		String regex = "\\d{6}";
		return match(regex, postcode);
	}

	/**
	 * 判断IP地址是否有效
	 *
	 * @param ip
	 *            IP地址
	 * @return
	 */
	public static boolean isIP(String ip) {
		String regex = "([1-9]|[1-9][0-9]|1\\d\\d|2[0-4]\\d|25[0-5])\\." + "([1-9]|[1-9][0-9]|1\\d\\d|2[0-4]\\d|25[0-5])\\." + "([1-9]|[1-9][0-9]|1\\d\\d|2[0-4]\\d|25[0-5])\\." + "([1-9]|[1-9][0-9]|1\\d\\d|2[0-4]\\d|25[0-5])";
		return match(regex, ip);
	}
	
	/**
	 * @param regex
	 *            正则表达式字符串
	 * @param str
	 *            要匹配的字符串
	 * @return 如果str 符合 regex的正则表达式格式,返回true, 否则返回 false;
	 */
	public static boolean match(String regex, String str) {
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(str);
		return matcher.matches();
	}
	
	/**
	 * 生成随机登录密码（默认8位长度）
	 *
	 * @return 登录密码的字符串
	 */
	public static String genUserPassword() {
		return genRandomNum(8);
	}
	
	/**
	 * 生成随机支付密码（默认8位长度）
	 *
	 * @return 支付密码的字符串
	 */
	public static String genPaymentPassword() {
		return genRandomNum(8);
	}
	
	/**
	 * 生成随机密码
	 *
	 * @param pwdLen
	 *            生成的密码的总长度
	 * @return 密码的字符串
	 */
	public static String genRandomNum(int pwdLen) {
		// 35是因为数组是从0开始的，26个字母+10个 数字
		final int maxNum = 36;
		int i; // 生成的随机数
		int count = 0; // 生成的密码的长度
		char[] str = { 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
		
		StringBuffer pwd = new StringBuffer("");
		Random r = new Random();
		while (count < pwdLen) {
			// 生成随机数，取绝对值，防止 生成负数，
			i = Math.abs(r.nextInt(maxNum)); // 生成的数最大为36-1
			if (i >= 0 && i < str.length) {
				if (i % 2 == 0) {
					pwd.append(Character.toUpperCase(str[i]));
				} else {
					pwd.append(str[i]);
				}
				count++;
			}
		}
		
		return pwd.toString();
	}

	/**
	 * 生成随机密码
	 *
	 * @param pwdLen
	 *            生成的密码的总长度
	 * @return 密码的字符串
	 */
	public static String genRandomNumByLen(int numLen) {
		final int maxNum = 10;
		int i; // 生成的随机数
		int count = 0; // 生成的密码的长度
		char[] str = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9' };
		
		StringBuffer pwd = new StringBuffer("");
		Random r = new Random();
		while (count < numLen) {
			// 生成随机数，取绝对值，防止 生成负数，
			i = Math.abs(r.nextInt(maxNum)); // 生成的数最大为10-1
			if (i >= 0 && i < str.length) {
				pwd.append(str[i]);
				count++;
			}
		}
		
		return pwd.toString();
	}
	
	/**
	 * 功能：身份证的有效验证
	 *
	 * @param IDStr
	 *            身份证号
	 * @return 有效：返回"" 无效：返回String信息
	 * @throws ParseException
	 */
	public static boolean isIdCard(String IDStr) {
		String[] ValCodeArr = { "1", "0", "x", "9", "8", "7", "6", "5", "4", "3", "2" };
		String[] Wi = { "7", "9", "10", "5", "8", "4", "2", "1", "6", "3", "7", "9", "10", "5", "8", "4", "2" };
		String Ai = "";
		try {
			// ================ 号码的长度 15位或18位 ================
			if (IDStr.length() != 15 && IDStr.length() != 18) {
				return false;
			}
			// =======================(end)========================
			
			// ================ 数字 除最后以为都为数字 ================
			if (IDStr.length() == 18) {
				Ai = IDStr.substring(0, 17);
			} else if (IDStr.length() == 15) {
				Ai = IDStr.substring(0, 6) + "19" + IDStr.substring(6, 15);
			}
			// 身份证15位号码都应为数字 ; 18位号码除最后一位外，都应为数字。
			if (isAsciiAlphaNumCharOnly(Ai) == false) {
				return false;
			}
			// =======================(end)========================
			
			// ================ 出生年月是否有效 ================
			String strYear = Ai.substring(6, 10);// 年份
			String strMonth = Ai.substring(10, 12);// 月份
			String strDay = Ai.substring(12, 14);// 月份
			if (isDate(strYear + "-" + strMonth + "-" + strDay) == false) {
				// 身份证生日无效
				return false;
			}
			GregorianCalendar gc = new GregorianCalendar();
			SimpleDateFormat s = new SimpleDateFormat("yyyy-MM-dd");
			
			if ((gc.get(Calendar.YEAR) - Integer.parseInt(strYear)) > 150 || (gc.getTime().getTime() - s.parse(strYear + "-" + strMonth + "-" + strDay).getTime()) < 0) {
				// 身份证生日不在有效范围。
				return false;
			}
			
			if (Integer.parseInt(strMonth) > 12 || Integer.parseInt(strMonth) == 0) {
				// 身份证月份无效
				return false;
			}
			if (Integer.parseInt(strDay) > 31 || Integer.parseInt(strDay) == 0) {
				// 身份证日期无效
				return false;
			}
			// =====================(end)=====================
			
			// ================ 地区码时候有效 ================
			Hashtable<String, String> h = getAreaCode();
			if (h.get(Ai.substring(0, 2)) == null) {
				// 身份证地区编码错误。
				return false;
			}
			// ==============================================
			
			// ================ 判断最后一位的值 ================
			int TotalmulAiWi = 0;
			for (int i = 0; i < 17; i++) {
				TotalmulAiWi = TotalmulAiWi + Integer.parseInt(String.valueOf(Ai.charAt(i))) * Integer.parseInt(Wi[i]);
			}
			int modValue = TotalmulAiWi % 11;
			String strVerifyCode = ValCodeArr[modValue];
			Ai = Ai + strVerifyCode;
			
			if (IDStr.length() == 18) {
				if (Ai.equals(IDStr.toLowerCase()) == false) {
					// 身份证无效，不是合法的身份证号码
					return false;
				}
			}
		} catch (NumberFormatException e) {
			return false;
		} catch (ParseException e) {
			return false;
		}
		// =====================(end)=====================
		return true;
	}
	
	/**
	 * 功能：设置地区编码
	 *
	 * @return Hashtable 对象
	 */
	private static Hashtable<String, String> getAreaCode() {
		Hashtable<String, String> hashtable = new Hashtable<>();
		hashtable.put("11", "北京");
		hashtable.put("12", "天津");
		hashtable.put("13", "河北");
		hashtable.put("14", "山西");
		hashtable.put("15", "内蒙古");
		hashtable.put("21", "辽宁");
		hashtable.put("22", "吉林");
		hashtable.put("23", "黑龙江");
		hashtable.put("31", "上海");
		hashtable.put("32", "江苏");
		hashtable.put("33", "浙江");
		hashtable.put("34", "安徽");
		hashtable.put("35", "福建");
		hashtable.put("36", "江西");
		hashtable.put("37", "山东");
		hashtable.put("41", "河南");
		hashtable.put("42", "湖北");
		hashtable.put("43", "湖南");
		hashtable.put("44", "广东");
		hashtable.put("45", "广西");
		hashtable.put("46", "海南");
		hashtable.put("50", "重庆");
		hashtable.put("51", "四川");
		hashtable.put("52", "贵州");
		hashtable.put("53", "云南");
		hashtable.put("54", "西藏");
		hashtable.put("61", "陕西");
		hashtable.put("62", "甘肃");
		hashtable.put("63", "青海");
		hashtable.put("64", "宁夏");
		hashtable.put("65", "新疆");
		hashtable.put("71", "台湾");
		hashtable.put("81", "香港");
		hashtable.put("82", "澳门");
		hashtable.put("91", "国外");
		return hashtable;
	}
	
	/**
	 * 将Document内容 写入XML字符串并返回
	 *
	 * @param doc
	 * @param encoding
	 * @return
	 */
	public static String callWriteXmlString(Document doc, String encoding) {
		
		try {
			Source source = new DOMSource(doc);
			ByteArrayOutputStream outStream = new ByteArrayOutputStream();
			OutputStreamWriter write = new OutputStreamWriter(outStream);
			Result result = new StreamResult(write);
			
			Transformer xformer = TransformerFactory.newInstance().newTransformer();
			xformer.setOutputProperty(OutputKeys.ENCODING, encoding);
			
			xformer.transform(source, result);
			return outStream.toString();
			
		} catch (TransformerConfigurationException e) {
			e.printStackTrace();
			return null;
		} catch (TransformerException e) {
			e.printStackTrace();
			return null;
		}
	}
	
	/**
	 * 生产请求流水号的方法。
	 *
	 * @return 请求流水号
	 */
	public static String createRequestNo() {
		String nano = String.valueOf(System.nanoTime());
		return DateUtils.getTimeStamp() + nano.substring(nano.length() - 7);
	}
	
	/**
	 * 字符串截取固定Byte。
	 *
	 * @return 截取后字符串
	 */
	public static String getSubString(String str, int length) {
		int count = 0;
		int offset = 0;
		char[] c = str.toCharArray();
		for (int i = 0; i < c.length; i++) {
			if (c[i] > 256) {
				offset = 2;
				count += 2;
			} else {
				offset = 1;
				count++;
			}
			if (count == length) {
				int countRemain = 0;
				for (int j = i + 1; j < c.length; j++) {
					if (c[i] > 256) {
						countRemain += 2;
					} else {
						countRemain++;
					}
				}
				if (countRemain <= 3) {
					return str;
				} else {
					return str.substring(0, i + 1) + "...";
				}
			}
			if ((count == length + 1 && offset == 2)) {
				int countRemain = 0;
				for (int j = i + 1; j < c.length; j++) {
					if (c[i] > 256) {
						countRemain += 2;
					} else {
						countRemain++;
					}
				}
				if (countRemain <= 3) {
					return str;
				} else {
					return str.substring(0, i) + "...";
				}
			}
		}
		return str;
	}
	
	/**
	 * 字符串替换。
	 *
	 * @return 替换后字符串
	 */
	public static String replaceStr(String strInput, String strBefore, String strAfter) {
		if (strInput == null || "".equals(strInput)) {
			return "";
		} else {
			return strInput.replace(strBefore, strAfter);
		}
	}
	
	/**
	 * 手机号中间4位用*显示。
	 *
	 * @return 替换后手机号
	 */
	public static String encryptMobile(String mobile) {
		if (mobile == null || "".equals(mobile)) {
			return "";
		} else {
			String ret = mobile.substring(0, 3);
			ret = ret + "****";
			ret = ret + mobile.substring(7, 11);
			return ret;
		}
	}
	
	public static String encryptEmail(String email) {
		if (email == null || "".equals(email)) {
			return "";
		} else {
			String ret = email.substring(0, 1);
			ret = ret + "****";
			ret = ret + email.substring(email.length() - 1);
			return ret;
		}
	}
	
	public static String digitToChinese(int str) {
		switch (str) {
			case 1:
				return "一";
			case 2:
				return "二";
			case 3:
				return "三";
			case 4:
				return "四";
			case 5:
				return "五";
			case 6:
				return "六";
			case 7:
				return "七";
			case 8:
				return "八";
			case 9:
				return "九";
			case 10:
				return "十";
		}
		return "";
	}
	
	public static String getPeriodDisplayValue(String periodType) {
		String str = "";
		if (StringUtils.isEmpty(periodType)) {
			return str;
		}
		switch (periodType) {
			case "1":
				str = "个月";
				break;
			case "2":
				str = "个季度";
				break;
			case "3":
				str = "天";
				break;
			default:
				str = "个月";
				break;
		}
		return str;
	}
	
	public static String strToConceal(String userId) {
		String subUserId = "";
		if ("".equals(userId)) {
			return subUserId;
		}
		char[] charArray = userId.toCharArray();
		int len = charArray.length;
		if (len < 4) {
			subUserId = String.valueOf(charArray[0]) + "***";
		} else if (len < 5) {
			subUserId = String.valueOf(charArray[0]) + String.valueOf(charArray[1]) + "***" + String.valueOf(charArray[len - 2]) + String.valueOf(charArray[len - 1]);
		} else {
			subUserId = String.valueOf(charArray[0]) + String.valueOf(charArray[1]) + String.valueOf(charArray[2]) + "***" + String.valueOf(charArray[len - 2]) + String.valueOf(charArray[len - 1]);
		}
		return subUserId;
	}
	
	public static String digitalUnitDisplay(BigDecimal digital) {
		String digitalStyleDisp = "元";
		if (digital.compareTo(new BigDecimal("0")) == 0) {
			return digitalStyleDisp;
		}
		
		// 大于亿的场合,以亿为单位;大于万的以万为单位;否则以元为单位
		if (digital.compareTo(new BigDecimal("100000000")) >= 0) {
			digitalStyleDisp = "亿";
		} else if (digital.compareTo(new BigDecimal("10000")) >= 0) {
			digitalStyleDisp = "万";
		} else {
			digitalStyleDisp = "元";
		}
		
		return digitalStyleDisp;
	}
	
	public static boolean isInArray(String[] arr, String val) {
		return Arrays.asList(arr).contains(val);
	}
	
	/**
	 * 根据request取得请求数据
	 *
	 * @param request
	 * @return
	 * @throws IOException
	 */
	public static String getRequestStr(HttpServletRequest request) throws IOException {
		StringBuffer info = new java.lang.StringBuffer();
		InputStream in = request.getInputStream();
		BufferedInputStream buf = new BufferedInputStream(in);
		byte[] buffer = new byte[1024];
		int iRead;
		while ((iRead = buf.read(buffer)) != -1) {
			info.append(new String(buffer, 0, iRead, "UTF-8"));
		}
		return info.toString();
	}
	
	/**
	 * 将字符串空值转换为其他字符串
	 *
	 * @param chkVal
	 *            要判断的字符串
	 * @param rtnVal
	 *            要转换的字符串
	 * @return 转换后字符串
	 */
	public static String null2Other(String chkVal, String rtnVal) {
		if (!StringUtils.isEmpty(chkVal)) {
			rtnVal = chkVal;
		}
		
		return rtnVal;
	}

	/**
	 * 将字符串空值转换为空字符串
	 *
	 * @param chkVal
	 *            要判断的字符串
	 * @return 转换后字符串
	 */
	public static String null2Empty(String chkVal) {
		return null2Other(chkVal, "");
	}
	
}
