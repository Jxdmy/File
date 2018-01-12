<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>轻实训-注册</title>
<!-- 引入自定义CSS样式 -->
<link rel="stylesheet" href="http://localhost:8080/SpringMVCRegister/css/style.css">
</head>

<body>
	<div class="register-container">
		<header>
			<h1>默认用户注册</h1>
		</header>
		<!-- 用户注册表单 -->
		<form name="registerForm" action="http://localhost:8080/SpringMVCRegister/user/default" method="post">
			<div class="input-group ">
				<label class="input-label">用户名称：</label> <input id="username" name="user.username" type="text" class="input" placeholder="请输入您的用户名！">
			</div>
			<p>注：用户名长度必须在2-8之间</p>
			<div class="input-group ">
				<label class="input-label">登录密码：</label> <input id="password" name="user.password" type="password" class="input" placeholder="请输入您的密码！">
			</div>
			<div class="input-group ">
				<label class="input-label">电子邮箱：</label> <input id="email" name="user.email" type="email" class="input" placeholder="请输入您的邮箱！">
			</div>
			<div class="input-group clr">
				<label class="">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业：</label>
				<select class="select" name="user.profession">
					<option value="student">学生</option>
					<option value="teacher">老师</option>
					<option value="coder">程序猿</option>
					<option value="engineer">攻城狮</option>
					<option value="ui">UI设计</option>
				</select>
			</div>
			<br>
			<hr>
			<div class="register-control">
				<button type="submit">注册</button>
				<button type="reset">重置</button>
			</div>
		</form>
		<footer id="footer"> Copyright © 2017.轻实训版权所有 </footer>
	</div>
</body>

</html>