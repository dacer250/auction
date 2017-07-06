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
        html,
        body {
            height: 100%;
        }

        .center .left {
            height: 100%;
            width: 4.56rem;
            padding-bottom: 2.3rem;
            overflow: auto;
            float: left;
            border-right: 1px solid #f0f0f0;
        }

        .center .left > div {
            height: 100%;
            font-size: 0.836rem;
            height: 2rem;
            line-height: 2rem;
            text-align: center;
        }

        .center .left > div span {
            position: absolute;
            top: 0px;
        }

        .center .left .active {
            font-size: 1.064rem;
            color: #a2313e;
            position: relative;
        }

        .center .left .active > span {
            position: absolute;
            top: 0px;
            display: block;
            border-left: 0.076rem solid #a2313e;
            margin-left: 0.38rem;
        }

        .center .right {
            padding-left: 0.38rem;
            padding-top: 1.2rem;
            padding-right: 0.38rem;
            padding-bottom: 0.38rem;
            overflow: auto;
            height: 100%;
        }

        .center .right .title {
            text-align: center;
        }

        .center .right .row {
            margin-top: 0.684rem;
            height: 4.5rem;
        }

        .center .right .row .col {
            width: 50%;
            padding: 0.114rem;
            float: left;
        }

        .center .right .row .col .img {
            position: relative;
            width: 100%;
            height: 3.8rem;
            background: url("https://modao.cc/uploads3/images/1018/10185618/raw_1497095559.png") no-repeat;
            background-size: 100% auto;
            background-position: center center;
        }

        .center .right .row .col p {
            display: block;
            width: 100%;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
            font-size: 0.684rem;
        }
    </style>
</head>
<body>
<div class="center">
    <div class="left">
        <div>
            <c:forEach items="${obj.classinfoList}" var="row" varStatus="i">
                <a href="show?id=${row.id}">
                    <div id="${row.id}"><span>&nbsp;</span>${row.class_name}</div>
                </a>
            </c:forEach>
        </div>
    </div>
    <div class="right">
        <div class="title"><span>——</span><span></span>分类<span>——</span></div>
        <div class="list">
            <div class="row">
                <div class="col">
                    <div class="img"></div>
                    <p>字画字画字画字画字画</p>
                </div>
            </div>
        </div>
    </div>
</div>
<myfooter>
    <script type="text/javascript">
        var cid = "${id}"
        if (cid == "") {
            $(".left div").find("div").eq(0).addClass("active")
            $(".right .title").find("span").eq(1).text($(".left div").find("div").eq(0).text());
        } else {
            $(".left div").find("#" + cid).addClass("active");
            $(".right .title").find("span").eq(1).text($(".left div").find("#" + cid).text());
        }
    </script>
    <script type="text/javascript">
        $(document).ready(function () {
            var num = 0; //计数器初始化为0
            var maxnum = 100; //设置一共要加载几次
            checkload();
            $(window).scroll(function () {
                checkload();
            });

            //建立加载判断函数
            function checkload() {
                var srollPos = $(window).scrollTop(); //滚动条距离顶部的高度
                var windowHeight = $(window).height(); //窗口的高度
                var dbHiht = $("body").height(); //整个页面文件的高度

                /*s = setTimeout(function () {
                 if ((windowHeight + srollPos) >= (dbHiht) && num != maxnum) {
                 LoadList();
                 num++; //计数器+1
                 }
                 }, 500);*/
                if ((windowHeight + srollPos) >= (dbHiht) && num != maxnum) {
                    LoadList();
                    num++; //计数器+1
                }
            }

            //创建ajax加载函数，并设置变量C，用于输入调用的页面频道,请根据实际情况判断使用，非必要。
            function LoadList() {
                $.ajax({
                    url: "list_ajax?o['pn']=" + num,
                    dataType: "json",
                    success: function (result) {
                        console.log(result)
                        row = $(".list").find(".row");

                        for(i=0;i<result.length;i++){
                            data = result.get(i)
                            html =
                                '<div class="col">' +
                                '<div class="img" style="background: url(\''+data.url+'\') no-repeat;background-size: 100% auto;background-position: center center;"></div>' +
                                '<p>'+data.name+'</p>' +
                                '</div>';
                            row.html(row.html() + html);
                        }


                    }
                });
            }
        });
    </script>
</myfooter>
</body>
</html>
