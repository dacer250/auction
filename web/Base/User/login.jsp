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
.jumbotron{
    margin-bottom: 10px;
}
        .login_panel {
            margin: 0px 20px 20px 20px;
        }

        .btn-lg {
            width: 150px;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="jumbotron">
        <h1>保定代理平台</h1>
    </div>
    <div class="login_panel">
        <div>
            <form id="id_form1" action="login" method="post">
                <div class="form-group">
                    <label>手机号</label>
                    <input id="user_phone" name="o['user_phone']" class="form-control validate[required]">
                </div>
                <div class="form-group">
                    <label>密码</label>
                    <input id="login_pwd" name="o['login_pwd']" type="password" class="form-control validate[required]">
                </div>

                <div class="checkbox">
                    <label>
                        <input id="is_auto" type="checkbox" checked="checked"> 记住密码并自动登录
                    </label>
                </div>

                <div class="col-xs-8">
                    <button id="form_submit" type="button" class="btn btn-primary" style="width: 100%;">登录</button>
                </div>
                <div class="col-xs-4">
                    <a href="reg" class="btn btn-default"
                       style="width: 100%;color: #31708F;border-color: #31708F;">注册</a>
                </div>
                <div class="form-group">
                    <a type="button" class="btn btn-link" href="getBackPass">找回密码</a>
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
            scroll: false
        });

        $(document).ready(function () {
            if(getCookie("is_auto") == "1"){
                //$("#is_auto").attr("checked", "checked");
                $('#id_form1').validationEngine('detach');
                $("#user_phone").val(getCookie("user_phone"));
                $("#login_pwd").val(getCookie("login_pwd"));
                $('#id_form1').submit();
            }
        });
        $("#form_submit").click(function () {
            var pass = $.md5($("#login_pwd").val());
            if($("#is_auto").is(':checked')){
                setCookie("is_auto", "1", 30);
                setCookie("user_phone", $("#user_phone").val(), 30);
                setCookie("login_pwd", pass, 30);
            }
            $("#login_pwd").val(pass);
            $('#id_form1').submit();
        })
    </script>
</myfooter>
</body>
</html>
