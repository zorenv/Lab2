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
<meta name="author" content="zorenv"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>欢迎光临!</title>
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
  input {
	border: none;
	font-family: inherit;
	font-size: inherit;
	font-weight: inherit;
	line-height: inherit;
	-webkit-appearance: none;
}
p {
	color: #777;
	margin-bottom: 30px;
}
input[id="addBooks"] {
	background-color: #33cc00;
	color: #fff;
	display: block;
	margin: 0 auto;
	padding: 4px 0;
	width: 200px;
	height:100px;
}
</style>
</head>
<body>
     <%
        SQLSearch ss=new SQLSearch();
        ResultSet rs= ss.getResult();
        ResultSet au= ss.getAuthor();
        String[] name=new String[100];
        int index=1;
        while(au.next()){
        	name[index++]=au.getString("Name");
        }
        String book = request.getParameter("book");
        if(book == null){
     %>
    <div style="background-color:#00BBFF;height:150px;padding-top:30px;"><h1><font style="color:white">图书信息</font></h1></div>
    <%
       }else{
        %>
      <div style="background-color:#F08080;height:150px;padding-top:30px;"><h1><font style="color:white">查询结果</font></h1></div>
        <%
       }
        %>
	<table align="center" id ="customers" bgcolor="#FFFFFF">
		<tr>
			<th>
				<%
					out.print("ISBN");
				%>
			</th>
			<th>
				<%
					out.print("题目");
				%>
			</th>
			<th>
				<%
					out.print("出版社");
				%>
			</th>
			<th>
				<%
					out.print("出版日期");
				%>
			</th>
			<th>
				<%
					out.print("价格");
				%>
			</th>
			<th>
				<%
					out.print("作者");
				%>
			</th>
			
			<th>
				<%
					out.print("删除");
				%>
			</th>
			 
			 <%--
			<th>
				<%
					out.print("File Operations");
				%>
			</th>
			--%>
		</tr>

		<% 
		    int no=0; 
		     int in = 1;
			while (rs.next()){
				if(rs.getString("Title").equals(book) || book==null){
				no++;
				if(no%2==0){
		%>
		<tr class = "alt">
			<td>
				<%
				}else{
					%>
		<tr>
		     <td>
				<%
				}
					out.print(rs.getInt(1));
					in=rs.getInt(1);
				%>
			</td>
			<td><a href="/Struts2_BookManage/book.jsp?books=<%=in %>">
				<%
					out.print(rs.getString(2));
				%>
				</a>
			</td>
			<td>
				<%
					out.print(rs.getString(3));
				%>
			</td>
			<td>
				<%
					out.print(rs.getDate(4));
				%>
			</td>
			<td>
				<%
					out.print(rs.getDouble(5));
				    int num=rs.getInt(6);
				%>
			</td>
			<td><a href="/Struts2_BookManage/author.jsp?author=<%=num %>">
				<% 
					out.print(name[num]);
				%></a>
			</td>
			<td>
			 <form action="deleteBook"><input type="hidden" name="ISBN" value=<%=in %>><input type="submit" value="删除" onclick="return confirm('确认删除此书？')" style="color:#FF0000;"></form>
		     </td>
		    <%-- 
			<td>
		      <a href="/Struts2_BookManage/upload.jsp?isbn=<%=in %>"><input type="submit" value="上传文件" ></a>
			  <a href="/Struts2_BookManage/download.jsp?isbn=<%=in %>"><input type="submit" value="下载文件" ></a>
			</td>
			--%>
		</tr>
		<%
			}
		}
		%>
	</table>
	<%
	if(no==0 && book!=null){
			%>
			
<script>
      alert("抱歉，没有相关记录！（点击确定重新搜索）")
	  history.go(-1); 
</script>
			<% 
		}else if(no == 0){
			%>
            <p><a href="/Struts2_BookManage/Add.jsp"><input id="addBooks" type="submit" value="添加"></a></p>
			<% 
		}
	%>
	<ul id="navs" data-open="收" data-close="功">
	<li><a href="/Struts2_BookManage/top.jsp">首</a></li>
	<li><a href="/Struts2_BookManage/Search.jsp">查</a></li>
	<li><a href="/Struts2_BookManage/Add.jsp">添</a></li>
	<li><a href="/Struts2_BookManage/index.jsp">退</a></li>
</ul>
   
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript">
(function(){
	var ul=$("#navs"),li=$("#navs li"),i=li.length,n=i-1,r=240;
	ul.click(function(){
		$(this).toggleClass('active');
		if($(this).hasClass('active')){
			for(var a=0;a<i;a++){
				li.eq(a).css({
					'transition-delay':""+(50*a)+"ms",
					'-webkit-transition-delay':""+(50*a)+"ms",
					'-o-transition-delay':""+(50*a)+"ms",
					'transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-webkit-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-o-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px",
					'-ms-transform':"translate("+(r*Math.cos(90/n*a*(Math.PI/180)))+"px,"+(-r*Math.sin(90/n*a*(Math.PI/180)))+"px"
				});
			}
		}else{
			li.removeAttr('style');
		}
	});
})($);
</script>
</body>
</html>