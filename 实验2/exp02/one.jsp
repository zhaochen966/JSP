<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*,cn.cslg.jsp.Student"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Question one</title>

<style type="text/css">
#a {
	margin: 0 auto;
	border-collapse: collapse;
	border-style: solid;
	border-width: 2px;
	border-color: black;
	border-collapse: collapse;
}

.b {
	width: 90px;
	border-style: solid;
	border-width: 1px;
	border-color: black;
}
</style>

</head>
<body>
	<%
		String[] s = new String[] { "学&nbsp;&nbsp;&nbsp;&nbsp;号", "姓&nbsp;&nbsp;&nbsp;&nbsp;名",
				"性&nbsp;&nbsp;&nbsp;&nbsp;别", "班&nbsp;&nbsp;&nbsp;&nbsp;级", "成&nbsp;&nbsp;&nbsp;&nbsp;绩" };
		out.println("<table id='a'>");
		for (int i = 0; i < s.length; i++) {
			out.println("<th class='b'>");
			out.println(s[i]);
			out.println("</th>");
		}
		ArrayList<Student> array = new ArrayList<Student>();
		array.add(new Student("001", "李白", "男", "01", 723));
		array.add(new Student("002", "孟浩然", "男", "02", 689));
		array.add(new Student("003", "杨玉环", "女", "03", 600));
		java.util.Iterator<Student> i = array.iterator();
		while (i.hasNext()) {
			Student s1 = (Student) i.next();
			out.println("<tr>");
			out.println("<td class='b'>");
			out.println(s1.getNum());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getName());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getSex());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getClas());
			out.println("</td>");
			out.println("<td class='b'>");
			out.println(s1.getScore());
			out.println("</td>");
			out.println("</tr>");
		}
		out.println("</table>");
	%>
</body>
</html>