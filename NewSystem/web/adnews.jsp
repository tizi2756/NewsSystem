<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/3
  Time: 14:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/添加页面.css" type="text/css"/>
    <script type="text/javascript" src="js/添加页面.js" ></script>
</head>
<body>
<div class="top">
    <!--头部的logo图-->
    <div class="logo">
        <a href="index.html"><img src="img/153295964474249_03.png" /></a>
    </div>
    <div class="nav">
        <div class="nav-list"><a   href="index.jsp">首页</a></div>
        <div class="nav-list"><a href="/NewsShowServlet">新闻中心</a></div>
        <div class="nav-list"><a class="first" href="/AdNewsServlet">管理员</a></div>
        <!--<div class="nav-list"><a href="index.html">新闻发布</a></div>-->
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
<div class="main">
    <div class="main-top">
        <a href="总列表.html"><em>Information centres</em></a>
    </div>
    <div class="main-bottom">
        <div class="table1">
            <table class="List">
                <tr>
                    <th>标&nbsp;&nbsp;题</th>
                    <th>作&nbsp;者</th>
                    <th>发&nbsp;布&nbsp;日&nbsp;期</th>
                    <th>类&nbsp;别</th>
                    <th>编&nbsp;&nbsp;辑</th>
                </tr>
                <c:forEach items="${requestScope.perList}" var="content">
                    <tr>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getTitle()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getAuthor()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getAdd_time()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getKind_id()}</a></td>
                        <td><button onclick="javascrtpt:window.location.href = '/UpdataServlet?id=${content.getId()}'">修改</button><button class="shanchu" onclick="javascrtpt:window.location.href = '/DeletServlet?id=${content.getId()}'">删除</button></td>
                    </tr>
                </c:forEach>

            </table>
        </div>

        <div><button id="fabu">创建新闻</button></div>
    </div>
</div>
<div class="">
    <c:if test="${pageClass.getPageNow()>1}">
        <p class="P"><a href="/NewsShowServlet?pageNow=1">首页</a> </p>
        <p class="P"><a href="/NewsShowServlet?pageNow=${pageClass.getPageNow()-1}">上一页</a></p>
    </c:if>
    <c:forEach var="i" begin="1" end="${pageClass.getPageCount()}">
        <span class="SPAN"><a href="/PageServlet?pageNow=${i}">${i}</a></span>
    </c:forEach>
    <c:if test="${pageClass.getPageNow()<pageClass.getPageCount()}">
        <p class="P"><a href="/NewsShowServlet?pageNow=${pageClass.getPageNow()+1}">下一页</a></p>
        <p class="P"><a href="/NewsShowServlet?pageNow=${pageClass.getPageCount()}">尾页</a></p>
    </c:if>
</div>
<div class="root">
    <span class="root1">恒之工作室暑期大作业&nbsp;&nbsp;&nbsp;2018.8.1</span>
</div>
</body>
</html>
