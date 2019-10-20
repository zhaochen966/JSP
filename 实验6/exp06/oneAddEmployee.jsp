<%@page import="cn.cslg.enity.Employee"%>
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
<%
//post方式一定要设置编码格式
	response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");
	
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String job = request.getParameter("job1");
	double salary = Double.parseDouble(request.getParameter("salary"));
	String dept = request.getParameter("dept");
	
	Employee employee = new Employee(id,name,job,salary,dept);
	
	if(EmployeeDao.addEmployee(employee)){
		response.sendRedirect("one.jsp");
	}else{
		out.println("插入失败！！！");
	}
%>
</body>
</html>