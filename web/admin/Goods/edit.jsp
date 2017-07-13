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

</head>
<body>

<!-- page content -->
<div class="right_col" role="main">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>${obj.obj.name}
                </h2>
                <div class="clearfix"></div>
            </div>

            <div class="x_content">
                <br>
                <form class="form-horizontal form-label-left">

                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">展品名称 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['name']" value="${obj.obj.name}" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">文字描述 </label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <input name="o['short']" value="${obj.obj['short']}" type="text" class="form-control">
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="control-label col-md-3 col-sm-3 col-xs-12">推荐类型</label>
                        <div class="col-md-9 col-sm-9 col-xs-12">
                            <div class="checkbox">
                                <label>
                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox"
                                                                                                         checked="checked"
                                                                                                         class="flat"
                                                                                                         style="position: absolute; opacity: 0;">
                                        <ins class="iCheck-helper"
                                             style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                    </div>
                                    首页轮播
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox"
                                                                                                         class="flat"
                                                                                                         style="position: absolute; opacity: 0;">
                                        <ins class="iCheck-helper"
                                             style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                    </div>
                                    精品推荐
                                </label>
                            </div>
                            <div class="checkbox">
                                <label>
                                    <div class="icheckbox_flat-green" style="position: relative;"><input type="checkbox"
                                                                                                         class="flat"
                                                                                                         style="position: absolute; opacity: 0;">
                                        <ins class="iCheck-helper"
                                             style="position: absolute; top: 0%; left: 0%; display: block; width: 100%; height: 100%; margin: 0px; padding: 0px; background: rgb(255, 255, 255); border: 0px; opacity: 0;"></ins>
                                    </div>
                                    人气推荐
                                </label>
                            </div>

                        </div>
                    </div>


                </form>
            </div>

        </div>
    </div>
</div>

<div id="upload"></div>
</body>
</html>
