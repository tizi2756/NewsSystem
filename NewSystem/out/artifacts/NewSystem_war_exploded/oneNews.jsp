<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/2
  Time: 7:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.News" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>详情报到</title>
    <link rel="stylesheet" href="css/oneNews.css" type="text/css">
</head>
<body>
<div class="top">
    <!--头部的logo图-->
    <div class="logo">
        <a href="index.jsp"><img src="img/153295964474249_03.png" /></a>
    </div>
    <div class="nav">
        <div class="nav-list"><a href="index.jsp">首页</a></div>
        <div class="nav-list"><a class="first" href="/NewsShowServlet">新闻中心</a></div>
        <div class="nav-list"><a href="login.jsp">管理员</a></div>
        <div class="nav-list"><a href="index.html">...</a></div>
    </div>
    <div class="search">
        <form>
            <input type="text" class="search-text" />
            <input type="image" src="img/搜索 (5).png" class="search-button" />
        </form>

    </div>
</div>
<div class="kong"></div>
    <c:forEach items="${requestScope.list}" var="content">
        <div class="center">
            <div class="title">
                <h1>${content.getTitle()}</h1>
            </div>
            <div class="author">
                <p>${content.getAuthor()}</p>
            </div>
            <div class="content">
                <p>${content.getContent()}</p>
            </div>
        </div>
    </c:forEach>
</body>
</html>
