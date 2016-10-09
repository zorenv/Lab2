<%@ page language="java" import="java.sql.*,java.io.*,java.util.*,com.zorenv.SQLSearch"%>  
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="apple-mobile-web-app-capable" content="yes"/>
<meta name="apple-touch-fullscreen" content="yes" />
<meta name="apple-mobile-web-app-status-bar-style" content="black"/>
<meta name="format-detection" content="telephone=no,email=no"/>
<meta name="author" content="kuangmeng"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>书籍信息</title>
<style type="text/css">
body{font:.85em/1.2 "微软雅黑","microsoft yahei",arial;background:#f2f2f2;background:linear-gradient(left,#f2f2f2,#dddddd);background:-moz-linear-gradient(left,#f2f2f2,#dddddd);background:-webkit-linear-gradient(left,#f2f2f2,#dddddd);background:-o-linear-gradient(left,#f2f2f2,#dddddd);}
a:focus{outline:none;}
h3{text-shadow:0 2px #ccc;}
.tc{text-align:center;}
#navs{position:fixed;left:14px;bottom:14px;width:100px;height:100px;line-height:100px;font-size:2.5em;list-style-type:none;margin:0;padding:0;text-align:center;color:#fff;cursor:pointer;}
#navs>li,#navs:after{position:absolute;left:0;top:0;width:100%;height:100%;border-radius:50%;-webkit-border-radius:50%;background-color:#4ECDC4;}
#navs>li{transition:all .6s;-webkit-transition:all .6s;-moz-transition:.6s;}
#navs:after{content:attr(data-close);z-index:1;border-radius:50%;-webkit-border-radius:50%;}
#navs.active:after{content:attr(data-open);}
#navs a{width:100px;height:100px;display:inline-block;border-radius:50%;-webkit-border-radius:50%;text-decoration:none;color:#fff;}   
#customers
{
  font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
  width:100%;
  border-collapse:collapse;
  }

#customers td, #customers th 
  {
  font-size:1.2em;
  border:1px solid #98bf21;
  padding:3px 7px 2px 7px;
  }

#customers th 
  {
  font-size:1.5em;
  text-align:left;
  padding-top:5px;
  padding-bottom:4px;
  background-color:#A7C942;
  color:#ffffff;
  }

#customers tr.alt td 
  {
  color:#000000;
  background-color:#EAF2D3;
  }
  h1 {
    text-align:center;
    font-size:50px;
    font-family:Helvetica, sans-serif;
  }
  h3 {
    text-align:center;
    font-size:20px;
    font-family:Helvetica, sans-serif;
  }
</style>
</head>
<body>
    <div style="background-color:blue;height:150px;padding-top:30px;"><h1><font style="color:white">本书信息</font></h1></div>
   <%
      String isbn=request.getParameter("books");
      SQLSearch ss=new SQLSearch();
      ResultSet rs= ss.getResult();
      ResultSet au= ss.getAuthor();
      String[] name=new String[100];
      int index=1;
      while(au.next()){
        name[index++]=au.getString("AuthorID");
      	name[index++]=au.getString("Name");
      	name[index++]=au.getString("Age");
      	name[index++]=au.getString("Country");
      }
      while(rs.next()){
    	if(rs.getInt(1)==Integer.parseInt(isbn.trim())){  
   %>
     <table align="center" id ="customers">
		<tr>
			<td>
				<%
					out.print("ISBN");
				%>
			</td>
			<td>
				<%
					out.print(rs.getInt(1));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Title");
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(2));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Publisher");
				%>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("PublishDate");
				%>
			</td>
			<td>
				<%
					out.print(rs.getDate(4));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Price");
				%>
			</td>
			<td>
				<%
					out.print(rs.getFloat(5));
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Author");
				%>
			</td>
			<td>
				<% 
				int no=rs.getInt(6); 
				for(int i=1;i<index;i+=4){
					if(no==Integer.parseInt(name[i])){
						out.print(name[i+1]);
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Age");
				%>
			</td>
			<td>
				<% 
					out.print(name[i+2]);
				%>
			</td>
		</tr>
		<tr>
			<td>
				<%
					out.print("Country");
				%>
			</td>
			<td>
				<% 
					out.print(name[i+3]);
				}
			}
				%>
			</td>
		</tr>
		</table>
		<%
    	}
      }
		%>
</body>
</html>