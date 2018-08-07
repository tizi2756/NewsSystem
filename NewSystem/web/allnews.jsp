<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/1
  Time: 20:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="entity.News" contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>新闻“酷”</title>
    <link rel="stylesheet" href="css/总列表.css" type="text/css"/>
</head>
<body>
<div class="top">
    <!--头部的logo图-->
    <div class="logo">
        <a href="index.html"><img src="img/153295964474249_03.png" /></a>
    </div>
    <div class="nav">
        <div class="nav-list"><a href="index.jsp">首页</a></div>
        <div class="nav-list"><a  class="second" href='/NewsShowServlet'>新闻中心</a></div>
        <div class="nav-list"><a href="login.jsp">管理员</a></div>
        <div class="nav-list"><a href="index.jsp">...</a></div>
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
            <table>
                <tr>
                    <th>标&nbsp;&nbsp;题</th>
                    <th>作者</th>
                    <th>发布日期</th>
                    <th>类别</th>
                </tr>
                <c:forEach items="${requestScope.perList}" var="content">
                    <tr>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getTitle()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getAuthor()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getAdd_time()}</a></td>
                        <td><a href="/oneNewsServlet?id=${content.getId()}">${content.getKind_id()}</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        </table>
    </div>
</div>
<br>
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
</body>
</html>
