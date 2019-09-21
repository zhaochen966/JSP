<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
       用户名：<%=request.getParameter("userName") %><br>
       密码：<%=request.getParameter("password") %><br>
       请求使用的协议：<%=request.getProtocol() %><br> 
       请求的URI：<%=request.getServletPath() %><br>
       请求方法：<%=request.getMethod() %><br>
       远程地址：<%=request.getRemoteAddr()%><br>

</body>
</html>