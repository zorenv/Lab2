<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.zorenv.SearchAction" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加<s:property value="Author"/>的个人信息</title>
<style type="text/css">
@charset "utf-8";
 input {
	border: none;
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
	-webkit-appearance: none;
}
#add  input[type="text"] {
	margin: 20px 20px;
	padding: 20px 20px;
	width: 600px;
}
#add  input[type="submit"] {
	background-color: #33cc00;
	color: #fff;
	margin: 20px 20px;
	padding: 20px 20px;
	width: 160px;
}
#add{
    text-align:center;
}

 h1 {
    text-align:center;
    font-size:50px;
    font-family:Helvetica, sans-serif;
  }
body{font:.85em/1.2 "微软雅黑","microsoft yahei",arial;background:#f2f2f2;background:linear-gradient(left,#f2f2f2,#dddddd);background:-moz-linear-gradient(left,#f2f2f2,#dddddd);background:-webkit-linear-gradient(left,#f2f2f2,#dddddd);background:-o-linear-gradient(left,#f2f2f2,#dddddd);}

</style>
</head>
<body>
    <div style="background-color:#DAA520;height:150px;padding-top:30px;"><h1><font style="color:white">请填写<s:property value="Author"/>的个人信息</font></h1></div>
    <div id="add">
     <s:form  action="addAuthorAction" >
            <label for="Name"></label><input name="Name" type="hidden" value=<s:property value="Author"/>></input><br>
            <label for="Age">年龄：</label><input name="Age" type="text"/><br>
            <label for="Author">国家：</label><input name="Country" type="text"/><br>
            <input type="submit" value="添加"/>
          </s:form>
    </div>
   
</body>
</html>