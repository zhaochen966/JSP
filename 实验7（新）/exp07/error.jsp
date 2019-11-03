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
    //post设置编码，避免中文乱码
	request.setCharacterEncoding("utf-8");
	String error = request.getParameter("error");
	if(error.equals("查无此人")){
		out.println("查无此人！！！");
	}else{
		out.println("登录失败，请检查用户名和密码！！！");
	}
%>
</body>
</html>