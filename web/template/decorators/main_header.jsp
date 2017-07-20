<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <sitemesh:write property='head'/>
</head>

<body>
<div class="header">
    <form id="classify_form" action="/a/main/Classify/show" method="post">
        <div class="search">
            <div>
                <i class="icon iconfont icon-search"></i>
                <input type="text" name="o['f']" value="${obj.f}"/>
            </div>
            <div>
                <a href='javascript:$("#classify_form").submit();'>搜索</a>
            </div>
        </div>
    </form>
</div>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
</body>
<myfooter>
    <sitemesh:write property='myfooter'></sitemesh:write>
</myfooter>
</html>