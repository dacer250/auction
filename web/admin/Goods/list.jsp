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
                    <form action="list" method="post">
                        <div class="row">
                            <div class="col-sm-6">
                                <a href="edit" type="button" class="btn btn-success btn-sm">添加</a>
                            </div>

                            <div class="col-sm-6">
                                <label>
                                    <select name="f['tj']" class="form-control input-sm">
                                        <option value="">选择推荐</option>
                                        <option value="2" <c:if test="${obj.tj == '2'}">selected="selected"</c:if>>首页轮播</option>
                                        <option value="4" <c:if test="${obj.tj == '4'}">selected="selected"</c:if>>精品推荐</option>
                                        <option value="8" <c:if test="${obj.tj == '8'}">selected="selected"</c:if>>人气推荐</option>
                                    </select>
                                </label>

                                <label>
                                    <select name="f['cid']" class="form-control input-sm">
                                        <option value="">选择类型</option>
                                        <c:forEach items="${obj.classinfo}" var="row" varStatus="i">
                                            <option value="${row.id}"
                                                    <c:if test="${row.id == f.cid}">selected="selected"</c:if>>${row.class_name}</option>
                                        </c:forEach>
                                    </select>
                                </label>

                                <label>
                                    <input type="search" name="f['name']" value="${f.name}"
                                           class="form-control input-sm" placeholder=""
                                           aria-controls="datatable">
                                </label>
                                <button type="submit" class="btn btn-success btn-sm">查找</button>
                            </div>

                        </div>
                    </form>
                    <div class="row">
                        <div class="col-sm-12">
                            <table class="table table-striped jambo_table bulk_action">
                                <thead>
                                <tr class="headings">

                                    <th class="column-title">名称</th>
                                    <th class="column-title">分类</th>
                                    <th class="column-title">推荐</th>
                                    <th class="column-title">类型</th>
                                    <th class="column-title">排序</th>
                                    <th class="column-title">操作</th>

                                </tr>
                                </thead>


                                <tbody>
                                <c:forEach items="${pageBean.retList}" var="row" varStatus="i">
                                    <tr class="even pointer">

                                        <td class=" "><a href="edit?id=${row.id}" target="_blank">${row.name}</a>
                                        </td>
                                        <td class=" ">${row.class_name}</td>

                                        <td class=" ">

                                            <c:set var="status" value="${row.status}" scope="request"></c:set>
                                            <%
                                                int status = 0;
                                                if (request.getAttribute("status") != null) {
                                                    status = Integer.valueOf(request.getAttribute("status").toString());
                                                }
                                            %>
                                            <%
                                                if ((status & 2) == 2) {
                                                                out.print("[轮播]");
                                                }
                                                if ((status & 4) == 4) {
                                                    out.print("[精品]");
                                                }
                                                if ((status & 8) == 8) {
                                                    out.print("[人气]");
                                                }
                                            %>
                                        </td>
                                        <td class=" ">
                                            <c:choose>
                                                <c:when test="${row.type == 1}">
                                                    显示
                                                </c:when>
                                                <c:otherwise>
                                                    隐藏
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td class=" ">${row.sort}</td>
                                        <td class=" ">
                                            <a href="upSort?id=${row.id}&o['sort']=+1&pageno=${pageno}"><i
                                                    class="fa fa-arrow-up"></i>上升</a>
                                            <a href="upSort?id=${row.id}&o['sort']=-1&pageno=${pageno}"><i
                                                    class="fa fa-arrow-down"></i>下降</a>
                                            <a href="del?id=${row.id}&pageno=${pageno}" type="button"
                                               class="btn btn-success btn-xs">删除</a>
                                        </td>
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
