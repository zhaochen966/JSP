<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		try {
			Class.forName("com.mysql.jdbc.Driver");//记载数据库驱动，注册到驱动管理器
			String url = "jdbc:mysql://localhost:3306/test";
			String username = "root";
			String password = "";
			Connection conn = DriverManager.getConnection(url, username, password);
			if (conn != null) {
				out.println("数据库连接成功！！！");
			} else {
				out.println("数据库连接失败！！！");
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	%>
</body>
</html>