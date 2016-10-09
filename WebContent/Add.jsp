<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.zorenv.SearchAction" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加图书</title>
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
    <div style="background-color:#00BFFF;height:150px;padding-top:30px;"><h1><font style="color:white">请填写图书信息</font></h1></div>
    <div id="add">
     <s:form  action="addAction" >
            
            <label for="Title">题目：</label><input name="Title" type="text"/><br>
            <label for="Author">作者：</label><input name="Author" type="text"/><br>
            <label for="ISBN">ISBN：</label><input name="ISBN" type="text"/><br>
           <label for="Publisher">出版社：</label><input name="Publisher" type="text"/><br>
            <label for="PublishDate">出版时间(XXXX-XX-XX)：</label><input name="PublishDate" type="text"/><br>
            <label for="Price">价格：</label><input name="Price" type="text"/><br>
            
            <input type="submit" value="添加"/>
          </s:form>
    </div>
   
</body>
</html>