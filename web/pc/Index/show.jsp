<%--
  Created by IntelliJ IDEA.
  User: mabo
  Date: 2017/9/12
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="/template/css/swiper.min.css"/>
    <style>

        .center {
        }

        .banner {
            width: 1090px;
            margin: auto;
        }

        .banner .swiper-container {
            width: 100%;
            height: 300px;
        }

        .banner .swiper-button-prev,
        .banner .swiper-button-next {
            -webkit-background-size: 221px 5951px;
            background-size: 221px 5951px;
            background-image: url("/template/img/icon2.png");
            background-repeat: no-repeat;
            -moz-border-radius: 500px;
            -webkit-border-radius: 500px;
            border-radius: 500px;
            width: 50px;
            height: 50px;
            cursor: pointer;
            display: block;
        }

        .banner .swiper-slide img {
            width: 1090px;
            height: 300px;
        }

        .left {
            background-position: 0 -4895px;
        }

        .right {
            background-position: 0 -5025px;
        }

        /*精品推荐*/

        .boutique {
            margin-top: 25px;
            background-color: #f4f0ea;
            -webkit-box-shadow: 0 0 10px rgba(51, 51, 51, .1);
            -moz-box-shadow: 0 0 10px rgba(51, 51, 51, .1);
            box-shadow: 0 0 10px rgba(51, 51, 51, .1);
            border-top: 1px solid #eaeaea;
            border-bottom: 1px solid #eaeaea;
            min-width: 1090px;
        }

        .boutique > div {
            padding: 25px 0px 25px 0px;
            width: 1090px;
            margin: auto;
            background-color: #f4f0ea;
        }

        .boutique .hd {
            margin-bottom: 20px;
            line-height: 1;
        }

        .boutique .hd .left {
            float: left;
            padding-top: 4px;
        }

        .boutique .hd .left .name {
            float: left;
            margin-right: 20px;
            font-size: 28px;
            font-weight: 700;
        }

        .boutique .hd .left small {
            padding-top: 13px;
            float: left;
            font-size: 14px;
        }

        .boutique .hd .right {
            float: right;
            padding-top: 18px;
        }

        .boutique .hd .right a {
            font-size: 14px;
            display: inline-block;
        }

        .boutique .bd {
            overflow: hidden;
        }

        .boutique .bd .box1 {
            height: 320px;
            width: 357px;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            background-color: #F4F0EA;
            padding: 3px;
        }

        .boutique .bd .box2 {
            height: 320px;
            width: 357px;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            background-color: #F4F0EA;
            padding: 3px;
            margin-left: 9px !important;
        }

        .boutique .bd .box3 {
            height: 155px;
            width: 357px;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            background-color: #F4F0EA;
            padding: 3px;
            margin-left: 9px !important;
        }

        .boutique .bd .box4 {
            height: 155px;
            width: 357px;
            float: left;
            overflow: hidden;
            position: relative;
            text-align: center;
            background-color: #F4F0EA;
            padding: 3px;
            margin-left: 9px !important;
            margin-top: 10px;
        }

        .boutique .bd .showImg {
            width: 100%;
            height: 100%;
            background: url("http://www.bjwanlonghe.com/uploadFiles/20170817/564e3836beb448e58bac3baff992716e.jpg.x.jpg") center center / 100% no-repeat;
        }

        .ranking {
            margin-top: 26px;
            height: 510px;
            padding-top: 20px;
        }

        .ranking .swiper-container {
            width: 100%;
            height: 364px;
        }

        .ranking .swiper-wrapper {
        }

        .ranking .swiper-button-prev,
        .ranking .swiper-button-next {
            -webkit-background-size: 221px 5951px;
            background-size: 221px 5951px;
            background-image: url("/template/img/icon2.png");
            background-repeat: no-repeat;
            -moz-border-radius: 500px;
            -webkit-border-radius: 500px;
            background-color: #D0C4AF;
            border-radius: 500px;
            width: 50px;
            height: 50px;
            cursor: pointer;
            display: block;
        }

        .ranking .r_row {
            position: relative;
            width: 1090px;
            margin: auto;
        }

        .ranking .hd {
            margin-bottom: 20px;
            line-height: 1;
        }

        .ranking .r_row .hd .left {
            float: left;
            padding-top: 4px;
        }

        .ranking .r_row .hd .left .name {
            float: left;
            margin-right: 20px;
            font-size: 28px;
            font-weight: 700;
        }

        .ranking .r_row .hd .left small {
            padding-top: 13px;
            float: left;
            font-size: 14px;
        }

        .ranking .r_row .hd .right {
            float: right;
            padding-top: 18px;
        }

        .ranking .r_row .hd .right a {
            font-size: 14px;
            display: inline-block;
        }

        .ranking .r_row .bd .swiperCol {
            width: 265px !important;
            height: 361px !important;
            outline: 0;
            text-align: center;
            font-size: 13px;
            position: relative;
        }

        .ranking .r_row .bd ._hover {
            -moz-box-shadow: 1px 1px 8px rgba(0, 0, 0, .2);
            -webkit-box-shadow: 1px 1px 8px rgba(0, 0, 0, .2);
            box-shadow: 1px 1px 8px rgba(0, 0, 0, .2);
            background-color: #f4f0ea;
        }

        .ranking .r_row .bd .swiperCol .img {
            width: 265px;
            height: 265px;
            overflow: hidden;
        }

        .ranking .r_row .bd .swiperCol .title {
            width: 180px;
            margin: auto;
        }

        .ranking .r_row .bd .swiperCol .title > div:first-child {
            padding: 5px 10px;
            margin-bottom: 4px;
            text-align: center;
            font-size: 13px;
            font-weight: bold;
        }

        .ranking .r_row .bd .swiperCol .title > div:last-child {
            font-size: 12px;
            text-align: center;
            color: #999999;
        }

    </style>
