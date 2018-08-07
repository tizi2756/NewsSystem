<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/4
  Time: 21:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/登录失败.css" type="text/css" />
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
            <a href="index.html">...</a>
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
    <h1>登录失败</h1>
    <div class="Return">
        <a href="login.jsp"><button>返回登录</button></a>
        <a href="register.jsp"><button>立即注册</button></a>
    </div>
</div>


</body>

</html>