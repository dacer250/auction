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
                <h2>展品管理
                    <small>展品管理</small>
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
                            <th class="column-title">名称</th>
                            <th class="column-title">分类</th>
                            <th class="column-title">排序</th>
                            <th class="column-title">类型</th>
                            <th class="column-title no-link last">状态</th>

                            <th class="bulk-actions" colspan="6">
                                批量操作
                            </th>
                        </tr>
                        </thead>

                        <tbody>
                        <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
                            <tr class="even pointer">
                                <td class="a-center ">
                                    <input type="checkbox" class="flat" name="table_records">
                                </td>
                                <td class=" "><a href="edit?id=${row.id}">${row.name}</a></td>
                                <td class=" ">${row.class_name}</td>
                                <td class=" ">${row.sort}</td>
                                <td class=" ">${row.status}</td>
                                <td class=" ">${row.type}</td>
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
