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
<c:catch var="myexp">

<%
int i=0;
int j=3/0;
%>
</c:catch>
<h1>异常</h1>
<hr>
<c:out value="${myexp}"></c:out><%--输出异常--%>
<hr>
<h1>异常信息</h1>
<c:out value="${myexp.message}"/><%--获取异常信息--%>
<hr>
<h1>引起原因</h1>
<c:out value="${myexp.cause}"/><%--获取引起异常的原因--%>
</body>
</html>