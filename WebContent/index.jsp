<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" 
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="http://fonts.googleapis.com/css?family=Varela+Round">
<title>欢迎来到图书馆管理系统！</title>
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
#login {
    position: absolute;/*--絕對定位--*/
    top: 50%;
    left: 50%;
    margin-top: -200px;/*--div高度的一半--*/
    margin-left: -200px;/*--div寬度的一半--*/
    width: 400px;    
    height: 300px;
	
}

#login h2 {
	background-color: #f95252;
	-webkit-border-radius: 20px 20px 0 0;
	-moz-border-radius: 20px 20px 0 0;
	border-radius: 20px 20px 0 0;
	color: #fff;
	font-size: 28px;
	padding: 20px 26px;
}

#login h2 span[class*="fontawesome-"] {
	margin-right: 14px;
}

#login fieldset {
	background-color: #fff;
	-webkit-border-radius: 0 0 20px 20px;
	-moz-border-radius: 0 0 20px 20px;
	border-radius: 0 0 20px 20px;
	padding: 20px 26px;
}

#login fieldset p {
	color: #777;
	margin-bottom: 14px;
}

#login fieldset p:last-child {
	margin-bottom: 0;
}

#login fieldset input {
	-webkit-border-radius: 3px;
	-moz-border-radius: 3px;
	border-radius: 3px;
}

#login fieldset input[type="text"], #login fieldset input[type="password"] {
	background-color: #eee;
	color: #777;
	padding: 4px 10px;
	width: 328px;
}

#login fieldset input[type="submit"] {
	background-color: #33cc00;
	color: #fff;
	display: block;
	margin: 0 auto;
	padding: 4px 0;
	width: 100px;
}
     </style>
</head>
<body>
   <div id="login">
		<h2><span class="fontawesome-lock"></span>欢迎登陆!</h2>
		<form action="login" method="POST">
			<fieldset>
				<p><label for="username">请输入你的用户名(admin)：</label></p>
				<p><input type="text" id="username" name="username" value=""></p> 
				<p><label for="password">请输入你的密码(admin)：</label></p>
				<p><input type="password" id="password" name="password" value=""></p>
				<p><input type="submit" value="登录">
			</fieldset>
		</form>
	</div> <!-- end login -->
</body>
</html>