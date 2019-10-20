
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
			<th>工作类型</th>
			<th>薪水</th>
			<th>部门</th>
		</tr>
		<%
			List<Employee> list = EmployeeDao.queryEmp();
			for (Employee tl : list) {
		%>
		<tr>
			<td><a href="oneQuertById.jsp?empId=<%=tl.getEmpId() %>"> <%=tl.getEmpId()%></a></td>
			<td><%=tl.getEmpName()%></td>
			<td><%=tl.getJob()%></td>
			<td><%=tl.getSalary()%></td>
			<td><%=tl.getDept()%></td>
		</tr>
		<%
			}
		%>
	</table>
	
<hr>
<h3>通过员工的工作种类查询</h3>
<form action="oneQueryJob.jsp" method="post">
请输入员工的工作种类：<input type="text" name="job"><br>
<input type="submit" value="点击查询"/></form>

<hr>
<h3>添加员工</h3>
<form action="oneAddEmployee.jsp" method="post">
员工的ID：    		 <input type="text" name="id"><br>
员工的姓名：		 <input type="text" name="name"><br>
员工的工作类型：     <input type="text" name="job1"><br>
员工的薪水：      	 <input type="text" name="salary"><br>
员工的部门：		 <input type="text" name="dept"><br>
<input type="submit" value="点击添加"/></form>

<hr>
<h3>根据员工ID删除员工信息</h3>
<form action="oneDeleteEmployeeByID.jsp" method="post">
员工的ID：<input type="text" name="id2"><br>
<input type="submit" value="点击删除 "/></form>

</body>
</html>