</head>
<body>

<div class="center">
    <div class="banner">
        <div>
            <div id="swiper-container1" class="swiper-container">
                <div class="swiper-wrapper">
                    <div class="swiper-slide">
                        <img src="/template/img/lb_test.jpg">
                    </div>
                    <div class="swiper-slide">
                        <img src="http://img2.artron.net/auction_manager/auction_zone_7/JG0137/2013122714570166053.jpg">
                    </div>

                </div>

                <!-- 如果需要导航按钮 -->
                <div class="swiper-button-prev left"></div>
                <div class="swiper-button-next right"></div>

            </div>

            <div class="clearfix"></div>
        </div>
    </div>
    <div class="boutique">
        <div class="c_row">
            <div class="hd">
                <div class="left">
                    <div class="name">精品推荐</div>
                    <%--<small class="frontName">副slogen</small>--%>
                </div>
                <div class="right">
                    <%--<a class="moreItems"
                       data-yxstat="{&quot;event_name&quot;:&quot;click_index_manu_more&quot;,&quot;event_action&quot;:&quot;click&quot;,&quot;page_name&quot;:&quot;index&quot;}"
                       href="/manufacturer/list?_stat_area=manufacturer_link&amp;_stat_referer=index" target="_blank">
                        更多展品 &gt;
                    </a>--%>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="bd">
                <c:if test="${fn:length(obj.boutique) > 0}">
                    <div class="box1">
                        <a href="/a/pc/Classify/getContent?id=${obj.boutique.get(0).get("goods_id")}">
                            <div class="showImg" data_img="${obj.boutique.get(0).get("url")}.x.jpg"
                                 data_id="${obj.boutique.get(0).get("goods_id")}"></div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${fn:length(obj.boutique) > 1}">
                    <div class="box2">
                        <a href="/a/pc/Classify/getContent?id=${obj.boutique.get(1).get("goods_id")}">
                            <div class="showImg" data_img="${obj.boutique.get(1).get("url")}.x.jpg"
                                 data_id="${obj.boutique.get(1).get("goods_id")}"></div>
                        </a>
                    </div>
                </c:if>
                <c:if test="${fn:length(obj.boutique) > 2}">
                    <div class="box3">
                        <a href="/a/pc/Classify/getContent?id=${obj.boutique.get(2).get("goods_id")}">
                            <div class="showImg" data_img="${obj.boutique.get(2).get("url")}.x.jpg"
                                 data_id="${obj.boutique.get(2).get("goods_id")}"></div>
                        </a>
                    </div>
                </c:if>

                <c:if test="${fn:length(obj.boutique) > 3}">
                    <div class="box4">
                        <a href="/a/pc/Classify/getContent?id=${obj.boutique.get(3).get("goods_id")}">
                            <div class="showImg" data_img="${obj.boutique.get(3).get("url")}.x.jpg"
                                 data_id="${obj.boutique.get(3).get("goods_id")}"></div>
                        </a>
                    </div>
                </c:if>

            </div>
        </div>
    </div>
    <div class="ranking">
        <div class="r_row">
            <div class="hd">
                <div class="left">
                    <div class="name">人气推荐</div>
                    <%--<small class="frontName">副slogen</small>--%>
                </div>
                <div class="right">
                    <%--<a class="moreItems"
                       data-yxstat="{&quot;event_name&quot;:&quot;click_index_manu_more&quot;,&quot;event_action&quot;:&quot;click&quot;,&quot;page_name&quot;:&quot;index&quot;}"
                       href="/manufacturer/list?_stat_area=manufacturer_link&amp;_stat_referer=index" target="_blank">
                        更多展品 &gt;
                    </a>--%>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="bd">
                <div id="swiper-container2" class="swiper-container">
                    <div class="swiper-wrapper">

                        <c:forEach items="${obj.ranking}" var="row" varStatus="i">
                            <a href="/a/pc/Classify/getContent?id=${row.id}">
                            <div class="swiper-slide">
                                <div class="swiperCol">
                                    <div class="img"
                                         data_img="${row.url}.x.jpg">

                                    </div>
                                    <div class="title">
                                        <div>
                                            <a>${row.name}</a>
                                        </div>
                                        <div class="clearfix"></div>
                                        <div>${row["short"]}</div>
                                    </div>
                                </div>
                            </div>
                            </a>
                        </c:forEach>


                    </div>
                    <!-- 如果需要导航按钮 -->
                    <div class="swiper-button-prev left"></div>
                    <div class="swiper-button-next right"></div>
                </div>
            </div>
        </div>
    </div>
