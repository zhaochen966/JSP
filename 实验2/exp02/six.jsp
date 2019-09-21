<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="success.jsp" method="post">
<p style="font-weight:bold; font-size:25px" align="center">欢迎注册Web前端编程学习网站</p>
<table width="70%" border="1" align="center">
  <tr>
    <td width="15%" scope="col">用户名：</td>
    <td width="60%" scope="col">
      <input type="text" name="uname" id="textfield" />
    </td>
  </tr>
  <tr>
    <td>密码：</td>
    <td>
      <input type="password" name="upass" id="textfield2" />
   </td>
  </tr>
  <tr>
    <td>性别：</td>
    <td>
        <label>
          <input type="radio" name="RadioGroup1" value="男" id="RadioGroup1_0" />
          男</label>
        <label>
          <input type="radio" name="RadioGroup1" value="女" id="RadioGroup1_1" />
          女</label>
   </td>
  </tr>
  <tr>
    <td>爱好：</td>
    <td>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="唱歌" id="CheckboxGroup1_0" />
          唱歌</label>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="跳舞" id="CheckboxGroup1_1" />
          跳舞</label>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="运动" id="CheckboxGroup1_2" />
          运动</label>
        <label>
          <input type="checkbox" name="CheckboxGroup1" value="阅读" id="CheckboxGroup1_3" />
          阅读</label>
    </td>
  </tr>
  <tr>
    <td>学历：</td>
    <td><select name="education" class="学历">
        <option value="大学">大学</option>
        <option value="硕士研究生">硕士研究生</option>
        <option value="博士研究生">博士研究生</option>
    </select>
</td>
  </tr>
  <tr>
    <td>备注说明：</td>
    <td>
      <label for="textarea"></label>
      <textarea name="remarks" id="textarea" cols="35" rows="5"></textarea>
   </td>
  </tr>
  <tr>
    <td colspan="2" align="center">
      <input type="submit" name="submit" id="submit" value="注册" />
       <input type="reset" name="free" id="free" value="清空" />
    </td>
  </tr>
</table>


</form>
</body>
</html>