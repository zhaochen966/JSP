<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
<%request.setCharacterEncoding("utf-8"); %>    
   
<jsp:useBean id="userInfo" class="cn.cslg.bean.UserInformation" scope="page"/>
<jsp:setProperty property="*" name="userInfo"/>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
String s1= request.getParameter("password");
String s2= request.getParameter("repassword");
if(!s1.equals(s2))
{
	out.println("两次密码不一样！！！");
	out.println("<br>请点击返回按钮，重新输入提交。");
}else{
	//右边的大括号在下面，否则，两次密码一样的情况，输出下面的信息。
%>

用户昵称：${userInfo.name } <br>
<a style="letter-spacing:30px">密</a>码：${userInfo.password }<br>
<a style="letter-spacing:30px">性</a>别：${userInfo.sex }<br>
<a style="letter-spacing:30px">爱</a>好：${userInfo.hobby[0] }  
${userInfo.hobby[1] }
${userInfo.hobby[2] }
${userInfo.hobby[3] }
<%
}
%>
<br> 
<input type="button" value="返回" onclick="window.location.href='test5.jsp' ">

</body>
</html>