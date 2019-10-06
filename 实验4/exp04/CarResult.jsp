<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%request.setCharacterEncoding("utf-8"); %>    	    
<jsp:useBean id="car" class="cn.cslg.bean.Car"></jsp:useBean>	
<jsp:setProperty property="*" name="car"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
颜色：<jsp:getProperty property="color" name="car"/>
是否安装空调：<jsp:getProperty property="airConditioner" name="car"/>

	<%
		String path = request.getContextPath();
		String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
				+ path + "/";
	%>
</body>
</html>