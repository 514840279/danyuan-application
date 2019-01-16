package org.danyuan.application.common.utils.tool;

/*
 * 给出数据库JAR包，数据库链接路径，数据库表空间名，数据库名，数据库密码，表名
 *可以提取出来创建表属性的javaBean文件，并且提供标准的get,set方法。
 * 此程序将所有字段和数据提取出来定义为String类型，如有别的需要可以提取表中字段的类型和别的表信息，自动生成
 * java文件
 * \t 表示 空格
 * \r 表示换行 等价于 \n
 * ResultSetMetaData 关键
 * */
import java.io.BufferedWriter;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;

/**
 * 文件名 ： SqlToBean.java
 * 包 名 ： org.danyuan.utils.tool.sqltobean
 * 描 述 ： TODO(用一句话描述该文件做什么)
 * 作 者 ： Tenghui.Wang
 * 时 间 ： 2016年3月24日 下午9:19:50
 * 版 本 ： V1.0
 */
public class SqlToBean {
	private ResultSetMetaData	meta	= null;					// 保存表属性信息
	private OutputStreamWriter	osw		= null;
	private BufferedWriter		bw		= null;
	private FileOutputStream	fos		= null;
	private static StringBuffer	coding	= new StringBuffer();	// 字符串缓冲区

	private String getCoding(StringBuffer code) {
		return code.toString();
	}
	
	private StringBuffer createGenerate(String property) {
		String prop = property.toLowerCase();
		coding.append("\r \t private String " + prop + ";");
		return coding;
	}
	
	private StringBuffer createMethod(String[] str) {
		for (int i = 0; i < str.length; i++) {
			// str[i].charAt(0) - 32)转成大写 思路
			str[i] = str[i].toLowerCase();
			coding.append("\r \t public void set" + (char) (str[i].charAt(0) - 32) + str[i].substring(1) + "(String " + str[i] + "){");
			coding.append("\r \t\t this." + str[i] + "=" + str[i] + ";");
			coding.append("\r \t }");
			coding.append("\r \t public String get" + (char) (str[i].charAt(0) - 32) + str[i].substring(1) + "(){");
			coding.append("\r \t\t return this." + str[i] + ";");
			coding.append("\r \t }\n");
		}
		return coding;
	}
	
	private String[] getColumenName() {
		/*得到表的所有列名以字符串数组的形式返回
		 * */
		int count;
		String[] str = null;
		try {
			count = meta.getColumnCount();
			String[] strColumenName = new String[count];
			for (int i = 1; i <= count; i++) {
				strColumenName[i - 1] = meta.getColumnName(i);
			}
			str = strColumenName;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return str;
	}
	
	/**
	 * 写入指定的文件中
	 *
	 * @param message
	 */
	private void writeData(String message, String className) {
		String file = "C:\\" + className + ".java";
		try {
			fos = new FileOutputStream(file);
			osw = new OutputStreamWriter(fos);
			bw = new BufferedWriter(osw);
			bw.write(message);
			bw.flush();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
	}
	
	public StringBuffer createClassName(String className) {
		coding.append("public class " + className + "{\n");
		return coding;
	}
	
	public static void main(String[] args) {
		String className = "Hellow";
		// SqlToBean sqlToBean = new SqlToBean("oracle.jdbc.driver.OracleDriver","jdbc:oracle:thin:@192.168.3.11:1521:orcl","mamibon","mamibon","my_standard_data2");
		// SqlToBean sqlToBean = new SqlToBean("org.gjt.mm.mysql.Driver", "jdbc:mysql:///wordpress", "wangjun", "wangjun", "wp_users");
		SqlToBean sqlToBean = new SqlToBean();
		// 连接数据库
		sqlToBean.createClassName(className);
		// 获取表的字段
		String[] str;
		str = sqlToBean.getColumenName();
		for (String element : str) {
			sqlToBean.createGenerate(element);
		}
		coding.append("\n");
		sqlToBean.createMethod(str);
		coding.append("\n}");
		// 写入文件
		sqlToBean.writeData(sqlToBean.getCoding(coding), className);
		
		System.out.println("如果觉得这工具类不错,请关注我们的网站:http://www.itbuluoge.com,期待你的入住，程序员俱乐部,为您提供更多的帮助!");
		System.out.println("如果觉得这工具类不错,请关注我们的网站:http://www.itbuluoge.com,期待你的入住，程序员俱乐部,为您提供更多的帮助!");
	}
	
}
