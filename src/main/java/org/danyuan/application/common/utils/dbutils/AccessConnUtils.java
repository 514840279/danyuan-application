package org.danyuan.application.common.utils.dbutils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.stereotype.Component;

/**
 * @program: javalearning
 * @Date: 2018/7/11 11:03
 * @Author: hyman.hu
 * @Description: 工具类
 */
@Component("accessConnUtils")
public class AccessConnUtils {

	private static final String dbURL = "jdbc:ucanaccess://" + "F:\\data\\Database2.mdb";

	/*
	 * 加载驱动
	 */
	static {
		try {
			// Step 1: Loading or registering Oracle JDBC driver class
			Class.forName("net.ucanaccess.jdbc.UcanaccessDriver");
		} catch (ClassNotFoundException cnfex) {
			System.out.println("Problem in loading or registering MS Access JDBC driver");
			cnfex.printStackTrace();
		}
	}

	// 建立连接
	public static Connection getConnection() {
		try {
			// Step 2: Opening database connection
			// Step 2.A: Create and get connection using DriverManager class
			return DriverManager.getConnection(dbURL);
		} catch (Exception e) {
			System.out.println("AccessDB connection fail");
			e.printStackTrace();
		}
		return null;
	}

	public static Connection getConnection(String filepath) {
		try {
			return DriverManager.getConnection("jdbc:ucanaccess://" + filepath);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	// 关闭资源
	public static void close(Connection con, PreparedStatement ps, ResultSet rs) {
		try {
			if (rs != null) {
				rs.close();// 这里出现异常了，rs关闭了吗？，如果没有怎么解决,ps , con也是一样的。
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (ps != null) {
					ps.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				if (con != null) {
					try {
						con.close();
					} catch (Exception e) {
						e.printStackTrace();
					}
				}
			}
		}
	}
}
