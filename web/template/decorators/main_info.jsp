<%@ page import="java.util.Map" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <title></title>
    <link rel="stylesheet" href="//at.alicdn.com/t/font_8oxcgnc5gvgkqpvi.css" />
    <link rel="stylesheet" href="/template/css/main.css" />
    <link rel="stylesheet" href="/template/css/swiper.min.css" />
    <sitemesh:write property='head'/>
    <style>
        .header {
            /*32px*/
            font-size: 0.836rem;
            text-align: center;
            height: 2rem;
            line-height: 2rem;
        }

        .header span {
            padding-left: 1.6rem;
            padding-right: 0.38rem;
            display: block;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .header i {
            display: block;
            position: absolute;
            top: 0.154rem;
            left: 0.154rem;
        }
    </style>
</head>

<body>
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

<script language="JavaScript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="/template/js/main.js"></script>
<script type="text/javascript" src="/template/js/swiper.jquery.min.js"></script>
<sitemesh:write property='myfooter'></sitemesh:write>
</html>