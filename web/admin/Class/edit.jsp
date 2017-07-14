<%--
  Created by IntelliJ IDEA.
  User: MHOME
  Date: 2017/7/12
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<html>
<head>
    <title>Title</title>

</head>
<body>

<!-- page content -->
<div class="right_col" role="main">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>${obj.name}
                </h2>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <br>
                <form id="o_form" class="form-horizontal form-label-left" action="update" method="post">
                    <input type="hidden" name="o['id']" value="${obj.id}">

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">分类名称 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['class_name']" value="${obj.class_name}" type="text" class="form-control">
                        </div>
                    </div>

                    <%--<div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">展示排序 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <button>置顶</button>
                            <button>上升10位</button>
                            <button>上升1位</button>
                            <button>下降1位</button>
                            <button>下降10位</button>
                            <button>置尾</button>
                        </div>
                    </div>--%>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">启用停用 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="flat" name="o['type']" value="1"
                                           <c:if test="${obj.type == 1}">checked="checked"</c:if>> 启用
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button class="btn btn-primary" type="button">返回</button>
                            <button type="submit" class="btn btn-success">保存</button>
                        </div>
                    </div>
                </form>
            </div>

        </div>
    </div>
</div>


<myfooter>

</myfooter>
</body>
</html>
