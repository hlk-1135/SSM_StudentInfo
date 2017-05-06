<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
	<title>登录</title>
	<link rel="stylesheet" href="//cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body>
<div class="container">
	<h1>用户登录</h1>
	<hr/>
	<form:form action="/user/loginValidate" method="post" commandName="user" role="form">
		<div class="form-group">
			<label for="username">username:</label>
			<input type="text" class="form-control" id="username" name="username" placeholder="Enter Username:"/>
		</div>
		<div class="form-group">
			<label for="password">Password:</label>
			<input type="text" class="form-control" id="password" name="password" placeholder="Enter Password:"/>
		</div>
		<div class="form-group">
			<button type="submit" class="btn btn-sm btn-success">登录</button>
		</div>
	</form:form>
</div>
<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
<script src="//cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>

<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<script src="//cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
</body>
</html>
