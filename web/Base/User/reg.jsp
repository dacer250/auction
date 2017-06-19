<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/3/8
  Time: 17:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/include/taglibs.jsp" %>
<html>
<head>
    <title></title>
    <link rel="stylesheet" href="/template/css/validationEngine.jquery.css">
    <style>
        body {
            background-color: #EEEEEE;
        }

        .login_panel {
            margin: 50px 20px 20px 20px;
        }

        .btn-lg {
            width: 150px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="login_panel">
        <div>
            <form id="id_form1" action="reg" method="post">
                <%--<div class="form-group">
                    <label>用户名</label>
                    <input name="o['login_name']" value="${obj.login_name}" class="form-control validate[required,minSize[4],maxSize[20]]" >
                </div>--%>
                <div class="form-group">
                    <label>手机号</label>
                    <input id="user_phone" name="o['user_phone']" value="${obj.user_phone}" class="form-control validate[required,minSize[11],maxSize[11]]">
                </div>
                <div class="form-group">
                    <label>短信验证码</label>
                    <div>
                        <div class="col-xs-8">
                            <input name="o['postSMS_code']" value="${obj.postSMS_code}" class="form-control validate[required,minSize[4]]"
                                   placeholder="填写短信验证码">
                        </div>
                        <div class="col-xs-4">
                            <button id="sms_code_btn" type="button" class="btn btn-info" onclick="postSMS()">发送验证码
                            </button>
                        </div>
                    </div>
                    <div class="clearfix">
                    </div>
                </div>

                <div class="form-group">
                    <label>密码</label>
                    <input id="login_pwd" name="o['login_pwd']" type="password" class="form-control validate[required,minSize[6]]">
                </div>
                <div class="form-group">
                    <label>游戏ID</label>
                    <input name="o['game_id']" value="${obj.game_id}" class="form-control validate[required,maxSize[20]]">
                </div>
                <%--<div class="form-group">
                    <label>微信号</label>
                    <input name="o['wx_no']" value="${obj.wx_no}" class="form-control validate[maxSize[50]]">
                </div>--%>
                <%--<div class="form-group">
                    <label>QQ号</label>
                    <input name="o['qq_id']" value="${obj.qq_id}" class="form-control validate[maxSize[50]]">
                </div>--%>
                <!--<div class="checkbox">
                    <label>
                      <input type="checkbox"> Check me out
                    </label>
                </div>-->

                <div class="col-xs-8">
                    <button id="form_submit" type="button" class="btn btn-primary" style="width: 100%;">注册</button>
                </div>
                <div class="col-xs-4">
                    <a href="login" type="button" class="btn btn-default"
                       style="width: 100%;color: #31708F;border-color: #31708F;">返回
                    </a>
                </div>

            </form>
        </div>
    </div>
</div>

<myfooter>
    <script type="text/javascript" src="/template/js/jquery.validationEngine.js"></script>
    <script type="text/javascript" src="/template/js/jquery.validationEngine-zh_CN.js"></script>
    <script type="text/javascript">
        $('#id_form1').validationEngine('attach', {
            promptPosition: 'topLeft: 100,5',
            scroll: false,
        });


        $("#form_submit").click(function () {
            var pass = $.md5($("#login_pwd").val());
            $("#login_pwd").val(pass);
            $('#id_form1').submit();
        })
    </script>
</myfooter>
</body>
</html>
