<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/5/7
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<html>
<head>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/template/css/validationEngine.jquery.css">
    <style>
        .pay_menu > div {
            margin-top: 10px;
        }

        .pay_menu button, input {
            width: 100%;
            height: 50px;
        }
    </style>

</head>
<body>


<div class="container">


    <div class="page-header">
        <h1>房卡充值</h1>
    </div>
    <form id="id_form1" action="addBill" method="post">
        <div class="pay_menu">
            <div>
                <div class="col-xs-3">
                    <button type="button" class="btn btn-default" v="50">50张</button>
                </div>
                <div class="col-xs-3">
                    <button type="button" class="btn btn-default" v="100">100张</button>
                </div>
                <div class="col-xs-3">
                    <button type="button" class="btn btn-default" v="300">300张</button>
                </div>
                <div class="col-xs-3">
                    <button type="button" class="btn btn-default" v="500">500张</button>
                </div>
            </div>
            <div class="col-xs-12">
                <input id="virtual_enter" class="form-control" placeholder="选择上方充值房卡数，或在此输入10至500自定义数量"/>
            </div>
            <div class="col-xs-12">
                <input type="hidden" name="o['virtual']" id="virtual" value="50">
                <button id="form_submit" type="submit" class="btn btn-success">微信支付</button>
            </div>
        </div>
    </form>


</div>

<myfooter>

    <script type="text/javascript">
        $(document).ready(function(){
            $(".pay_menu .col-xs-3 button").each(function () {
                $(this).click(function () {
                    $("#virtual").val($(this).attr("v"));
                });
            });
            $("#virtual_enter").keyup(function () {
                $("#virtual").val($(this).val());
            });
            $("#virtual_enter").focus(function () {
                $("#virtual").val($(this).val());
            });

        })
    </script>
</myfooter>

</body>
</html>
