<%@page import="cn.cslg.enity.Employee"%>
<%@page import="java.util.List"%>
<%@page import="cn.cslg.dao.EmployeeDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1" cellspacing="0" cellpadding="0">
		<tr>
			<th>职工编号</th>
			<th>职工姓名</th>
			<th>职工工作</th>
			<th>薪水</th>
			<th>部门</th>
		</tr>
		<%	
		//post方式一定要设置编码格式
		    response.setContentType("text/html;charset=UTF-8");
		    request.setCharacterEncoding("UTF-8");
		    
		    String job = request.getParameter("job");
			List<Employee> list = EmployeeDao.queryByJob(job);
			for (Employee tl : list) {
		%>
		<tr>
			<td><%=tl.getEmpId()%></td>
			<td><%=tl.getEmpName()%></td>
			<td><%=tl.getJob()%></td>
			<td><%=tl.getSalary()%></td>
			<td><%=tl.getDept()%></td>
		</tr>
		<%
			}
		%>
	</table>


</body>
</html>