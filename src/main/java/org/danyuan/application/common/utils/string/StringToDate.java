package org.danyuan.application.common.utils.string;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 文件名 ： StringToDate.java
 * 包 名 ： org.eastone.utils.date
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年1月23日 下午4:02:53
 * 版 本 ： V1.0
 */
public class StringToDate {
	
	public static Date getDate(String str) {
		SimpleDateFormat sdf = null;
		if (str == null && "".equals(str)) {
			return null;
		} else {
			str = str.replace("暂无信息", "").trim();
			if ("".equals(str)) {
				return null;
			}
			Date date = null;
			str = str.replace("年", "-").replace("月", "-").replace("日", "").replace("/", "-").replace("\\", "-").trim();
			String[] str2 = str.split("-");
			str = "";
			for (String string : str2) {
				if (Integer.parseInt(string) < 10 && string.length() < 2) {
					string = "0" + string;
				}
				str += string + "-";
			}
			str = str.substring(0, 10);
			if (str.length() == 10) {
				sdf = new SimpleDateFormat("yyyy-MM-dd");
				
				try {
					date = sdf.parse(str);
				} catch (ParseException e) {
				}
			}
			return date;
		}
	}
}