</div>

</body>
<myfooter>
    <script type="text/javascript" src="/template/js/swiper.jquery.min.js"></script>
    <script>
        var mySwiper = new Swiper('#swiper-container1', {
            autoplay: 5000, //可选选项，自动滑动
            loop: true,

            // 如果需要前进后退按钮
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev',

        })

        var mySwiper2 = new Swiper('#swiper-container2', {
            pagination: '.swiper-pagination',
            slidesPerView: 4,
            loopedSlides: 8,
            paginationClickable: true,
            spaceBetween: 30,
            loop: true,
            nextButton: '.swiper-button-next',
            prevButton: '.swiper-button-prev'
        });

        $(document).ready(function () {
            $(".swiperCol").hover(function () {
                $(this).addClass("_hover");
                //$(this).css("background-color", "yellow");
            }, function () {
                $(this).removeClass("_hover");
                //$(this).css("background-color", "pink");
            });

            $("[data_img]").each(function () {
                $(this).css("background", "url(" + $(this).attr("data_img") + ") center no-repeat");
                $(this).css("background-size", "auto 100%");
                $(this).css("background-position", "center center");
            });

            $(".boutique [data_img]").each(function () {
                $(this).css("background-size", "100% auto");
            });


        });
    </script>

</myfooter>
</html>
