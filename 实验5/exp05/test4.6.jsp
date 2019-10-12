<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.*, cn.cslg.bean.UserInformation" %>	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

List users=new ArrayList();

for(int i=0;i<5;i++)

{

UserInformation u=new UserInformation();

u.setName("jack-"+i);

u.setPassword("00"+i);

users.add(u);

session.setAttribute("users",users);

}

%>

<%--注意:EL中只可通过11个隐含对象来输出表达式中的内容(因此直接将List对象添加到EL表达式中不可用)--%>

<%--通过<c:forEach>迭代出集合中的信息>--%>

<h1>用户信息</h1>

<table>

  <tr>

    <th>用户名</th>

    <th>密码</th>

    <th>当前行的索引</th>

    <th>已遍历的行数</th>

    <th>是否第一行</th>

    <th>是否最后一行</th>

  </tr>

  <c:forEach var="user" items="${users}" varStatus="status"><%--加上begin="1" end="3" step="1"属性,将只显示前三条记录--%>

  <tr>

    <td><c:out value="${user.name}"/></td>

    <td><c:out value="${user.password}"/></td>

    <td><c:out value="${status.index}"/></td><%--输出当前行的索引号--%>

    <td><c:out value="${status.count}"/></td><%--输出已遍历的行数--%>

    <td><c:out value="${status.first}"/></td><%--输出当前行是否是第一行--%>

    <td><c:out value="${status.last}"/></td><%--输出当前行是否是最后一行--%>

  </tr>

  </c:forEach>

</table>

 

<%--通过<c:forEach>输出从1到10的数据--%>

<c:forEach var="num" begin="1" end="10" step="2">

<c:out value="->${num}"></c:out>

</c:forEach>

 

<%--通过<c:forEach>遍历数组,枚举,集合等--%>

<%

int[]intarr=new int[]{10,20,30,40,50};

String[]strarr=new String[]{"I","am","a","handsome","boy"};

Vector v=new Vector();

v.add("This");

v.add("is");

v.add("a");

v.add("Enumeration");

v.add("example");

Enumeration e=v.elements();

HashMap h=new HashMap();

h.put("hello","0");

h.put("hello1","1");

h.put("hello2","2");

h.put("hello3","3");

h.put("hello4","4");

request.setAttribute("intarr",intarr);

request.setAttribute("strarr",strarr);

request.setAttribute("e",e);

request.setAttribute("h",h);

%>

<br>

<h1>--遍历整形数组--</h1>

<%--遍历整形数组--%>

<c:forEach var="i" items="${intarr}">

<c:out value="${i}"></c:out>

</c:forEach>

 

<br>

<h1>--遍历字符串数组--</h1>

<%--遍历字符串数组--%>

<c:forEach var="s" items="${strarr}">

<c:out value="${s}"></c:out>

</c:forEach>

 

<br>

<h1>--遍历枚举--</h1>

<%--遍历枚举--%>

<c:forEach var="ee" items="${e}">

<c:out value="${ee}"></c:out>

</c:forEach>

 

<br>

<h1>--遍历HashMap--</h1>

<%--遍历HashMap--%>

<c:forEach var="hh" items="${h}">

<c:out value="${hh.key}"/>=<c:out value="${hh.value}"/>

</c:forEach>
</body>
</html>