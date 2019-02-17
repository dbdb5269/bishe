<%--
  Created by IntelliJ IDEA.
  User: dubo
  Date: 2019/2/17
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<meta name="description" content="">
		<meta name="author" content="">
		<link rel="icon" href="../../favicon.ico">

		<title>Dashboard Template for Bootstrap</title>

		<!-- Bootstrap core CSS -->
		<link href="/css/bootstrap.min.css" rel="stylesheet">



		<!-- Custom styles for this template -->
		<link href="/css/dashboard.css" rel="stylesheet">

		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/jquery.validate.js"></script>
		<script src="js/messages_zh.js"></script>
		<script src="js/jquery.form.js"></script>
		<script src="js/jquery.bootstrap.min.js"></script>
		<script src="js/user.js"></script>
	</head>
</head>

</body>


<nav class="navbar navbar-inverse navbar-fixed-top">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">小区物业管理系统</a>
		</div>
		<div id="navbar" class="navbar-collapse collapse">
			<ul class="nav navbar-nav ">
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#login">登录</button>
				<button class="btn btn-primary btn-lg" data-toggle="modal" data-target="#register" >注册</button>
			</ul>
		</div>
	</div>
</nav>
<div id="login" class="modal fade">
	<div class="modal-dialog">
		<div class="modal-content">
			<div class="modal-body">
				<button class="close" data-dismiss="modal">
					<span>&times;</span>
				</button>
			</div>
			<div class="modal-title">
				<h2 class="text-center">登录</h2>
			</div>
			<div class="modal-body">
				<div class="form-group">
					<label for="username">用户名</label>
					<input id="username" class="form-control" type="text" placeholder="">
				</div>
				<div class="form-group">
					<label for="password">密码</label>
					<input id="password" class="form-control" type="password" placeholder="">
				</div>
				<div class="text-right">
					<button class="btn btn-primary" type="submit" onclick="c_o_li_submit()">确认</button>
					<button class="btn btn-danger" data-dismiss="modal">取消</button>
				</div>
			</div>
		</div>
	</div>
</div>

<div class="container-fluid">
	<div class="row">
		<div class="col-sm-3 col-md-2 sidebar">
			<ul class="nav nav-sidebar">
				<li class="active"><a href="#">小区介绍</a></li>
			</ul>
		</div>
		<div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
			<h1 class="page-header">新增物业人员</h1>
			<hr>

			<div class="table-responsive">
				<table class="table table-striped">
				</table>
			</div>
		</div>
	</div>
</div>
</body>
</html>
