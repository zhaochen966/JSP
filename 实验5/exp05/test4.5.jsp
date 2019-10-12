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
<%--通过一个分割符将字符串划分为数组,并遍历出来--%>
<c:forTokens var="ele" items="blue,red,green|yellow|pink,black|white" delims="|">
<c:out value="${ele}"/>||
</c:forTokens>
<br>
<%--通过多个分割符将字符串划分问数组,并遍历出来--%>
<c:forTokens var="ele" items="blue,red!green|yellow;pink;black|white" delims="|;,!">
<c:out value="${ele}"/>||
</c:forTokens>
</body>
</html>