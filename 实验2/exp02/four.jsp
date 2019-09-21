<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style type="text/css">
table,tr,td{
     border-style:solid;
     border-collapse: collapse;
     border-width:1px; 
}
td{
width:200px;
}

</style>
<body>
	<%!
	String[] ids = { "010020199601026929", "010020199711126928" };
	String[] births = new String[2];

	//声明方法,从身份证中截取生日
	public String getBirthday(String userid) {
		String result = "";
		if (userid.length() == 18) {
			String year = userid.substring(6, 10);
			String month = userid.substring(10, 12);
			String day = userid.substring(12, 14);
			result = year + "-" + month + "-" + day;
		} else {
			result = "录入身份证不合法";
		}
		return result;
	}	
	%>

</body>
 <table>
               <tr>
                   <td>身份证</td>
                   <td>生日</td>
               </tr>
               <tr>
                   <td><%=ids[0] %></td>
                   <td><%=getBirthday(ids[0]) %></td>
               </tr>
               <tr>
                   <td><%=ids[1] %></td>
                   <td><%=getBirthday(ids[1]) %></td>
               </tr>
           </table>

</html>