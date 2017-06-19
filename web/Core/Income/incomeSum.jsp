<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="incomeSum?f['d1']=${f.d1}&f['d2']=${f.d2}"></c:set>
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
    <form action="incomeSum" method="post" class="form-inline">
        <div class="form-group col-xs-5">
            <div class="col-xs-4">
                <label>开始<br>时间</label>
            </div>
            <div class="col-xs-8">
                <input name="f['d1']" value="${f.d1}" class="form-control data-input" style="font-size: 9px">
            </div>
        </div>
        <div class="form-group col-xs-5">
            <div class="col-xs-4">
                <label>结束<br>时间</label>
            </div>
            <div class="col-xs-8">
                <input name="f['d2']" value="${f.d2}" class="form-control data-input" style="font-size: 9px">
            </div>
        </div>
        <button type="submit" class="btn btn-default col-xs-2">查询</button>
    </form>

    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>日期</th>
            <th>收入</th>
            <th>操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
            <tr>
                <td><fmt:formatDate value="${row.income_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td>${row.brokerage}</td>
                <td>
                    <a href="incomeDetails?f['income_date']=${row.income_date}">明细</a>
                    <c:choose>
                        <c:when test="${row.extract_status ==2}">
                            <a href="/a/Core/Extract/extractApplication?o['id']=${row.id}">申请提现</a>
                        </c:when>
                        <c:when test="${row.extract_status ==4}">
                            <p>提现申请成功</p>
                        </c:when>
                        <c:when test="${row.extract_status ==8}">
                            <p>审核通过，待结算</p>
                        </c:when>
                        <c:when test="${row.extract_status ==16}">
                            <p class="text-danger">审核失败</p>
                        </c:when>
                        <c:when test="${row.extract_status ==32}">
                            <p class="text-success">已结算</p>
                        </c:when>
                        <c:when test="${row.extract_status ==32}">
                            <p class="text-danger">转账失败</p>
                        </c:when>
                    </c:choose>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%@include file="/include/page.jsp" %>

</div>

<myfooter>
    <script type="text/javascript" src="/template/js/bootstrap-datetimepicker.min.js"></script>
    <script type="text/javascript" src="/template/js/locales/bootstrap-datetimepicker.zh-CN.js"></script>

    <script type="text/javascript">
        $('.data-input').datetimepicker({
            format: 'yyyy-mm-dd',
            language: 'zh-CN',
            weekStart: 1,
            todayBtn: 1,
            autoclose: 1,
            todayHighlight: 1,
            startView: 2,
            minView: 2,
            forceParse: 0
        });
    </script>
</myfooter>

</body>
</html>
