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
		request.setCharacterEncoding("utf-8");
		String name = request.getParameter("uname");
		String password = request.getParameter("upass");
		String sex = request.getParameter("RadioGroup1");
		String hobby[] = request.getParameterValues("CheckboxGroup1");
		String education = request.getParameter("education");
		String extra = request.getParameter("remarks");
	%>
	<p style="font-weight: bold; font-size: 25px">注册成功啦，恭喜！！！</p>
	用户名：<%
		out.print(name);
	%><br /> 密码：<%
		out.print(password);
	%><br /> 性别：<%
		out.print(sex);
	%><br /> 爱好：<%
		for (String c : hobby) {
			out.println(c + "&nbsp;&nbsp;");
		}
	%><br /> 学历：<%
		out.print(education);
	%><br /> 备注信息：<%
		out.print(extra);
	%>
</body>
</html>