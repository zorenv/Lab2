<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.zorenv.SearchAction" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<%--
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Varela+Round">
--%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>搜索书籍</title>
<style type="text/css">
@charset "utf-8";
@import url(http://weloveiconfonts.com/api/?family=fontawesome);
@import url(http://meyerweb.com/eric/tools/css/reset/reset.css);
[class*="fontawesome-"]:before {
  font-family: 'FontAwesome', sans-serif;
}
body {
	background-image:URL(https://unsplash.it/1440/860?random&t=7&gravity=north);
	color: #000;
	font-family: "Varela Round", Arial, Helvetica, sans-serif;
	font-size: 16px;
	line-height: 1.5em;
}
 input {
	border: none;
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
	-webkit-appearance: none;
}
#search  input[type="text"] {
	margin: 20px 20px;
	padding: 20px 20px;
	width: 600px;
}
#search  input[type="submit"] {
	background-color: #33cc00;
	color: #fff;
	margin: 20px 20px;
	padding: 20px 20px;
	width: 160px;
}
#search{
    text-align:center;
    margin-top:100px;
}
</style>
</head>
<body>
<!-- 
<body style="width:100%; height:100%;background: url('images/39.jpg');" > 
	<!--  <div id="Layer1" style="position:absolute; width:100%; height:100%; z-index:-1">    
	<img src="images/39.jpg" height="100%" width="100%"/> -->
 -->	
    <div id="search">
     <s:form  action="searchAction" >
            <input name="book" type="text" placeholder="请输入书名..."/>
            <input type="submit" value="搜索"/>
          </s:form>
    </div>
   
</body>
</html>