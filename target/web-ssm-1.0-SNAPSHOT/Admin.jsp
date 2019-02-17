<%--
  Created by IntelliJ IDEA.
  User: dubo
  Date: 2019/2/17
  Time: 15:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String s=(String) session.getAttribute("user");
    if (s==null){
        response.sendRedirect("index.jsp");
    }
%>>

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
            <ul class="nav navbar-nav">
                <!--<li><a href="#">Link</a></li>-->
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="UserID">
                        <script type="text/javascript">
                            $(function() {
                                $.ajax({
                                    url: "online",
                                    type: "GET",
                                    success: function(response) {
                                        if(response!=null) {
                                            $("#UserID").append(response.toString()
                                                + '<b class="caret"></b>');
                                        }
                                    },
                                    error: function(xhr, msg, e) {
                                        alert("error!");
                                    }
                                });
                            });

                        </script>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a data-toggle="modal" data-target="#changepw" href="#" >修改密码</a></li>
                        <li><a href="index.jspindex.html" onclick="logout()">登出</a></li>
                    </ul>
                </li>
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
                <li><a href="#">房屋管理</a></li>
                <li><a href="#">住户管理</a></li>
                <li><a href="#">车位管理</a></li>
            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">小区介绍</a></li>
                <li><a href="">缴费管理</a></li>
                <li><a href="">投诉管理</a></li>
                <li><a href="">维修管理</a></li>
            </ul>
        </div>
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">新增物业人员</h1>
            <!-- Modal -->
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">新增</h4>
                        </div>
                        <div class="modal-body">
                            <form class="form-horizontal" id="newAdmin" method="post" action="/registerAdmin.do">
                                <div class="form-group">
                                    <label for="name" class="col-sm-2 control-label">姓名</label>
                                    <div class="col-sm-10">
                                        <input name="name" type="text" class="form-control" id="name" placeholder="姓名">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="age" class="col-sm-2 control-label">年龄</label>
                                    <div class="col-sm-10">
                                        <input name="age" type="text" class="form-control" id="age" placeholder="年龄">
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="level" class="col-sm-2 control-label">级别</label>
                                    <div class="col-sm-10">
                                        <select name="level" class="form-control" id="level">
                                            <option value="1">初级</option>
                                            <option value="2">中级</option>
                                            <option value="3">高级</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="job" class="col-sm-2 control-label">职业</label>
                                    <div class="col-sm-10">
                                        <select name="job" class="form-control" id="job">
                                            <option value="1">物业人员</option>
                                            <option value="2">维修人员</option>
                                            <option value="3">保洁人员</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                    <button type="submit" class="btn btn-primary" >提交</button>
                                </div>
                            </form>
                        </div>

                    </div>
                </div>
            </div>

            <button type="button" style="text-align:right" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModal">
                新增物业管理人员
            </button>
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
