package cn.cslg.dao;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.*;
import java.util.Properties;

public class JDBCUtils {

	/**
	 * �ͷ���Դ ��ȡ���Ӷ���
	 */
	private static String url, user, password, driver;

	static {

		try {
/*			Properties pro = new Properties();
			pro.load(new FileReader("src/cn/cslg/dao/jdbc.properties"));
			//�ļ���·����ַ������ôд����Ҳ��֪������ΪʲôҪ��ôд
			url = pro.getProperty("url");
			user = pro.getProperty("user");
			password = pro.getProperty("password");
			driver = pro.getProperty("driver");

			Class.forName(driver);
	��ĸ㲻����jspΪʲô���ܶ�ȡ����ļ�Ŀ¼��javaȴ����*/		
			
		//û�취����ֻ����������дһ����
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
