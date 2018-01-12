<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>轻实训-注册</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- 引入自定义CSS样式 -->
<link rel="stylesheet" href="http://localhost:8080/SpringMVCRegister/css/style.css">
</head>

<body>
	<div class="register-container">
		<header>
			<h1>简单用户注册</h1>
		</header>
		<!-- 用户注册表单 -->
		<form name="registerForm" action="http://localhost:8080/SpringMVCRegister/user/simple" method="post">
			<div class="input-group ">
				<label class="input-label">用户名称：</label> <input id="username" name="simpleUser.name" type="text" class="input" placeholder="请输入您的用户名！">
			</div>
			<p>注：用户名长度必须在2-8之间</p>
			<div class="input-group ">
				<label class="input-label">登录密码：</label> <input id="password" name="simpleUser.password" type="password" class="input" placeholder="请输入您的密码！">
			</div>
			
			<br>
			<hr>
			<div class="register-control">
				<button type="submit">注册</button>
				<button type="reset">重置</button>
			</div>
			<p>${message }</p>
		</form>
		<footer id="footer"> Copyright © 2017.轻实训版权所有 </footer>
	</div>
</body>

</html>
