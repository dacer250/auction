<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="agentsList?1=1"></c:set>
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
    <div class="pull-left">学员详情</div>
    <div class="pull-right"><a href="agentsList" type="button" class="btn btn-primary btn-xs">刷新</a></div>
    <p>&numsp;</p>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th colspan="3">用户</th>
            <th>导师</th>
            <th>注册时间</th>
            <%--<th>注册IP</th>--%>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
            <tr>
                <td><%--${row.wx_avatar}--%><img src="${row.wx_avatar}" width="25" height="25"></td>
                <td>${row.wx_nick}</td>
                <td>${row.game_id}</td>
                <td>${row.f_wx_n}</td>
                <td><fmt:formatDate value="${row.RegDate}" pattern="yyyy-MM-dd" /></td>
                <%--<td>${row.RegIP}</td>--%>
            </tr>
        </c:forEach>
        </tbody>
    </table>

    <%@include file="/include/page.jsp" %>

</div>


</body>
</html>
