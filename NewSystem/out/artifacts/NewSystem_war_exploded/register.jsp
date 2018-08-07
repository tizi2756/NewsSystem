<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/3
  Time: 19:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理员注册</title>
    <link rel="stylesheet" href="css/管理员注册.css" type="text/css" />
    <script type="text/javascript" src="js/管理员注册.js" ></script>
</head>

<body>
<div class="top">
    <!--头部的logo图-->
    <div class="logo">
        <a href="index.html"><img src="img/153295964474249_03.png" /></a>
    </div>
    <div class="nav">
        <div class="nav-list">
            <a href="index.jsp">首页</a>
        </div>
        <div class="nav-list">
            <a href="/NewsShowServlet">新闻中心</a>
        </div>
        <div class="nav-list">
            <a class="first" href="register.jsp">管理员</a>
        </div>
        <div class="nav-list">
            <a href="index.jsp">...</a>
        </div>
    </div>
    <div class="search">
        <form>
            <input type="text" class="search-text" />
            <input type="image" src="img/搜索 (5).png" class="search-button" />
        </form>
    </div>
</div>
<div class="kong"></div>
<div class="main">
    <div class="Head">
        <h1>新用户注册</h1>
        <span>已有账号？</span>
        <span class="ziti"><a href="login.jsp">立即登录</a></span>
    </div>
    <form method="post" action="/RegistServlet">
        <div class="Form">
            <input type="text" id="pnone" name="username" placeholder="手机号" />
            <input type="text" id="yanzheng" placeholder="验证码"/>
            <p id="num1">获取验证码</p>
            <input type="password" id="passWord" name="password" placeholder="密码，6-16位，区分大小写" />
        </div>
        <div class="Form Form1">
            <input type="submit" value="注册" name="submit" id="zhuce" />
        </div>
    </form>
</div>
</body>

</html>