<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="incomeSum?f['d1']=${f.d1}&f['d2']=${f.d2}"></c:set>
<c:set var="pb" value="${pageBean}"></c:set>
<html>
<head>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/template/css/validationEngine.jquery.css">
    <style>
        .table > tbody > tr > td,
        .table > tbody > tr > th,
        .table > tfoot > tr > td,
        .table > tfoot > tr > th,
        .table > thead > tr > td,
        .table > thead > tr > th {
            padding: 3px;
        }
        th {
            text-align: center;
        }

        .col-lg-1,
        .col-lg-10,
        .col-lg-11,
        .col-lg-12,
        .col-lg-2,
        .col-lg-3,
        .col-lg-4,
        .col-lg-5,
        .col-lg-6,
        .col-lg-7,
        .col-lg-8,
        .col-lg-9,
        .col-md-1,
        .col-md-10,
        .col-md-11,
        .col-md-12,
        .col-md-2,
        .col-md-3,
        .col-md-4,
        .col-md-5,
        .col-md-6,
        .col-md-7,
        .col-md-8,
        .col-md-9,
        .col-sm-1,
        .col-sm-10,
        .col-sm-11,
        .col-sm-12,
        .col-sm-2,
        .col-sm-3,
        .col-sm-4,
        .col-sm-5,
        .col-sm-6,
        .col-sm-7,
        .col-sm-8,
        .col-sm-9,
        .col-xs-1,
        .col-xs-10,
        .col-xs-11,
        .col-xs-12,
        .col-xs-2,
        .col-xs-3,
        .col-xs-4,
        .col-xs-5,
        .col-xs-6,
        .col-xs-7,
        .col-xs-8,
        .col-xs-9 {
            padding-right: 5px;
            padding-left: 5px;
        }
        p{
            display: inline;
        }
    </style>

</head>
<body>


<div class="container">

    <form id="id_form1" action="saveAlipay" method="post">
        <input id="user_phone" name="o['user_phone']" value="${userMap.user_phone}" type="hidden">
        <input name="o['id']" value="${userMap.id}" type="hidden">
        <div class="form-group">
            <label>支付宝姓名</label>
            <input name="o['user_name']" value="${userMap.user_name}"  class="form-control validate[required,maxSize[50]]">
        </div>
        <div class="form-group">
            <label>支付宝账户</label>
            <input name="o['alipay_id']" value="${userMap.alipay_id}"  class="form-control validate[required,maxSize[100]]">
        </div>
        <div class="form-group">
            <label>短信验证码</label>
            <div>
                <div class="col-xs-8">
                    <input name="o['postSMS_code']" value="${obj.postSMS_code}" class="form-control validate[required,minSize[4]]"
                           placeholder="填写短信验证码">
                </div>
                <div class="col-xs-4">
                    <button id="sms_code_btn" type="button" class="btn btn-info" onclick="postSMS()">发送验证码
                    </button>
                </div>
            </div>
            <div class="clearfix">
            </div>
        </div>

        <div class="col-xs-8">
            <button type="submit" class="btn btn-primary" style="width: 100%;">保存提现信息</button>
        </div>
        <div class="col-xs-4">
            <a href="/index.jsp" type="button" class="btn btn-default" style="width: 100%;color: #31708F;border-color: #31708F;">返回</a>
        </div>
    </form>

</div>

<myfooter>
    <script type="text/javascript" src="/template/js/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="/template/js/jquery.validationEngine-zh_CN.js"></script>
    <script type="text/javascript">
        $('#id_form1').validationEngine('attach', {
            promptPosition: 'topLeft: 100,5',
            scroll: false
        });
    </script>
</myfooter>

</body>
</html>
