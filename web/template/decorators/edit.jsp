<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html lang="zh-CN">

<head>
    <link rel="stylesheet" href="${ctx}/assets/css/edit.css" />
    <sitemesh:write property='head'/>
</head>

<body>
<div class="content">
    <div class="box">
        <%--<div class="left">
            <div class="left_menu">
                <div>分享简历</div>
                <div>我分享的简历</div>
                <div>我下载的简历</div>
                <div>我感兴趣的简历</div>
                <br />
                <div>积分:999　<a href="#">充积分</a></div>
                <div>佣金:999(888可用)　<a href="#">提现</a></div>
            </div>
        </div>--%>

        <div class="edit">
            <sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
        </div>
        <div class="clear"></div>
    </div>
</div>

</body>

</html>
