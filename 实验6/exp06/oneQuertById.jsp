<%@page import="cn.cslg.dao.EmployeeDao"%>
<%@page import="cn.cslg.enity.Employee"%>
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
	String id  =  request.getParameter("empId");
	Employee employee = EmployeeDao.queryEmpById(id);
	%>
	<!--  通过表单展示此人信息 -->
<form action="oneChangeEmployee.jsp" method="post">
		职工编号:<input type="text" name="id" value="<%=employee.getEmpId() %>" readonly="readonly" /><br /> 
		职工姓名:<input type="text" name="name" value="<%=employee.getEmpName() %>" /><br /> 
		工作类型:<input type="text" name="job" value="<%=employee.getJob() %>" /><br /> 
		薪水:<input type="text" name="salary" value="<%=employee.getSalary() %>" /><br /> 
		部门:<input type="text" name="dept" value="<%=employee.getDept() %>" /><br />
		<input type="submit" value="修改" /> <a href="one.jsp">返回</a>

	</form>
</body>
</html>