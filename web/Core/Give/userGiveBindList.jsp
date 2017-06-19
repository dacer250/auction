<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="getUserGiveBindList?1=1"></c:set>
<c:set var="pb" value="${pageBean}"></c:set>
<html>
<head>

    <style>
        .table > tbody > tr > td,
        .table > tbody > tr > th,
        .table > tfoot > tr > td,
        .table > tfoot > tr > th,
        .table > thead > tr > td,
        .table > thead > tr > th {
            padding: 3px;
        }

        th, tr, td {
            text-align: center;
        }

        th, tr, td .btn {
            padding: 0px;
        }

        .table > tbody > tr > td {
            line-height: 30px;
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

        th, tr {
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

        .modal-body > div{
            height: 40px;
            line-height: 40px;
        }
        .modal-body span{
            font-weight: bold;
        }
    </style>

</head>
<body>
<div class="container">
    <div class="page-header">
        <h1>用户余额</h1>
    </div>
    <div class="panel panel-default">
        <div class="panel-body">
            <form action="getUserGiveBindList" method="post">
                <div class="col-xs-8">
                    <input type="text" class="form-control" placeholder="输入用户游戏ID" name="o['game_id']"
                           value="${obj.game_id}">
                </div>
                <button type="submit" class="btn btn-default col-xs-4">查询</button>
            </form>
        </div>
        <c:if test="${obj!=null}">
            <table class="table table-bordered table-striped">
                <thead>
                <tr>
                    <th>头像</th>
                    <th>昵称</th>
                    <th>余额</th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr>
                    <td>
                        <img src="${obj.wx_avatar}" width="30" height="30">
                    </td>
                    <td>${obj.wx_nick}</td>
                    <td>${obj.virtual}</td>
                    <td><a class="btn btn-link" onclick="showModal('${obj.game_id}','${obj.wx_nick}')">分配</a>
                    </td>
                </tr>
                </tbody>
            </table>
        </c:if>
    </div>
    <table class="table table-bordered table-striped">
        <thead>
        <tr>
            <th>头像</th>
            <th>昵称</th>
            <th>余额</th>
            <th>备注</th>
            <th width="80">操作</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
            <tr>
                <td>
                    <img src="${row.wx_avatar}" width="30" height="30">
                </td>
                <td>${row.wx_nick}</td>
                <td>
                    <c:choose>
                        <c:when test="${row.virtual < 20}">
                            <span style="color: red">${row.virtual}</span>
                        </c:when>
                        <c:otherwise>
                            ${row.virtual}
                        </c:otherwise>
                    </c:choose>

                </td>
                <td>${row.note}</td>
                <td><a class="btn btn-link" onclick="showModal('${row.game_user_id}','${row.wx_nick}')">分配</a> <a class="btn btn-link">删除</a></td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <%@include file="/include/page.jsp" %>
</div>

<!-- Large modal -->

<div id="modal_1" class="modal fade bs-example-modal-lg" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <form action="userGive" method="post" id="modal_form">
                <input name="o['game_id']" id="modal_game_id" type="hidden">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title">房卡分配</h4>
                </div>
                <div class="modal-body">
                    <div>
                        <p>[剩余房卡：<span style="color:red">${userMap.virtual}</span>]</p>
                    </div>
                    <div>
                        <div class="pull-left">
                            向用户<span id="modal_nick"></span>(<span id="modal_id"></span>)分配
                        </div>
                        <div class="pull-left">
                            <input type="text" class="form-control" placeholder="输入数字" name="o['virtual']"
                                   style="width: 100px;margin-left: 5px;margin-right: 5px;">
                        </div>
                        <div class="pull-left">
                            张房卡
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button type="button" class="btn btn-primary" onclick="modal_form_sub()">保存</button>
                </div>
            </form>
        </div><!-- /.modal-content -->
    </div><!-- /.modal-dialog -->
</div>


<myfooter>

    <script type="text/javascript">
        function showModal(game_id, wx_nick) {
            $("#modal_nick").text(wx_nick);
            $("#modal_id").text(game_id);

            $("#modal_game_id").val(game_id);
            $("#modal_1").modal("toggle");
        };

        function modal_form_sub() {
            $("#modal_form").submit();
        }
    </script>
</myfooter>
</body>
</html>
