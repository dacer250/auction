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
    <style>
        .header {

            /*32px*/
            font-size: 1.216rem;
            text-align: center;
            height: 2rem;
            line-height: 2rem;
        }

        .center {
            padding-top: 2rem;
        }

        .list {
            width: 100%;
        }

        .list img {
            width: 100%;
            height: 100%;
        }

        .list .row {
            width: 100%;
            height: 13.3rem;
            margin-bottom: 1rem;
        }

        .list .row > div:first-child {
            height: 11.4rem;
        }

        .list .row > div:last-child {
            padding-left: 0.76rem;
            padding-right: 0.76rem;
        }

        .list .row > div:last-child > p:first-child {
            font-size: 0.912rem;
            display: block;
            height: 1.2rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .list .row > div:last-child > p:last-child {
            color: #666666;
        }
    </style>
</head>
<body>
<div class="header">
    <span>资讯</span>
</div>


<div class="center">
    <div class="list">
        <%--<div class="row">
            <div>
                <img src="http://p0.ifengimg.com/pmop/2017/0624/02DFEF57FE9BA52FB355B6B362620D5D90A6C278_size71_w540_h372.jpeg">
            </div>
            <div>
                <p>标题标题</p>
                <p>发布时间：2017-01-01</p>
            </div>
        </div>--%>

    </div>
</div>
<myfooter>
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
                        for (i = 0; i < result.length; i++) {
                            h = '<div class="row">' +
                                '<div>' +
                                '<img src="' + result[0].title_img + '">' +
                                '</div>' +
                                '<div>' +
                                '<p>' + result[0].title + '</p>' +
                                '<p>' + result[0].create_date + '</p>' +
                                '</div>' +
                                '</div>';
                            html = $(".list").html() + h;
                            $(".list").html(html);
                        }
                    }
                });
            }
        });
    </script>
</myfooter>
</body>
</html>
