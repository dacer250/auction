<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<head>
    <title>北京万隆和拍卖有限公司</title>
    <link rel="Shortcut Icon" href="/template/img/favicon.ico">

    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/template/css/swiper.min.css"/>

    <style>
        body {
            font-family: "Microsoft Yahei", "微软雅黑", verdana;
            color: #333;
            font-size: 12px;
            min-height: 100%;
        }

        input {
            -webkit-appearance: textfield;
            background-color: white;
            -webkit-rtl-ordering: logical;
            user-select: text;
            cursor: auto;
            padding: 1px;
            border-width: 2px;
            border-style: inset;
            border-color: initial;
            border-image: initial;
            text-rendering: auto;
            color: initial;
            letter-spacing: normal;
            word-spacing: normal;
            text-transform: none;
            text-indent: 0px;
            text-shadow: none;
            display: inline-block;
            text-align: start;
            margin: 0em;
            font: 13.3333px Arial;
        }

        a,
        a:hover {
            text-decoration: none;
            cursor: pointer;
            color: #333;
            outline: 0;
        }

        header {
            -webkit-box-shadow: 0 4px 5px -3px rgba(51, 51, 51, .1);
            -moz-box-shadow: 0 4px 5px -3px rgba(51, 51, 51, .1);
            box-shadow: 0 4px 5px -3px rgba(51, 51, 51, .1);
            border-bottom: 1px solid #eaeaea;
            min-width: 1090px;
            margin-bottom: 2px;
        }

        header .menu {
            color: #FFFFFF;
            background-color: #333333;
        }

        header .menu > div {
            background-color: #333333;
            margin: auto;
            width: 1090px;
            height: 35px;
            line-height: 35px;
        }

        header .menu .right {
            float: right;
        }

        header .menu .right a {
            color: #ccc;
        }

        header .tabWrap {
            height: 204px;
            width: 1090px;
            margin: auto;
            position: relative;
        }

        header .tabWrap .logo {
            display: inline-block;
            position: absolute;
            top: 20px;
            left: 485px;
            z-index: 2;
            background-position: 0 0;
            height: 120px;
            width: 120px;
            background: url("/template/img/logo.jpg") no-repeat;
            background-size: 100% auto;
            background-position: center center;
        }

        header .tabWrap .inner .search {
        }

        header .tabWrap .inner .search > div {
            float: right;
            margin: 60px;
            width: 400px;
            z-index: 10;
        }

        header .tabWrap .inner .search .searchInput {
            float: right;
            border-width: 0px;
            border-style: initial;
            border-color: initial;
            border-image: initial;
            font-size: 12px;
            line-height: 23px;
            color: rgb(51, 51, 51);
            width: 252px;
            margin-top: 9px;
            height: 23px;
            border-bottom: 1px solid rgb(216, 206, 188);
        }

        header .tabWrap .inner .search .searchButton {
            float: right;
            cursor: pointer;
            padding-top: 10px;
        }

        header .tabWrap .inner .search .header-search {
            font-style: normal;
            display: inline-block;
            vertical-align: top;
            font-size: 12px;
            word-spacing: normal;
            letter-spacing: normal;
            overflow: hidden;
            background-image: url("/template/img/icon.png");
            background-repeat: no-repeat;
            height: 20px;
            width: 20px;
            background-position: 0px -145px;
        }

        header .tabWrap .inner .nav {
            width: 1090px;
            float: left;
        }

        header .tabWrap .inner .nav ul {
            list-style: none;
            margin: 0px;
            padding: 0px;
            line-height: 1;
            height: 30px;
            width: 100%;
        }

        header .tabWrap .inner .nav li {
            display: list-item;
            font-weight: 700;
        }

        header .tabWrap .inner .nav-item {
            float: left;
            padding: 6px 26px 0;
            font-size: 14px;
            margin-left: 12px;
            padding-left: 30px;
        }

        header .tabWrap .inner .nav-item .topLevel {
            position: relative;
            z-index: 2;
            display: block;
            padding-bottom: 6px;
            color: #000;
        }

        header .tabWrap .inner .active .topLevel {
            color: #b4a078;
            border-bottom: 3px solid #b4a078;
        }

        header .tabWrap .inner .nav-item:hover .topLevel {
            color: #b4a078;
            border-bottom: 3px solid #b4a078;
        }

        footer {
            border-top: 1px solid #f4f0ea;
            min-width: 1090px;
        }

        footer .items {
            width: 1090px;
            margin: auto;
            padding-top: 25px;
        }

        footer .items .item {
            width: 33%;
            float: left;
            text-align: center;
        }

        footer .item .title {
            font-size: 16px;
        }

        footer .item .bd {
            text-align: left;
            width: 80%;
            margin: auto;
            font-size: 14px;
            padding: 25px 0 25px 0;
        }

        footer .item .bd p {
            padding: 1px;
            margin: 0px;
        }

        footer .item .bd img {
            margin-left: 25%;
            width: 50%;
        }

        footer .icp {
            min-width: 1090px;
            margin: auto;
            background-color: #333333;
            height: 35px;
            line-height: 35px;
            text-align: center;
            color: #FFFFFF;
        }
    </style>
    <sitemesh:write property='head'/>


