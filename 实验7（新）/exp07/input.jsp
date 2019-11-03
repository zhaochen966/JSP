<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h3>请输入三角形三条边的长度</h3>
<form action="TriangleServlet" method="post">
第一条边长度：<input type="text" name="num1"> <br>
第二条边长度：<input type="text" name="num2"> <br>
第三条边长度：<input type="text" name="num3"> <br>
<input type="submit" value="点击计算三角形的面积">
</form>

</body>
</html>