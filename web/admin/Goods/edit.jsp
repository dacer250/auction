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
    <link rel="stylesheet" type="text/css" href="/template/css/Huploadify.css"/>
    <style>
        #imglist img {
            max-width: 150px;
            max-height: 150px;
        }

        #imglist > div {
            padding: 10px;
            float: left;
        }

        #imglist > div > div:last-child > i {
            width: 30px;
            font-size: 20px;
        }
    </style>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">展品名称 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['name']" value="${obj.name}" type="text" class="form-control">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">展品分类 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <select class="form-control" name="o['class_id']">
                                <c:forEach items="${obj.classinfo}" var="row" varStatus="i">
                                    <option value="${row.id}" <c:if
                                            test="${obj.class_id == row.id}"> selected="selected"</c:if>>${row.class_name}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">文字描述 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['short']" value="${obj['short']}" type="text" class="form-control">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">详细内容 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <!-- 加载编辑器的容器 -->
                            <script id="container" name="content" type="text/plain">${obj.synopsis_html}</script>
                            <input type="hidden" name="o['synopsis_html']" id="synopsis_html">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">推荐类型</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <div class="checkbox">
                                <label>
                                    <c:set var="status" value="${obj.status}" scope="request"></c:set>
                                    <%
                                        int status = 0;
                                        if (request.getAttribute("status") != null) {
                                            status = Integer.valueOf(request.getAttribute("status").toString());
                                        }
                                    %>

                                    <input type="checkbox" class="flat" name="o['status_s']" value="2"
                                        <%
                                        if ((status & 2) == 2) {
                                                        out.print("checked=\"checked\"");
                                        }
                                    %>> 首页轮播
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="flat" name="o['status_s']" value="4"
                                        <%
                                        if ((status & 4) == 4) {
                                                        out.print("checked=\"checked\"");
                                        }
                                    %>> 精品推荐
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="flat" name="o['status_s']" value="8"
                                        <%
                                        if ((status & 8) == 8) {
                                                        out.print("checked=\"checked\"");
                                        }
                                    %>> 人气推荐
                                </label>
                            </div>

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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">展示状态 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="flat" name="o['type']" value="1"
                                           <c:if test="${obj.type == 1}">checked="checked"</c:if>> 显示
                                </label>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <%--<button class="btn btn-primary" type="button">返回</button>--%>
                            <button type="button" onclick="formSubmit()" class="btn btn-success">保存</button>
                        </div>
                    </div>

                    <c:if test="${obj.id != null}">
                        <div class="ln_solid"></div>
                        <div class="form-group">
                            <label class="control-label col-md-3 col-sm-3 col-xs-12">图片管理 </label>
                            <div class="col-md-9 col-sm-9 col-xs-12">
                                <div id="upload"></div>
                                <div id="imglist">
                                </div>
                            </div>
                        </div>
                    </c:if>
                </form>
            </div>

        </div>
    </div>
</div>


<myfooter>

    <!-- 配置文件 -->
    <script type="text/javascript" src="/ueditor/ueditor.config.js"></script>
    <!-- 编辑器源码文件 -->
    <script type="text/javascript" src="/ueditor/ueditor.all.min.js"></script>
    <!-- 实例化编辑器 -->
    <script type="text/javascript">
        var ue = UE.getEditor('container');

        function formSubmit() {
            $("#synopsis_html").val(ue.getContent());
            $("#o_form").submit();
        }
    </script>

    <script type="text/javascript" src="/template/js/jquery.Huploadify.js"></script>
    <script type="text/javascript">
        $(function () {
            addImg();

            $('#upload').Huploadify({
                auto: true,
                fileTypeExts: '*.jpg;*.png',
                multi: true,
                formData: {g_id: '${obj.id}'},
                fileSizeLimit: 9999,
                showUploadedPercent: true,//是否实时显示上传的百分比，如20%
                showUploadedSize: true,
                removeTimeout: 9999999,
                uploader: '/b/uploadFile',
                onUploadSuccess: function (file, data, response) {
                    jObj = JSON.parse(data);
                    $.ajax({
                        async: false,
                        url: "addImgList_ajax?id=${obj.id}&o['url']=" + encodeURI(jObj.files[0].url)
                    });
                    addImg();
                }
            });
        });

        function addImg() {
            $.ajax({
                url: "imgList_ajax?id=${obj.id}",
                dataType: "json",
                success: function (data) {
                    $("#imglist").html("");
                    for (i = 0; i < data.length; i++) {

                        mainDiv = $("<div>");

                        img = $("<img>");
                        img.attr("src", data[i].url);
                        img.attr("data_id", data[i].id);
                        mainDiv.append($("<div>").append(img));

                        iconDiv = $("<div>");
                        icon = $("<i class=\"fa fa-chevron-up\"></i>");
                        icon.attr("data_id", data[i].id);
                        icon.click(function () {
                            $.ajax({
                                async: false,
                                url: "sortImg_ajax?id=" + $(this).attr("data_id") + "&o['sort']=+1",
                                success: function () {
                                    addImg();
                                }
                            });
                        });
                        iconDiv.append(icon);

                        icon = $("<i class=\"fa fa-chevron-down\"></i>");
                        icon.attr("data_id", data[i].id);
                        icon.click(function () {
                            $.ajax({
                                async: false,
                                url: "sortImg_ajax?id=" + $(this).attr("data_id") + "&o['sort']=-1",
                                success: function () {
                                    addImg();
                                }
                            });
                        });
                        iconDiv.append(icon);

                        icon = $("<i class=\"fa fa-trash\"></i>");
                        icon.attr("data_id", data[i].id);
                        icon.click(function () {
                            $.ajax({
                                async: false,
                                url: "delImg_ajax?id=" + $(this).attr("data_id"),
                                success: function () {
                                    addImg();
                                }
                            });
                        });
                        iconDiv.append(icon);

                        mainDiv.append(iconDiv);

                        $("#imglist").append(mainDiv);
                    }
                }
            })
        }
    </script>
</myfooter>
</body>
</html>
