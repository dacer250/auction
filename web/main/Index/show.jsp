<%--
  Created by IntelliJ IDEA.
  User: MHOME
  Date: 2017/7/2
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="/template/css/swiper.min.css"/>
    <style>
        .header {
            border-bottom: none;
        }

        .menu {
            position: fixed;
            width: 100%;
            top: 2rem;
            z-index: 9999;
            background-color: #F8F8F8;
            border-bottom: 1px solid #f0f0f0;
            height: 1rem;
            padding-left: 0.38rem;
            padding-right: 0.38rem;
        }

        .menu > div {
            clear: both;
            overflow-x: auto;
            overflow-y: hidden;
            white-space: nowrap;
            scroll-snap-points-x: repeat(100%);
            scroll-snap-type: mandatory;
        }

        .menu span {
            padding-left: 0.19rem;
            padding-right: 0.19rem;
            display: inline-block;
        }

        .menu .active span {
            padding-bottom: 0.15rem;
            border-bottom: 0.076rem solid #a2313e;
            color: #a2313e;
        }

        .center {
            padding-top: 3rem;
        }

        /* 轮播 */

        .rotation {
            background-color: #FFFFFF;
            width: 100%;
            height: 11.3rem;
        }

        .swiper-slide {
            height: 11.3rem;
            background-color: #FFFFFF;
            padding: 0.38rem;
        }

        .swiper-slide > div {
            height: 100%;
            background-size: 100% auto;
            background-position: center center;
        }

        /* 精品 */

        .boutique {
            margin-top: 0.38rem;
            background-color: #FFFFFF;
            font-size: 0.684rem;
            padding: 0.38rem;
        }

        .boutique > div:first-child {
            text-align: center;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .boutique img {
            width: auto;
            height: auto;
            max-width: 100%;
            max-height: 100%;
        }

        .boutique .img_box1 {
            width: 50%;
            height: 11.4rem;
            float: left;
            padding: 0.114rem;
            border-right: #f4f4f4 1px solid;
        }

        .boutique .img_box1 {
            background: url("https://modao.cc/uploads3/images/1018/10185792/raw_1497097383.png") no-repeat;
            background-size: 95% auto;
            background-position: center center;
        }

        .boutique .img_box1 > span {
            display: table-cell;
            vertical-align: middle;
        }

        .boutique .img_box2 {
            width: 50%;
            height: 11.4rem;
            float: left;
        }

        .boutique .img_box2 > div {
            width: 100%;
            height: 50%;
            background: url("https://modao.cc/uploads3/images/1018/10185792/raw_1497097383.png") no-repeat;
            background-size: 85% auto;
            background-position: center center;
        }

        .boutique .img_box2 > div:first-child {
            border-bottom: #f4f4f4 1px solid;
        }

        .boutique .img_box2 > div > span {
            display: table-cell;
            vertical-align: middle;
        }

        /*人气推荐*/

        .ranking {
            margin-top: 0.38rem;
            padding-bottom: 0.38rem;
            background-color: #FFFFFF;
            font-size: 0.684rem;
        }

        .ranking > div:first-child {
            text-align: center;
            padding-top: 10px;
            padding-bottom: 10px;
        }

        .ranking .row {
            margin: 0.38rem;
            border: #f4f4f4 1px solid;
            height: 5.7rem;
        }

        .ranking .row .left {
            float: left;
            width: 45%;
            height: 100%;
        }

        .ranking .row .left > div {
            height: 4.9rem;
            background: url("https://modao.cc/uploads3/images/1016/10168511/raw_1496997638.jpeg") no-repeat;
            background-size: 100% auto;
            background-position: center center;
            margin: 0.38rem;
        }

        .ranking .row .right {
            float: right;
            width: 55%;
            padding: 0.38rem;
        }

        .ranking .row .right > p:first-child {
            font-size: 0.912rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .ranking .row .right > p:last-child {
            color: #666666;
            display: -webkit-box;
            -webkit-box-orient: vertical;
            -webkit-line-clamp: 3;
            overflow: hidden;
        }

        .ranking .row img {
            width: 100%;
            padding: 0.38rem;
        }
    </style>
</head>
<body>
<div class="center">

    <div class="menu">
        <div>
            <%--<a href="#" class="active"><span>推荐推荐</span></a>--%>
            <c:forEach items="${obj.classinfo}" var="row" varStatus="i">
                <a href="/a/main/Classify/show?id=${row.id}"><span>${row.class_name}</span></a>
            </c:forEach>
        </div>
    </div>
    <div class="rotation">
        <div class="swiper-container">
            <div class="swiper-wrapper">
                <c:forEach items="${obj.swiper}" var="row" varStatus="i">
                    <div class="swiper-slide">
                        <div data_img="${row.url}.x.jpg" data_id="${row.goods_id}"></div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <div class="boutique">
        <div>精品推荐</div>
        <div>
            <div>
                <c:if test="${fn:length(obj.boutique) > 0}">
                    <div class="img_box1" data_img="${obj.boutique.get(0).get("url")}.x.jpg"
                         data_id="${obj.boutique.get(0).get("goods_id")}"></div>
                </c:if>
                <div class="img_box2">
                    <c:if test="${fn:length(obj.boutique) > 1}">
                        <div data_img="${obj.boutique.get(1).get("url")}.x.jpg"
                             data_id="${obj.boutique.get(1).get("goods_id")}"></div>
                    </c:if>
                    <c:if test="${fn:length(obj.boutique) > 2}">
                        <div data_img="${obj.boutique.get(2).get("url")}.x.jpg"
                             data_id="${obj.boutique.get(2).get("goods_id")}"></div>
                    </c:if>
                </div>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="ranking">
        <div>人气推荐</div>
        <div class="list">
            <c:forEach items="${obj.ranking}" var="row" varStatus="i">
                <a href="/a/main/Classify/getContent?id=${row.id}">
                    <div class="row">
                        <div class="left">
                            <div data_img="${row.url}.x.jpg"></div>
                        </div>
                        <div class="right">
                            <p>${row.name}</p>
                            <p>${row["short"]}</p>
                        </div>
                        <div class="clear"></div>
                    </div>
                </a>
            </c:forEach>
        </div>
        <div class="clear"></div>
    </div>
</div>
<a id="go_to"></a>
<myfooter>
    <script type="text/javascript" src="/template/js/swiper.jquery.min.js"></script>
    <script>
        var mySwiper = new Swiper('.swiper-container', {
            autoplay: 5000, //可选选项，自动滑动
            loop: true
        });
        $(document).ready(function () {
            $("[data_img]").each(function () {
                $(this).css("background", "url(" + $(this).attr("data_img") + ") center no-repeat");
                $(this).css("background-size", "98% auto");
                $(this).css("background-position", "center center");
            });
            $(".menu a").eq(0).addClass("active");

            $(".swiper-slide [data_img]").each(function () {
                $(this).click(function () {
                    $("#go_to").attr("href","/a/main/Classify/getContent?id=" + $(this).attr("data_id"));
                    document.getElementById("go_to").click();
                });
            });

            $(".boutique [data_img]").each(function () {
                $(this).click(function () {
                    $("#go_to").attr("href","/a/main/Classify/getContent?id=" + $(this).attr("data_id"));
                    document.getElementById("go_to").click();
                });
            });

            $(".img_box1").css("background-size", "auto 100%");

        });
    </script>
</myfooter>
</body>
</html>
