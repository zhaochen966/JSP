<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="stu" class="cn.cslg.bean.Student"/>
<%--通过<c:set>标签给javaBean对象的age属性设值--%>
<c:set value="16" target="${stu}" property="age"/>
<%--输出javaBean对象的属性值--%>
年龄:<c:out value="${stu.age}"/>
<%--当if判断为true时,输出标签体的内容--%>
<c:if test="${stu.age<18}" var="young" scope="session">对不起,未成年,不能访问这个网站...</c:if>
<%--输出if语句的判断结果--%>
判断结果:<c:out value="${sessionScope.young}"/>
</body>
</html>