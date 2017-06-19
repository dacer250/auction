<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <%--<title><sitemesh:write property='title'/></title>--%>
    <title>保定代理平台</title>

    <!-- Bootstrap Core CSS -->
    <link href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.css" rel="stylesheet">
    <sitemesh:write property='head'/>
</head>
<body>
<div class="container">
<c:if test="${info_type == \"error\"}">
    <div class="alert alert-danger" role="alert">${info_msg}</div>
</c:if>
<c:if test="${info_type == \"msg\"}">
    <div class="alert alert-info" role="alert">${info_msg}</div>
</c:if>
</div>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
<!-- jQuery -->
<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/template/js/core.js"></script>
<script type="text/javascript" src="/template/js/util.js"></script>
<sitemesh:write property='myfooter'></sitemesh:write>
</body>
</html>