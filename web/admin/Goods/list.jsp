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
                <div class="dataTables_wrapper form-inline dt-bootstrap no-footer">
                    <div class="row">
                        <div class="col-sm-6">
                            <a href="edit" type="button" class="btn btn-success btn-sm">添加</a>
                        </div>
                        <div class="col-sm-6">
                            <label>
                                <input type="search" class="form-control input-sm" placeholder=""
                                       aria-controls="datatable">
                            </label>
                            <button type="button" class="btn btn-success btn-sm">查找</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-striped jambo_table bulk_action">
                                    <thead>
                                    <tr class="headings">

                                        <th class="column-title">名称</th>
                                        <th class="column-title">分类</th>
                                        <th class="column-title">排序</th>
                                        <th class="column-title">类型</th>
                                        <th class="column-title">类型</th>
                                        <th class="column-title">操作</th>

                                    </tr>
                                    </thead>


                                    <tbody>
                                    <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
                                        <tr class="even pointer">

                                            <td class=" "><a href="edit?id=${row.id}" target="_blank">${row.name}</a>
                                            </td>
                                            <td class=" ">${row.class_name}</td>
                                            <td class=" ">${row.sort}</td>
                                            <td class=" ">${row.status}</td>
                                            <td class=" ">${row.type}</td>
                                            <td class=" "><a href="del?id=${row.id}" type="button" class="btn btn-success btn-xs">删除</a></td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <%@include file="/include/page.jsp" %>
            </div>

        </div>
    </div>
</div>

<div id="upload"></div>
</body>
</html>
