<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计算器</title>
</head>
<body>
 <form action="test01.jsp" method="get">
		<%
			String number1 = request.getParameter("first"); //接收第一个数
			String number2 = request.getParameter("second"); 
			String flag = request.getParameter("select");			
			
			double num1 = 0;
			double num2 = 0;
			double result = 0; 
			//java中 String ->double	
			num1 = Double.parseDouble(number1);
			num2 = Double.parseDouble(number2);
			//计算	
			if (flag.equals("+")) {
				result = num1 + num2;
			} else if (flag.equals("-")) {
				result = num1 - num2;
			} else if (flag.equals("*")) {
				result = num1 * num2;
			} else {
				result = num1 / num2;
			} //输出结果
		//	out.println("结果是："+result);
			
			HttpSession ses =request.getSession();
			ses.setAttribute("First", ""+num1);
			ses.setAttribute("Second", ""+num2);
			ses.setAttribute("Result", ""+result);
			response.sendRedirect("test01.jsp");
	
		%>

</form>
</body>
</html>