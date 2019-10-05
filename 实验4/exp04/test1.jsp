<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="user" class="cn.cslg.bean.User"></jsp:useBean>
<jsp:setProperty property="name" name="user" value="anne"/>
姓名:<jsp:getProperty property="name" name="user"/> 
</body>
</html>