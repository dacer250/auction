<%--
  Created by IntelliJ IDEA.
  User: MHOME
  Date: 2017/7/12
  Time: 22:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="/template/css/Huploadify.css"/>
    <script language="JavaScript" src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <script type="text/javascript" src="/template/js/jquery.Huploadify.js"></script>

    <script type="text/javascript">
        $(function(){
            $('#upload').Huploadify({
                auto:true,
                fileTypeExts:'*.jpg;*.png',
                multi:true,
                formData:{g_id:'vvvv'},
                fileSizeLimit:9999,
                showUploadedPercent:true,//是否实时显示上传的百分比，如20%
                showUploadedSize:true,
                removeTimeout:9999999,
                uploader:'/b/uploadFile',
                onUploadStart:function(){
                    //alert('开始上传');
                },
                onInit:function(){
                    //alert('初始化');
                },
                onUploadComplete:function(){
                    //alert('上传完成');
                },
                onDelete:function(file){
                    console.log('删除的文件：'+file);
                    console.log(file);
                }
            });
        });
    </script>
</head>
<body>

<!-- page content -->
<div class="right_col" role="main">

</div>

<div id="upload"></div>
</body>
</html>
