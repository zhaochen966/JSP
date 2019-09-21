<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>response对象的sendRedirect()方法进行重定向</title>
</head>
<body>
	<%
		HttpSession ses = request.getSession();
		ses.setAttribute("uname", "孤独求败");
		ses.setAttribute("upass", "123456");
		response.sendRedirect("test02_2.jsp");
	%>
</body>
</html>