</head>
<body>
<header>
    <div class="menu">
        <div>
            <div class="right">
                <!--<a>关注微信公众号</a>-->
            </div>
        </div>
    </div>
    <div class="tabWrap">
        <a class="logo"></a>
        <div class="inner">
            <div class="search">
                <div>
                    <div class="searchButton">
                        <a href='javascript:$("#classify_form").submit();'>
                            <i class="header-search"></i>
                        </a>
                    </div>
                    <form id="classify_form" action="/a/pc/Classify/show" method="post">
                        <input type="text" maxlength="100" autocomplete="off" class="searchInput" name="o['f']"
                               data-searchurl="">
                    </form>
                </div>
            </div>
            <div class="nav">
                <ul>
                    <li class="nav-item active">
                        <a class="topLevel" href="/a/pc/Index/show">
                            首页
                        </a>
                    </li>

                    <%
                        if (session.getAttribute("classinfo") == null) {
                            response.setHeader("Refresh", "0;url=/");
                        }
                        request.setAttribute("classinfo", session.getAttribute("classinfo"));
                    %>
                    <c:forEach items="${classinfo}" var="row" varStatus="i">
                        <c:if test="${i.index<10}">
                            <li class="nav-item " id="${row.id}">
                                <a class="topLevel" href="/a/pc/Classify/show?id=${row.id}">
                                        ${row.class_name}
                                </a>
                            </li>
                        </c:if>
                    </c:forEach>

                </ul>
            </div>
        </div>
    </div>
</header>

<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>

<footer>
    <div class="items">
        <div class="item">
            <div class="title">联系我们</div>
            <div class="bd">
                <p>北京万隆和拍卖有限公司</p>
                <p>地址：北京市朝阳区建外SOHO14号楼15层</p>
                <p>送拍、预约咨询：010-8069892</p>
                <p>邮箱：
                    <a href="mailto:bjwlhpm@sina.com" target="_self">bjwlhpm@sina.com</a>
                </p>
                <p>网址：
                    <a href="http://www.bjwanlonghe.com" target="_self">http://www.bjwanlonghe.com</a>
                </p>
            </div>
        </div>

        <div class="item">
            <div class="title">公司介绍</div>
            <div class="bd">
                <p>拍卖作为我国独具特色的行业，本公司以其“公开、公平、公正，诚实守信”的服务宗旨，让中国的艺术品在保持中华古代文明特色的基础上，能够走向世界，让世界了解中华五千年文化的精髓。</p>
            </div>
        </div>

        <div class="item">
            <div class="title">关注公众号</div>
            <div class="bd">
                <img src="http://www.bjwanlonghe.com/uploadFilesByBaidu/20170822/1503374319557025065.jpg">
            </div>
        </div>
    </div>
    <div class="clearfix"></div>
    <div class="icp">
        北京万隆和拍卖有限公司版权所有 © 2017 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 京ICP备04000001号
    </div>
</footer>

</body>


<script language="JavaScript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script language="JavaScript" src="http://apps.bdimg.com/libs/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<sitemesh:write property='myfooter'></sitemesh:write>
<script type="text/javascript">
    (function ($) {
        $.getUrlParam = function (name) {
            var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)");
            var r = window.location.search.substr(1).match(reg);
            if (r != null) return unescape(r[2]);
            return null;
        }
    })(jQuery);

    var cid = $.getUrlParam('id');

    $(".nav li").removeClass("active");

    if (cid == "") {

    } else {
        $(".nav").find("#" + cid).addClass("active");
        try {
            $(".center .hd .title").text($(".nav").find("#" + cid).text())
        } catch (exception) {

        }
    }
</script>
</html>
