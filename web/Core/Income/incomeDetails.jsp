<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="incomeDetails?1=1?f['income_date']=${f.income_date}"></c:set>
<c:set var="pb" value="${pageBean}"></c:set>
<html>
<head>
    <link rel="stylesheet" href="http://apps.bdimg.com/libs/bootstrap/3.3.4/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="/template/css/bootstrap-datetimepicker.min.css"/>
    <style>
        .table > tbody > tr > td,
        .table > tbody > tr > th,
        .table > tfoot > tr > td,
        .table > tfoot > tr > th,
        .table > thead > tr > td,
        .table > thead > tr > th {
            padding: 3px;
        }
        th,tr {
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
    </style>

</head>
<body>


<div class="container">
    <div class="pull-left">${f.income_date} 收入明细</div>
    <div class="pull-right"><button onclick="history.go(-1);" type="button" class="btn btn-primary btn-xs">返回</button></div>
<p>&numsp;</p>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th colspan="3">用户</th>
            <th>充值</th>
            <th>关系</th>
            <th>比例</th>
            <th>收入</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
            <tr id="${row.u_g_id}">
                <td><%--${row.wx_avatar}--%><img src="${row.wx_avatar}" width="20" height="20"></td>
                <td>${row.wx_nick}</td>
                <td>${row.u_g_id}</td>
                <td>${row.recharge}</td>
                <td>类型</td>
                <td>比例</td>
                <td>&numsp;</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%@include file="/include/page.jsp" %>

</div>

<myfooter>
    <script type="text/javascript">
        $(document).ready(function () {
            var str = ['',  '一级', '二级','三级'];
            var scale = [0.1, 0.4, 0.15, 0.05]
            var obj = eval('(${obj.json})');
            Object.keys(obj).forEach(function (value, index, array) {
                if ($("#" + value + " td").length > 0) {
                    $("#" + value + " td").eq(4).text(str[obj[value]]);
                    $("#" + value + " td").eq(5).text(scale[obj[value]]*100+"%");
                    if(!isNaN(parseInt($("#" + value + " td").eq(3).text()) * scale[obj[value]])){
                        $("#" + value + " td").eq(6).text(parseInt($("#" + value + " td").eq(3).text()) * scale[obj[value]]);
                    }
                }
            })
        })
    </script>
</myfooter>

</body>
</html>
