<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%--将变量定义在Jsp范围内--%>
	<%--value属性的两钟使用方式--%>
	<c:set var="username" value="jack" scope="session" />
	<c:set var="pwd" scope="session">000</c:set>
    <%--通过el表达式语言输出--%>
	${sessionScope.username}<br>
	${sessionScope.pwd}<br>
	<%--通过jstl中<c:out>标签输出--%>
	<c:out value="${sessionScope.username}" />
</body>
</html>