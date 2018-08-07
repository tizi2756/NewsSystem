<%--
  Created by IntelliJ IDEA.
  User: 浩
  Date: 2018/8/4
  Time: 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="C" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <meta charset="UTF-8">
    <title>管理员登录</title>
    <link rel="stylesheet" href="css/新闻修改.css" type="text/css" />
    <!--<script type="text/javascript" src="js/新闻发布.js"></script>-->
</head>

<body>
<div class="top">
    <!--头部的logo图-->
    <div class="logo">
        <a href="index.html"><img src="img/153295964474249_03.png" /></a>
    </div>
    <div class="nav">
        <div class="nav-list">
            <a href="index.html">首页</a>
        </div>
        <div class="nav-list">
            <a href="总列表.html">新闻中心</a>
        </div>
        <div class="nav-list">
            <a class="first" href="新闻修改.html">管理员</a>
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

<!--富文本框-->
<div class="bianji">
    <div class="biaoti">
        <h5>编辑新闻</h5>
    </div>
    <form action="/ChangServlet" method="get">
        <c:forEach items="${requestScope.list}" var="content">
            <div class="jianjie">
                <div>新闻编号：<input name="id" type="text" readonly="true" class="wenben" value="${content.getId()}"></div>
                <span class="ziti1">题目：</span><input name="title" type="text" class="wenben" value="${content.getTitle()}" />
                <span class="ziti1">作者：</span><input name="author" type="text" class="wenben" value="${content.getAuthor()}" />
                <br />
                <span class="ziti1">分类：</span><input name="kind_name" type="text" class="wenben" value="${content.getKind()}" />
                <span class="ziti1">发布时间：</span><input name="add_time" type="text" class="wenben" value="${content.getAdd_time()}" />
                <span class="ziti1">修改时间：</span><input name="up_time" type="text" class="wenben" value="${content.getUp_time()}" />
            </div>
            <script src="http://cdn.bootcss.com/wangeditor/2.1.20/js/lib/jquery-2.2.1.js"></script>
            <!--编辑器-->
            <div style="max-width:700px;margin:50px" id="txt">
                <div id="txtdiv" style="border:1px solid gray;min-height:273px">
                    <textarea style="height: 90%;width: 90%" name="content">${content.getContent()}</textarea>
                </div>
            </div>
            <!--效果-->
            <div class="biankuang2">
                <div id="show_box" style="border: 1px solid gray;margin-left:50px"></div>
            </div>
            <!--脚本控制-->
            <script>
                $(function() {
                    //初始化编辑器
                    editor = new wangEditor("txtdiv");
                    editor.create();

                    //内容修改事件，此处做的是实时展示实际效果
                    editor.onchange = function() {
                        //获取editor的html值
                        var html = editor.$txt.html();
                        $("#show_box").html(html)
                    }
                })
            </script>
            <input id="submit" type="submit" value="提交">
        </c:forEach>
    </form>
</div>

<div class="root">
    <span class="root1">恒之工作室暑期大作业&nbsp;&nbsp;&nbsp;2018.8.1</span>
</div>

<script src="http://cdn.bootcss.com/wangeditor/2.1.20/js/wangEditor.js"></script>
<link href="http://cdn.bootcss.com/wangeditor/2.1.20/css/wangEditor.css" rel="stylesheet">

</body>
</html>
