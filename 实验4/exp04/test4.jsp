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
int a=5;
int b=6;
pageContext.setAttribute("a", a);  //这种存储方式只能在本页面获取,其他页面无法获取。
pageContext.setAttribute("b", b);
%>
<%-- jsp标签中的 ${表达式}用来输出或者计算一个表达式的内容，比如${3+5}，那么便会在页面上输出8 --%>
${a gt b } <br> 	<!-- ">" -->
${a lt b } <br>     <!-- "<" -->
${a eq b } <br>		<!-- "==" -->
${a ne b } <br>		<!-- "!=" -->
${a le b } <br>		<!-- "<=" -->
${a ge b } <br>		<!-- ">=" -->
</body>
</html>