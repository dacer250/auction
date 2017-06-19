<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <title>保定代理平台</title>
    <sitemesh:write property='head'/>
</head>
<body>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header" style="height: 70px">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse"
                        data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <span class="navbar-brand">保定代理平台<br>${userMap.login_name}
                    [剩余房卡：<span style="color:red">${userMap.virtual}</span><%-- <span style="font-size: 12px">(长按数字复制)</span>--%>]</span>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <%--<li>
                        <a href="/a/Core/Bulletin/list">官方公告 </a>
                    </li>--%>
                    <li>
                        <a href="/a/Core/Give/showBill">房卡充值 </a>
                    </li>
                    <li>
                        <a href="/a/Core/Give/billList">充值记录 </a>
                    </li>
                    <li>
                        <a href="/a/Core/Give/getUserGiveBindList">用户余额 </a>
                    </li>
                    <li>
                        <a href="/a/Core/Give/getUserGiveList">分配记录 </a>
                    </li>
                    <li>
                        <a href="/a/Base/User/edit">我的信息 </a>
                    </li>
                    <li></li>
                    <li>
                        <a href="/a/Base/User/logout">退出 </a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>
</div>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>

<myfooter>
    <sitemesh:write property='myfooter'></sitemesh:write>
</myfooter>
</body>
</html>