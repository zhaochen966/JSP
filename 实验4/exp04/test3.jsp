<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="score" class="cn.cslg.bean.Score"></jsp:useBean>
<%-- <jsp:setProperty property="*" name="score"/> --%>
<jsp:setProperty property="chinese" name="score" value="90"/>
<jsp:setProperty property="english" name="score" value="96"/>
<jsp:setProperty property="math" name="score" value="99"/>
<jsp:setProperty property="computer" name="score" value="95"/>
<jsp:setProperty property="pe" name="score" value="98"/>

该学生的总成绩为：${score.chinese+score.english+score.math+score.computer+score.pe}<br><br>
该学生的平均成绩为：${(score.chinese+score.english+score.math+score.computer+score.pe)/5.0}<br><br>
</body>
</html>