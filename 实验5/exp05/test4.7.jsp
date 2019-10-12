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
<%--引入绝对路径的文件--%>
<%--注意:被引入的文件将被解析为html的形式嵌入引用文件--%>
<h1>引入绝对路径的文件</h1>
<c:import url="http://127.0.0.1:8080/MyJspProject/exp05/ZhaoChenZB1018129.jsp" var="file" charEncoding="gbk"/>
<blockquote>
<pre>
<c:out value="${file}"></c:out>
</pre>
</blockquote>
<%--引入相对路径的文件--%>
<h1>引入相对路径的文件</h1>
<blockquote>
<pre>
<c:import url="ZhaoChenZB1018129.jsp" var="f"/>
<c:out value="${f}"></c:out>
</pre>
</blockquote>
<%--传递参数到被引入文件--%>
<h1>传递参数到被引入文件</h1>
<blockquote>
<pre>
<c:import url="ZhaoChenZB1018129.jsp" var="ff">
<c:param name="name" value="jack"/>
</c:import>
<c:out value="${ff}"></c:out>
</pre>
</blockquote>
</body>
</html>