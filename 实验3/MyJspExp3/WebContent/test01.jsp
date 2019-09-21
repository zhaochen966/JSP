<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>计算器</title>
</head>

<style type="text/css">
body {
	background: #CCE8CF;
}
</style>
<body>
	<form action="test01_result.jsp" method="get">
		<h1>我的计算器</h1>
		<hr />
		<p>
			请输入第一个数：<input type="text" name="first" value=<%=request.getSession().getAttribute("First")%>>
		</p>

		<p>
			请选择运算方式： <select name="select" id="select" >
				<option value="+">+</option>
				<option value="-">-</option>
				<option value="*">*</option>
				<option value="/">/</option>
			</select>
		</p>
		<p>
			请输入第二个数：<input type="text" name="second" value=<%=request.getSession().getAttribute("Second")%>>
		</p>
		<input type="submit" name="button" id="button" value="计算"/> 
		<input type="reset" name="reset" id="reset" value="重置" />

		<p>
			结果：<input type="text" name="result"
				value=<%=request.getSession().getAttribute("Result")%>>
		</p>
	</form>

</body>
</html>