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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">资讯标题 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['title']" value="${obj.title}" type="text" class="form-control">
                        </div>
                    </div>


                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">标题图片 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['title_img']" value="${obj.title_img}" type="text" class="form-control">
                            <p>请填写图片URL地址。可用下方编辑器上传图片后取得图片地址</p>
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
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">创建时间 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input disabled="disabled" value="${obj.create_date}" type="text" class="form-control">
                        </div>
                    </div>

                    <div class="ln_solid"></div>
                    <div class="form-group">
                        <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                            <button class="btn btn-primary" type="button">返回</button>
                            <button type="button" onclick="formSubmit()" class="btn btn-success">保存</button>
                        </div>
                    </div>
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
            console.log(ue.getContent());
            $("#synopsis_html").val(ue.getContent());
            $("#o_form").submit();
        }
    </script>

    <script type="text/javascript" src="/template/js/jquery.Huploadify.js"></script>

    <script type="text/javascript">
        $(function () {
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
                }
            });
        });
    </script>

</myfooter>
</body>
</html>
