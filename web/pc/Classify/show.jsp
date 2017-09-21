ds<%--
  Created by IntelliJ IDEA.
  User: MHOME
  Date: 2017/7/2
  Time: 21:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<!DOCTYPE html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <link rel="stylesheet" href="/template/css/swiper.min.css"/>
    <style>
        .center {
            min-width: 1090px;
            width: 1090px;
            margin: auto;
        }

        .center .hd .title {
            text-align: center;
            font-size: 24px;
            font-weight: bold;
            padding-top: 50px;
            padding-bottom: 20px;
        }

        .center .bd li {
            margin: 0px;
            padding: 0px;
            list-style: none;
            float: left;
            width: 25%;
        }

        .center .bd li .col {
            margin-bottom: 30px;
        }

        .center .bd li .col .img {
            width: 240px;
            height: 240px;
        }

        .center .bd li .col .title {
            margin-top: 10px;
            text-align: center;
            height: 50px;
        }

        .center .bd li .col .title > div:first-child {
            font-size: 13px;
            font-weight: bold;
            padding-bottom: 10px;
            border-bottom: 1px solid #f5f5f5;
            height: 36px;
            width: 80%;
            margin: auto;
        }

        .center .bd li .col .title > div:last-child {
            width: 70%;
            margin: auto;
            margin-top: 10px;
            color: #999;
        }
    </style>
</head>
<body>

<div class="center">

    <div class="hd">
        <div class="title">
            玉器
        </div>
    </div>

    <div class="bd">
        <ul>
        </ul>
        <div class="clearfix"></div>
    </div>

</div>

<myfooter>
    <%--<script type="text/javascript">
        var cid = "${id}"
        if (cid == "") {
            //$(".left div").find("div").eq(0).addClass("active")
            $(".right .title").find("span").eq(1).text("搜索结果");
        } else {
            $(".left div").find("#" + cid).addClass("active");
            $(".right .title").find("span").eq(1).text($(".left div").find("#" + cid).text());
        }
    </script>--%>
    <script type="text/javascript">

        $(document).ready(function () {
            $("#classify_form input").val("${obj.f}");

            var num = 0; //计数器初始化为0
            var maxnum = 100; //设置一共要加载几次
            finished = true;
            checkload();
            $(window).scroll(function () {
                checkload();
            });

            //建立加载判断函数
            function checkload() {
                var srollPos = $(window).scrollTop() + 150; //滚动条距离顶部的高度
                var windowHeight = $(window).height(); //窗口的高度
                var dbHiht = $("body").height(); //整个页面文件的高度
                if (finished && (windowHeight + srollPos) >= (dbHiht) && num != maxnum) {
                    finished = false;
                    LoadList();
                    num++; //计数器+1
                }
            }

            //创建ajax加载函数，并设置变量C，用于输入调用的页面频道,请根据实际情况判断使用，非必要。
            function LoadList() {
                $.ajax({
                    url: "list_ajax?id=${id}&o['pn']=" + num + "&o['f']=${obj.f}",
                    dataType: "json",
                    success: function (result) {
                        for (i = 0; i < result.length; i++) {
                            data = result[i];
                            html =
                                '<li>\n' +
                                '<a href="getContent?id=' + data.id + '">' +
                                '                <div class="col">\n' +
                                '                    <div class="img" data_img="' + data.url + '.x.jpg"></div>\n' +
                                '                    <div class="title">\n' +
                                '                        <div>\n' +
                                '                            <a>' + data.name + '</a>\n' +
                                '                        </div>\n' +
                                '                        <div>' + data.short + '</div>\n' +
                                '                    </div>\n' +
                                '                </div></a>\n' +
                                '            </li>';
                            html = $(".bd ul").html() + html;
                            $(".bd ul").html(html);
                        }
                        finished = true;

                        $("[data_img]").each(function () {
                            $(this).css("background", "url(" + $(this).attr("data_img") + ") center no-repeat");
                            $(this).css("background-size", "auto 100%");
                            $(this).css("background-position", "center center");
                        });
                    }
                });
            }
        });


    </script>
</myfooter>
</body>
</html>
