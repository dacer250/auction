<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="list?1=1"></c:set>
<c:set var="pb" value="${pageBean}"></c:set>
<html>
<head>

    <style>
        .bs-callout {
            padding: 5px;
            margin: 10px 0;
            border: 1px solid #eee;
            border-left-width: 5px;
            border-radius: 3px;
        }

        .bs-callout-warning3 {
            border-left-color: #a94442;
        }

        .bs-callout-warning2 {
            border-left-color: #31708f;
        }

        .bs-callout h4 {
            color: #aa6708;
            margin-top: 0;
            margin-bottom: 5px;
        }
        th,tr {
            text-align: center;
        }
        .h4,
        h4 {
            font-size: 18px;
            display: block;
            -webkit-margin-before: 1.33em;
            -webkit-margin-after: 1.33em;
            -webkit-margin-start: 0px;
            -webkit-margin-end: 0px;
            font-weight: bold;
        }

        .bs-callout .btn {
            padding: 0px;
        }

        .bs-callout p {
            margin: 0px;
        }
    </style>

</head>
<body>
<div class="container">
    <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
        <div class="bs-callout bs-callout-warning${row.type}">
            <h4>${row.title}&nbsp;</h4>
            <p>${row.body}&nbsp;</p>
            <div>
                <p>&nbsp;</p>
                <%--<div class="pull-left">2017-03-03 12:12:12</div>--%>
                <div class="pull-right">
                    <button type="button" class="btn btn-link">${row.create_time}</button>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </c:forEach>
    <%@include file="/include/page.jsp" %>
</div>
</body>
</html>
