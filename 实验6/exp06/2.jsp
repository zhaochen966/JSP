<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Jsp+MySQL插入数据</title>
</head>
<body>
<div style="margin: auto;width:80%">
<sql:setDataSource var="conn" driver="com.mysql.jdbc.Driver"
url="jdbc:mysql://localhost:3306/testdb?useUnicode=true&characterEncoding=utf8" 
user="root" password="" />

<c:catch var="message">
<sql:update dataSource="${conn }" var="count">
insert into employees(id,name,age,education,address,salary)
values(11,'赵宸','24','本科','常熟市','221500')
</sql:update>
</c:catch>
<c:out value="${message }"></c:out>


<sql:query var="result" dataSource="${conn }">
select * from employees;
</sql:query>



<table border="1" width="100%">
<tr>
	<th>编号</th>
	<th>名字</th>
	<th>薪水</th>
	<th>地址</th>
</tr>

<c:forEach var="row" items="${result.rows }">
<tr>
	<td><c:out value="${row.id }"/></td>
	<td><c:out value="${row.name }"/></td>
	<td>￥<c:out value="${row.salary }"/></td>
	<td><c:out value="${row.address }"/></td>
</tr>
</c:forEach>
</table>




</div>
</body>
</html>