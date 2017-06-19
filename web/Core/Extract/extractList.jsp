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
        th,tr {
            text-align: center;
        }
    </style>

</head>
<body>


<div class="container">
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>日期</th>
            <th>收入</th>
            <th>状态</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
            <tr>
                <td><fmt:formatDate value="${row.income_date}" pattern="yyyy-MM-dd HH:mm:ss" /></td>
                <td>${row.brokerage}</td>
                <td>
                    <a href="/a/Core/Income/incomeDetails?f['income_date']=${row.income_date}">明细</a>
                    <c:choose>
                        <c:when test="${row.extract_status ==2}">
                            <a href="incomeDetails?f['income_date']=${row.income_date}">申请提现</a>
                        </c:when>
                        <c:when test="${row.extract_status ==4}">
                            <p >已申请，待审核</p>
                        </c:when>
                        <c:when test="${row.extract_status ==8}">
                            <p>审核通过，待转账</p>
                        </c:when>
                        <c:when test="${row.extract_status ==16}">
                            <p class="text-danger">审核失败</p>
                        </c:when>
                        <c:when test="${row.extract_status ==32}">
                            <p class="text-success">转账成功</p>
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
