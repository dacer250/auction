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

        .center .img_box {
            padding-left: 0.19rem;
            padding-right: 0.19rem;
            background-color: #FFFFFF;
            padding: 0.38rem;
        }

        .center .img_box .show {
            width: 100%;
            height: 11.4rem;
            background: url("https://modao.cc/uploads3/images/1018/10185618/raw_1497095559.png") no-repeat;
            background-size: 100% auto;
            background-position: center center;
        }

        .center .img_box .list > div {
            padding-top: 0.5rem;
            clear: both;
            overflow-x: auto;
            overflow-y: hidden;
            white-space: nowrap;
            scroll-snap-points-x: repeat(100%);
            scroll-snap-type: mandatory;
        }

        .center .img_box ul {
            float: left;
            overflow-x: scroll;
            overflow-y: hidden;
        }

        .center .img_box li {
            list-style: none;
            display: inline-block;
        }

        .center .img_box li div {
            width: 3.8rem;
            height: 3.8rem;
            background-color: #ECECEC;
            margin: 0.19rem;
            background: url("https://modao.cc/uploads3/images/1018/10185618/raw_1497095559.png") no-repeat;
            background-size: 100% auto;
            background-position: center center;
        }

        .center .detail {
            margin-top: 0.38rem;
            background-color: #FFFFFF;
            padding: 0.38rem;
        }

        .center .detail > div:first-child {
            text-align: center;
            padding-top: 10px;
            padding-bottom: 10px;
            font-size: 0.684rem;
        }
    </style>
</head>

<body>
<div class="header">
    <a href="javascript:history.go(-1)"><i class="icon iconfont icon-houtui2"></i></a>
    <span>${obj.obj.name}</span>
</div>
<div class="center">
    <div class="img_box">
        <div class="show"></div>
        <div class="list">
            <div>
                <ul>
                    <a id="open_img" style="display: none;" ></a>
                    <c:forEach items="${obj.img_list}" var="row" varStatus="i">
                        <li>
                            <div data_img="${row.url}"></div>
                        </li>
                    </c:forEach>
                </ul>
            </div>
        </div>
        <div class="clear"></div>
    </div>
    <div class="detail">
        <div>拍品详情</div>
        <div>
            ${obj.obj.synopsis_html}
        </div>
    </div>
</div>
<myfooter>
    <script type="text/javascript">
        $(document).ready(function () {
            var src = $("li").eq(0).find("div").attr("data_img");
            $(".show").css("background", "url('" + src + "') no-repeat");
            getImageWidth(src,$(".show"),function (w,h,obj) {
                if (w >= h) {
                    $(obj).css("background-size", "100% auto");
                } else {
                    $(obj).css("background-size", "auto 100%");
                }
            });
            $(".show").click(function () {
                $("#open_img").attr("href", src);
                document.getElementById("open_img").click();
            });



            $(".show").css("background-position", "center center");

            $("li").each(function () {

                $(this).find("div").eq(0).css("background", "url('" + $(this).find("div").eq(0).attr("data_img") + "') no-repeat");
                getImageWidth($(this).find("div").eq(0).attr("data_img"),this, function (w, h,obj) {
                    if(w>=h) {
                        $(obj).find("div").eq(0).css("background-size", "100% auto");
                    }else{
                        $(obj).find("div").eq(0).css("background-size", "auto 100%");
                    }
                });
                $(this).find("div").eq(0).css("background-position", "center center");

                $(this).find("div").eq(0).click(function () {

                    $(".show").css("background", "url('" + $(this).attr("data_img") + "') no-repeat");
                    getImageWidth($(this).attr("data_img"), $(".show"), function (w, h, obj) {
                        if (w >= h) {
                            $(obj).css("background-size", "100% auto");
                        } else {
                            $(obj).css("background-size", "auto 100%");
                        }
                    });
                    $(".show").css("background-position", "center center");

                    $(".show").unbind("click");
                    var src = $(this).attr("data_img");
                    $(".show").click(function () {
                        $("#open_img").attr("href", src);
                        document.getElementById("open_img").click();
                    });
                });
            });
        });

        function getImageWidth(url,obj, callback) {
            var img = new Image();
            img.src = url;

            // 如果图片被缓存，则直接返回缓存数据
            if (img.complete) {
                callback(img.width, img.height,obj);
            } else {
                // 完全加载完毕的事件
                img.onload = function () {
                    callback(img.width, img.height,obj);
                }
            }
        }
    </script>
</myfooter>
</body>

</html>