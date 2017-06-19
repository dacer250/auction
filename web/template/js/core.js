/**
 * Created by Administrator on 2017/3/30.
 */
function postSMS() {
    $("#sms_code_btn").attr("disabled", "disabled");
    $.ajax({
        url: "/a/Base/User/postSMSajax?o['user_phone']=" + $("#user_phone").val() + "&t=" + new Date().getTime(),
        success: function (data) {
            if (data == "ok") {
                $("#sms_code_btn").attr("time", "60");
                $("#sms_code_btn").click(function () {
                });

                il = setInterval(function () {
                    t = parseInt($("#sms_code_btn").attr("time")) - 1;

                    $("#sms_code_btn").text(t + "秒后重试");
                    $("#sms_code_btn").attr("time", t);

                    t = t - 1;
                    if (t < 0) {
                        clearInterval(il);
                        $("#sms_code_btn").attr("disabled", false);
                        $("#sms_code_btn").text("发送验证码");
                        $("#sms_code_btn").click(function () {
                            postSMS();
                        });
                    }
                }, 1000);
            } else {
                $("#sms_code_btn").attr("disabled", false);
                alert("发送验证码频率过快，请稍后再试！");
            }
        },
        error: function () {
            $("#sms_code_btn").attr("disabled", false);
            alert("发送验证码错误，请重试！");
        }
    });
}