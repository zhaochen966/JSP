<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>计数器</title>
</head>
<body>
 <%
        if (pageContext.getAttribute("pageCount") == null) {
            pageContext.setAttribute("pageCount", new Integer(0));
        }
        if (session.getAttribute("sessionCount") == null) {
            session.setAttribute("sessionCount", new Integer(0));
        }

        //页面计数
        Integer count = (Integer) pageContext.getAttribute("pageCount");
        pageContext.setAttribute("pageCount", new Integer(
                count.intValue() + 1));
        
      //浏览器计数
        Integer count2 = (Integer) session.getAttribute("sessionCount");
        session.setAttribute("sessionCount", new Integer(
                count2.intValue() + 1));
    %>
    页面计数：<%=pageContext.getAttribute("pageCount")%>
    <br />
    浏览器计数：<%=session.getAttribute("sessionCount")%>
    <br />

</body>
</html>