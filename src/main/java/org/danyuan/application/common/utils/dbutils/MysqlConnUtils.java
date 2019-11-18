package org.danyuan.application.common.utils.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import org.springframework.stereotype.Component;

/**
 * @author Administrator
 */
@Component("mysqlConnUtils")
public class MysqlConnUtils {

	// jdbc:oracle:thin
	private static final String	URL			= "jdbc:mysql:///application?useUnicode=true&characterEncoding=UTF-8&useSSL=false&serverTimezone=UTC&zeroDateTimeBehavior=convertToNull&autoReconnect=true&failOverReadOnly=false";
	private static final String	USER		= "root";
	private static final String	PASSWORD	= "514840279@qq.com";

	// 1
	static {
		try {
//			Class.forName("com.mysql.jdbc.Driver");
			Class.forName("com.mysql.cj.jdbc.Driver");

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() {
		try {
			return DriverManager.getConnection(URL, USER, PASSWORD);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static Connection getConnection(String url, String user, String password) {
		try {
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void close(Connection conn) {
		try {
			if (conn != null && !conn.isClosed()) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(Statement state) {
		try {
			if (state != null) {
				state.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	public static void close(ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
}
