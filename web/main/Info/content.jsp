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
        .img_box .title {
            font-size: 0.684rem;
        }
        .img_box .date {
            font-size: 0.38rem;
        }

        .center .detail {
            margin-top: 0.38rem;
            background-color: #FFFFFF;
            padding: 0.38rem;
        }

    </style>
</head>

<body>
<div class="header">
    <a href="javascript:history.go(-1)"><i class="icon iconfont icon-houtui2"></i></a>
    <span>${obj.title}</span>
</div>
<div class="center">
    <div class="img_box">
        <div class="show" data_img="${obj.title_img}"></div>
        <div class="title">${obj.title}</div>
        <div class="date">${obj.create_date}</div>
    </div>
    <div class="detail">
        <div>
            ${obj.synopsis_html}
        </div>
    </div>
</div>
<myfooter>
    <script type="text/javascript">
        $(document).ready(function () {
            $(".show").css("background", "url('"+$(".show").attr("data_img")+"') no-repeat");
            $(".show").css("background-size", "100% auto");
            $(".show").css("background-position", "center center");
        });
    </script>
</myfooter>
</body>

</html>