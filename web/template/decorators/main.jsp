<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_yid3o2gx8s5dbo6r.css"/>
    <link rel="stylesheet" href="/template/css/main.css"/>

    <sitemesh:write property='head'/>
</head>

<body>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>

<script language="JavaScript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/template/js/main.js"></script>
<sitemesh:write property='myfooter'></sitemesh:write>
</body>

</html>