<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>
<html>

<head>
    <sitemesh:write property='head'/>
</head>

<body>
<sitemesh:write property='body'>Body goes here. Blah blah blah.</sitemesh:write>
<div class="footer">
    <div>
        <ul>
            <a href="/a/main/Index/show">
                <li>
                    <div><i class="iconfont icon-shouye-copy-copy-copy"></i>
                    </div>
                    <div><span>首页</span></div>
                </li>
            </a>
            <a href="/a/main/Info/show">
                <li>
                    <div><i class="iconfont icon-comiiszixun"></i></div>
                    <div><span>资讯</span></div>
                </li>
            </a>
            <a href="/a/main/Classify/show">
                <li>
                    <div><i class="iconfont icon-tubiao3"></i></div>
                    <div><span>分类</span></div>
                </li>
            </a>
            <a href="/a/main/OtherInfo/about">
            <li>
                <div><i class="iconfont icon-gongsi"></i></div>
                <div><span>公司简介</span></div>
            </li>
            </a>
            <a href="/a/main/OtherInfo/contact">
            <li>
                <div><i class="iconfont icon-weizhi"></i></div>
                <div><span>联系我们</span></div>
            </li>
            </a>
        </ul>
    </div>
</div>
</body>
<myfooter>
    <sitemesh:write property='myfooter'></sitemesh:write>
    <script type="text/javascript">
        if (window.location.href.indexOf("Index") > -1) {
            $(".footer li").eq(0).addClass("active")
        }
        if (window.location.href.indexOf("/Info") > -1) {
            $(".footer li").eq(1).addClass("active")
        }
        if (window.location.href.indexOf("Classify") > -1) {
            $(".footer li").eq(2).addClass("active")
        }

        if (window.location.href.indexOf("about") > -1) {
            $(".footer li").eq(3).addClass("active")
        }

        if (window.location.href.indexOf("contact") > -1) {
            $(".footer li").eq(4).addClass("active")
        }
    </script>
</myfooter>
</html>