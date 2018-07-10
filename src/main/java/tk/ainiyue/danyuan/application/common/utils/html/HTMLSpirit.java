package tk.ainiyue.danyuan.application.common.utils.html;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 文件名 ： HTMLSpirit.java
 * 包 名 ： eastone.lucene.IKAnalyzer.HTMLSpirit
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2015年12月16日 下午3:14:38
 * 版 本 ： V1.0
 */
public class HTMLSpirit {
	/**
	 * 方法名： delHTMLTag
	 * 功 能： 去除html标签
	 * 参 数： @param htmlStr
	 * 参 数： @return
	 * 返 回： String
	 * 作 者 ： Tenghui.Wang
	 * 时 间 ： 2015年12月16日 下午3:15:05
	 * 版 本 ： V1.0
	 * @throws
	 */
	public static String delHTMLTag(String htmlStr) {
		String regEx_script = "<script[^>]*?>[\\s\\S]*?<\\/script>"; // 定义script的正则表达式
		String regEx_style = "<style[^>]*?>[\\s\\S]*?<\\/style>"; // 定义style的正则表达式
		String regEx_html = "<[^>]+>"; // 定义HTML标签的正则表达式
		
		Pattern p_script = Pattern.compile(regEx_script, Pattern.CASE_INSENSITIVE);
		Matcher m_script = p_script.matcher(htmlStr);
		htmlStr = m_script.replaceAll(""); // 过滤script标签
		
		Pattern p_style = Pattern.compile(regEx_style, Pattern.CASE_INSENSITIVE);
		Matcher m_style = p_style.matcher(htmlStr);
		htmlStr = m_style.replaceAll(""); // 过滤style标签
		
		Pattern p_html = Pattern.compile(regEx_html, Pattern.CASE_INSENSITIVE);
		Matcher m_html = p_html.matcher(htmlStr);
		htmlStr = m_html.replaceAll(""); // 过滤html标签
		
		return htmlStr.trim(); // 返回文本字符串
	}
	
}
