<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_8oxcgnc5gvgkqpvi.css"/>
    <link rel="stylesheet" href="/template/css/main.css"/>
    <link rel="stylesheet" href="/template/css/swiper.min.css"/>
    <sitemesh:write property='head'/>
</head>

<body>
<div class="header">
    <div class="search">
        <div>
            <i class="icon iconfont icon-search"></i>
            <input type="text"/>
        </div>
        <div>
            <a href="index.html">搜索</a>
        </div>
    </div>
</div>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
<div class="footer">
    <div>
        <ul>
            <li class="active">
                <div><i class="iconfont icon-shouye-copy-copy-copy"></i>
                </div>
                <div><span>首页</span></div>
            </li>
            <li>
                <div><i class="iconfont icon-comiiszixun"></i></div>
                <div><span>资讯</span></div>
            </li>
            <li>
                <a href="classify.html">
                    <div><i class="iconfont icon-tubiao3"></i></div>
                    <div><span>分类</span></div>
                </a>
            </li>
            <li>
                <div><i class="iconfont icon-gongsi"></i></div>
                <div><span>公司简介</span></div>
            </li>
            <li>
                <div><i class="iconfont icon-weizhi"></i></div>
                <div><span>联系我们</span></div>
            </li>
        </ul>
    </div>
</div>
</body>
<myfooter>
    <sitemesh:write property='myfooter'></sitemesh:write>
</myfooter>
</html>