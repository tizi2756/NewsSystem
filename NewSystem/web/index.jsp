<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/7/30
  Time: 13:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.News" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
  <meta charset="utf-8" />
  <title>News Management</title>
  <link rel="stylesheet" href="css/终极作业.css" type="text/css" />
  <script type="text/javascript" src="js/终极作业.js" ></script>
</head>

<body>
<div class="top">
  <!--头部的logo图-->
  <div class="logo">
    <a href="index.html"><img src="img/153295964474249_03.png" /></a>
  </div>
  <div class="nav">
    <div class="nav-list">
      <a class="first" href="index.jsp">首页</a>
    </div>
    <div class="nav-list">
      <a href="/NewsShowServlet">新闻中心</a>
    </div>
    <div class="nav-list">
      <a href="login.jsp">管理员</a>
    </div>
    <!--<div class="nav-list"><a href="index.html">新闻发布</a></div>-->
    <div class="nav-list">
      <a href="index.html">...</a>
    </div>
  </div>
  <div class="search">
    <form action="/QueryNewsServlet" method="get">
      <input type="text" name="keyword" class="search-text" />
      <input type="submit" src="img/搜索 (5).png" class="search-button" />
    </form>

  </div>
</div>
<!--轮播图今日推荐-->
<div class="kong"></div>
<div class="main" id="container">

  <div id="list" style="left:-1519px;">
    <a href="#"> <img src="img/108940.jpg" alt="1" /></a>
    <a href="#"><img src="img/9982.jpg" alt="1" /></a>
    <a href="#"><img src="img/c8f85ee084c7b75cc1cda69f272659b0.jpg" alt="2" /></a>
    <a href="#"> <img src="img/ed27e0b0f52a4c140a4bbfa96de9548e.jpg" alt="3" /></a>
    <a href="#"> <img src="img/k3WYJoLNmM.jpg" alt="4" /></a>
    <a href="#"> <img src="img/108940.jpg" alt="1" /></a>
    <a href="#"><img src="img/9982.jpg" alt="1" /></a>
  </div>
  <div id="buttons">
    <span index="1" class="on"></span>
    <span index="2"></span>
    <span index="3"></span>
    <span index="4"></span>
    <span index="5"></span>
  </div>
  <!--箭头图标-->
  <div id="zuo"><img src="img/返回1 (1).png" /> </div>
  <div id="you"><img src="img/返回2 (1).png" /></div>

</div>
<!--j今日热点-->
<div class="hot">

  <div class="list-1">
    <div class="list-1-1">
      <h2>热点要闻</h2>
    </div>
    <div class="list-1-2">
      <ul class="list-1-2-1">
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="page-1">
    <div class="lunbo2">
      <a href="#"><img src="img/108940.jpg" class="tupain" /></a>
      <a href="#"><img src="img/k3WYJoLNmM.jpg" class="tupain"/></a>
      <a href="#"><img src="img/c8f85ee084c7b75cc1cda69f272659b0.jpg" class="tupain"/></a>
      <a href="#"><img src="img/k3WYJoLNmM.jpg" class="tupain"/></a>
      <a href="#"><img src="img/k3WYJoLNmM.jpg" class="tupain"/></a>
      <a href="#"><img src="img/k3WYJoLNmM.jpg" class="tupain"/></a>
    </div>
    <div class="tubiao">
      <img src="img/153295964474249_03.png" />
    </div>
  </div>

  <div class="list-1">
    <div class="list-1-1">
      <h2>今日焦点</h2>
    </div>
    <div class="list-1-2">
      <ul class="list-1-2-1">
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
      </ul>
    </div>
  </div>
</div>

<div class="hot1">
  <a href="总列表.html">
    <h2>查看更多</h2></a>
</div>
<!--新闻标签-->
<div class="news-label">

  <div class="label-top">
    <img src="img/闪光灯打开 (1).png" />
    <span>标签精选</span>
    <img src="img/闪光灯打开 (1).png" />
    <h3>LABEL</h3>
  </div>

  <div class="label-bottom">
    <div class="list-2">
      <a href="/FindKindServlet?kind_name=军事">军事</a>
      <a href="/FindKindServlet?kind_name=时政">时政</a>
      <a href="/FindKindServlet?kind_name=文化">文化</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
      <a href="index.html">财经</a>
    </div>
  </div>
</div>

<div class="news-label2">

  <div class="label-top">
    <img src="img/闪光灯打开 (1).png" />
    <span>要闻简列</span>
    <img src="img/闪光灯打开 (1).png" />
    <h3>IMPOTENT</h3>
  </div>

  <div class="list-3">
    <div class="list-3-1">
      <h3>国内</h3>
    </div>
    <div class="list-3-2">
      <ul class="list-3-2-1">
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="list-4">
    <div class="list-3-1">
      <h3>地区</h3>
    </div>
    <div class="list-3-2">
      <ul class="list-3-2-1">
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="list-4">
    <div class="list-3-1">
      <h3>国际</h3>
    </div>
    <div class="list-3-2">
      <ul class="list-3-2-1">
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
        <li>
          <a href="index.html">习近平：运筹金砖合作 实现“金色十年”新飞跃</a>
        </li>
      </ul>
    </div>
  </div>

</div>

<div class="root">
  <span class="root1">恒之工作室暑期大作业&nbsp;&nbsp;&nbsp;2018.8.1</span>
</div>
</body>

</html>
