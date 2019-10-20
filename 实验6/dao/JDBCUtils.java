package cn.cslg.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {

	/**
	 * 释放资源 获取连接对象
	 */
	private static String url, user, password, driver;

	static {

		try {
/*			Properties pro = new Properties();
			pro.load(new FileReader("src/cn/cslg/dao/jdbc.properties"));
			//文件的路径地址必须这么写，我也不知道这里为什么要这么写
			url = pro.getProperty("url");
			user = pro.getProperty("user");
			password = pro.getProperty("password");
			driver = pro.getProperty("driver");

			Class.forName(driver);
	真的搞不懂，jsp为什么不能读取这个文件目录，java却可以*/		
			
		//没办法，我只能在这里重写一遍了
			url = "jdbc:mysql://127.0.0.1:3306/testdb?useUnicode=true&characterEncoding=utf8";
			user = "root";
			password = "";
			driver = "com.mysql.jdbc.Driver";
			Class.forName(driver);
		} /*catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} */
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(url, user, password);
	}

	public static void close(Statement stmt, Connection conn) {
		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	public static void close(ResultSet rs, Statement stmt, Connection conn) {
		if (rs != null) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (stmt != null) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}

		if (conn != null) {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

}
