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
<%--default的两种使用方式--%>
<%--如果在uri中输入参数name=jgl,则显示输入的value中的值,否则显示默认信息(default)--%>
<c:out value="${param.name}" default="welecome jgl to my website!"/>
<c:out value="${param.name}">welecome jgl to my website!</c:out>
<%--value属性是必添的,escapeXml属性是true时,不解析特殊字符,false时,解析特殊字符--%>
<c:out value="${param.name}" ecapeXml="false">&lt;c:out&gt;</c:out>
</body>
</html>