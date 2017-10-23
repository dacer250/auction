<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: mabo
  Date: 2017/7/7
  Time: 12:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title></title>
    <style>

        .center {
            min-width: 1090px;
            width: 1090px;
            margin: auto;
            margin-top: 30px;
            margin-bottom: 30px;
        }

        .center .bd .img {
            float: left;
        }

        .center .bd .img .left {
            width: 540px;
            height: 540px;
            float: left;
            background-color: #f4f0ea;
        }

        .center .bd .img .left > div {
            width: 100%;
            height: 100%;
            cursor: pointer;
        }

        .center .bd .img .right {
            padding-left: 550px;
        }

        .center .bd .img .right li {
            list-style: none;
            width: 100px;
            height: 100px;
            margin-bottom: 10px;
        }

        .center .bd .img .right li > div {
            width: 100%;
            height: 100%;
        }

        .center .bd .img .right .item:hover {
            margin: 0;
            border: 2px solid #b4a078;
        }

        .center .bd .synopsis {
            padding-left: 680px;
        }

        .center .bd .synopsis .title > div:first-child {
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .center .bd .synopsis > div:last-child {
            font-size: 16px;
            color: #666;
        }
    </style>
</head>

<body>

<div class="center">
    <div class="bd">
        <div class="img">
            <div class="left">
                <div></div>
            </div>
            <div class="right">
                <ui>
                    <a id="open_img" style="display: none;"></a>
                    <c:forEach items="${obj.img_list}" var="row" varStatus="i">
                        <c:if test="${i.index<5}">
                            <li>
                                <div class="item" data_img="${row.url}"></div>
                            </li>
                        </c:if>
                    </c:forEach>

                </ui>
            </div>
        </div>
        <div class="synopsis">
            <div class="title">
                <div>${obj.obj.name}</div>
                <!--<div>副标题</div>-->
            </div>
            <div>
                ${obj.obj.synopsis_html}
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
</div>

<myfooter>

    <script>
        $(document).ready(function () {
            $("[data_img]").each(function () {
                $(this).css("background", "url(" + $(this).attr("data_img") + ") center no-repeat");
                $(this).css("background-position", "center center");
                getImageWidth($(this).attr("data_img"), $(this), function (w, h, obj) {
                    if (w >= h) {
                        $(obj).css("background-size", "100% auto");
                    } else {
                        $(obj).css("background-size", "auto 100%");
                    }
                });
            });

            console.log($("[data_img]").eq(0).attr("data_img"));

            obj = $(".img .left div").eq(0);


            obj.unbind("click");
            var src = $("[data_img]").eq(0).attr("data_img");
            obj.click(function () {
                $("#open_img").attr("href", src.substr(0, src.length - 6));
                document.getElementById("open_img").click();
            });


            obj.css("background", "url(" + $("[data_img]").eq(0).attr("data_img") + ") center no-repeat");
            getImageWidth($("[data_img]").eq(0).attr("data_img"), obj, function (w, h, obj) {
                if (w >= h) {
                    $(obj).css("background-size", "100% auto");
                } else {
                    $(obj).css("background-size", "auto 100%");
                }
            });

            $(".right .item").each(function () {
                $(this).hover(function () {
                    obj = $(".img .left div").eq(0);

                    obj.unbind("click");
                    var src = $(this).attr("data_img");
                    obj.click(function () {
                        $("#open_img").attr("href", src.substr(0, src.length - 6));
                        document.getElementById("open_img").click();
                    });

                    obj.css("background", "url(" + $(this).attr("data_img") + ") center no-repeat");
                    getImageWidth($(this).attr("data_img"), obj, function (w, h, obj) {
                        if (w >= h) {
                            $(obj).css("background-size", "100% auto");
                        } else {
                            $(obj).css("background-size", "auto 100%");
                        }
                    });

                }, function () {

                });
            });

        });

        function getImageWidth(url, obj, callback) {
            var img = new Image();
            img.src = url;

            // 如果图片被缓存，则直接返回缓存数据
            if (img.complete) {
                callback(img.width, img.height, obj);
            } else {
                // 完全加载完毕的事件
                img.onload = function () {
                    callback(img.width, img.height, obj);
                }
            }
        }
    </script>

</myfooter>
</body>

</html>