<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/3
  Time: 18:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/管理员登录.css" type="text/css" />
    <script type="text/javascript" src="js/管理员登录.js" ></script>
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
            <a class="first" href="login.jsp">管理员</a>
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
        <h1>登录</h1>
        <span>还没账号？</span>
        <span class="ziti"><a href="register.jsp">立即注册</a></span>
    </div>
    <form action="/LoginServlet" method="post">
        <div class="Form">
            <input type="text" id="pnone" name="username" placeholder="手机号或邮箱" />
            <input type="password" id="passWord" name="password" placeholder="密码" />
        </div>
        <span><a href="忘记密码">忘记密码？</a></span>
        <div class="Form Form1">
            <input type="submit" value="登录" name="submit" id="tijiao" />
        </div>
    </form>
</div>

</body>

</html>
