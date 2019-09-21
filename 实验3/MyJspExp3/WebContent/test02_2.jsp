<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response对象的sendRedirect()方法进行重定向</title>
</head>
<body>
	<p>
		用户名：<input type="text" name="uname"
			value=<%=request.getSession().getAttribute("uname")%> />
	</p>
	<p>
		密码：<input type="text" name="upass"
			value=<%=request.getSession().getAttribute("upass")%> />
	</p>
</body>
</html>