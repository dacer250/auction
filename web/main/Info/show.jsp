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

        .list .row>div:first-child {
            height: 11.4rem;
        }

        .list .row>div:last-child {
            padding-left: 0.76rem;
            padding-right: 0.76rem;
        }

        .list .row>div:last-child>p:first-child {
            font-size: 0.912rem;
            display: block;
            height: 1.2rem;
            overflow: hidden;
            text-overflow: ellipsis;
            white-space: nowrap;
        }

        .list .row>div:last-child>p:last-child {
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
        <div class="row">
            <div>
                <img src="http://p0.ifengimg.com/pmop/2017/0624/02DFEF57FE9BA52FB355B6B362620D5D90A6C278_size71_w540_h372.jpeg">
            </div>
            <div>
                <p>标题标题</p>
                <p>发布时间：2017-01-01</p>
            </div>
        </div>
        <div class="row">
            <div>
                <img src="http://p0.ifengimg.com/pmop/2017/0624/02DFEF57FE9BA52FB355B6B362620D5D90A6C278_size71_w540_h372.jpeg">
            </div>
            <div>
                <p>标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题</p>
                <p>发布时间：2017-01-01</p>
            </div>
        </div>
        <div class="row">
            <div>
                <img src="http://p0.ifengimg.com/pmop/2017/0624/02DFEF57FE9BA52FB355B6B362620D5D90A6C278_size71_w540_h372.jpeg">
            </div>
            <div>
                <p>标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题标题</p>
                <p>发布时间：2017-01-01</p>
            </div>
        </div>
    </div>
</div>

<myfooter>
  
</myfooter>
</body>
</html>
