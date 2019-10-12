<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
table {
	border-collapse: collapse;
}

table td {
	border: 1px solid #000;
}
</style>
<body>
	<%
//      Map<String, String> map = new HashMap<String, String>();
//  	HashMap输出顺序会发生改变，要想顺序不发生改变，把HashMap换成LinkedHashMap
//	          原因:LinkedHashmap 的特点是put进去的对象位置未发生变化,而HashMap会发生变化.
	    Map<String, String> map = new LinkedHashMap<String, String>();
		map.put("百度", "http://www.baidu.com/");
		map.put("雅虎", "http://cn.yahoo.com/");
		map.put("谷歌", "http://www.google.com/");
		request.setAttribute("map", map);
	%>
	<table>	
		<c:forEach items="${map}" var="entry">
			<tr>			
				<td><c:out value="${entry.key}"></c:out></td>
				<td><c:out value="${entry.value}"></c:out></td>
			<tr>
		</c:forEach>
	</table>
</body>
</html>