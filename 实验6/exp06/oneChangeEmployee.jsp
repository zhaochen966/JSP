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
	response.setContentType("text/html;charset=UTF-8");
    request.setCharacterEncoding("UTF-8");
    
    String id = request.getParameter("id");
	String name = request.getParameter("name");
	String job = request.getParameter("job");
	double salary = Double.parseDouble(request.getParameter("salary"));
	String dept = request.getParameter("dept");
	
	Employee employee = new Employee(id,name,job,salary,dept);
	if(EmployeeDao.changeEmployee(employee)){
		response.sendRedirect("one.jsp");
	}else{
		out.println("修改失败！");
	}
	%>


</body>
</html>