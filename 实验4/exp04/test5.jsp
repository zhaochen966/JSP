<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String path=request.getContextPath();
	String basePath=request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="exp04/test5_result.jsp" method="post" >
用户昵称：<input type="text" name="name">    <br>
<a style="letter-spacing:30px">密</a>码：
<input type="password" name="password"><br>

确认密码：
<input type="password" name="repassword"><br>

<a style="letter-spacing:30px">性</a>别：
<input type="radio" name="sex" value="男">男
<input type="radio" name="sex" value="女">女 <br>

<a style="letter-spacing:30px">爱</a>好：
<input type="checkbox" name="hobby" value="体育">体育 
<input type="checkbox" name="hobby" value="美术">美术 
<input type="checkbox" name="hobby" value="音乐">音乐 
<input type="checkbox" name="hobby" value="旅游">旅游 
<br>
<input type="submit" value="提交" >
<input type="reset" value="重置">
</form>
</body>
</html>



