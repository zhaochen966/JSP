<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h3>方法一:Java</h3>
	<%
		try {
			String num = request.getParameter("num");
			int n = Integer.parseInt(num);
			for (int i = 1; i <= n; i++) {
				for (int j = 1; j <= i; j++) {
					out.print(j + "*" + i + "=" + (i * j));
					out.print("&nbsp;&nbsp;&nbsp;");
				}
				out.print("<br>");
			}
		} catch (Exception e) {
			//异常机制：如果不是数字，捕获异常	
			out.print("输入的不是一个数字！！！");
		}
	%>

	<hr>
	<h3>方法2：EL表达式</h3>
	<%
		try {
			String num = request.getParameter("num");
			int n = Integer.parseInt(num);
			for (int i = 1; i <= n; i++) {
				for (int j = 1; j <= i; j++) {
					pageContext.setAttribute("i", i);
					pageContext.setAttribute("j", j);
	%>
	${j}*${i}=${j*i } ${"&nbsp;"}
	<%
		}
	%>

	<br>
	<%
		}
		} catch (Exception e) {
			//异常机制：如果不是数字，捕获异常	
			out.print("输入的不是一个数字！！！" + e.getMessage());
		}
	%>

	<hr>
	<h3>方法3：JSP标准标签库JSTL</h3>
	<c:catch var="catchException">
		<%
			int num = Integer.parseInt(request.getParameter("num"));
		%>
		<c:set var="numInteger" value="<%=num%>" />
		<c:forEach var="i" begin="1" end="${numInteger}">
			<c:forEach var="j" begin="1" end="${i}">
${j}*${i}=${i*j}  ${"&nbsp;"} 
</c:forEach>
			<br>
		</c:forEach>
	</c:catch>
<%--输出异常信息 --%>
	<c:if test="${catchException != null}">
			异常为 : ${catchException} <br> 
			发生了异常: ${catchException.message}
	</c:if>

</body>
</html>