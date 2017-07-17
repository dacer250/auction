<%--
  Created by IntelliJ IDEA.
  User: MHOME
  Date: 2017/7/12
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<c:set var="page_list_action"
       value="list?1=1"></c:set>
<c:set var="pb" value="${pageBean}"></c:set>
<html>
<head>
    <title></title>
</head>
<body>

<!-- page content -->
<div class="right_col" role="main">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>资讯管理
                    <small>资讯管理</small>
                </h2>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <div class="table-responsive">
                    <table class="table table-striped jambo_table bulk_action">
                        <thead>
                        <tr class="headings">
                            <th>
                                <input type="checkbox" id="check-all" class="flat">
                            </th>

                            <th class="column-title">标题</th>
                            <th class="column-title">创建时间</th>
                            <th class="column-title no-link last">状态</th>
                            <th class="column-title">操作</th>

                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
                            <tr class="even pointer">
                                <td class="a-center ">
                                    <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" "><a href="edit?id=${row.id}">${row.title}</a></td>
                                <td class=" ">${row.create_date}</td>
                                <td class=" ">${row.type}</td>
                                <td class=" ">
                                    <a href="upSort?id=${row.id}&o['sort']=+1&pageno=${pageno}"><i class="fa fa-arrow-up"></i>上升</a>
                                    <a href="upSort?id=${row.id}&o['sort']=-1&pageno=${pageno}"><i class="fa fa-arrow-down"></i>下降</a>
                                    <a href="del?id=${row.id}&pageno=${pageno}" type="button" class="btn btn-success btn-xs">删除</a>
                                </td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
                <%@include file="/include/page.jsp" %>
            </div>

        </div>
    </div>
</div>

<div id="upload"></div>
</body>
</html>
