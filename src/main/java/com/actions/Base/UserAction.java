package com.actions.Base;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.Base.UserInfoIface;
import com.service.Base.UserInfoService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/8.
 */
public class UserAction extends BaseAction {
    UserInfoIface getService() {
        return ServiceFactory.getBean(UserInfoService.class, UserInfoIface.class);
    }

    /**
     * 注册
     *
     * @return
     */
    public String reg() {
        if (getO().size() <= 0) {
            return render("reg");
        }
        setObj(getO());

        if (!getService().checkSMS(getO().get("user_phone").toString(), getO().get("postSMS_code").toString())) {
            addError("手机验证码填写错误");
            return render("reg");
        }

        Map map = new HashMap();
        map.put("login_pwd", getO().get("login_pwd"));
        map.put("user_phone", getO().get("user_phone"));
        map.put("game_id", getO().get("game_id"));
        map.put("create_ip", getClientIP());


        for (Object o : map.keySet()) {
            if (map.get(o) == null) {
                addError("表单填写错误");
                return render("reg");
            }
        }

        int i = getService().add(map);
        if (i == 1) {
            addMsg("注册成功");
            return login();
        } else if (i == 2) {
            addError("游戏ID不存在或游戏未绑定推荐人");
            return render("reg");
        } else if (i == 3) {
            addError("手机号已注册");
            return render("reg");
        }

        addError("注册用户错误，请联系管理员");
        return render("reg");
    }

    /**
     * 发送短信验证码
     *
     * @return
     */
    public String postSMSajax() {
        String user_ip = getClientIP();

        setMsg_page_body("error");
        if (getService().postSMS(getO().get("user_phone"), user_ip) == 0) {
            setMsg_page_body("ok");
        }
        return _msgpage;
    }

    /**
     * 登录
     *
     * @return
     */
    public String login() {
        if (getO().size() <= 0) {
            return render("login");
        }

        if (getService().login(getO().get("user_phone"), getO().get("login_pwd")) == 0) {
            return redirect("/index.jsp");
        }
        addError("用户名密码错误");
        return logout();
    }

    public String logout() {
        SystemUtil.setSession("USER_MAP", null);

        Cookie cookie = new Cookie("is_auto", "0");
        cookie.setMaxAge(60 * 60 * 24 * 30);
        ServletActionContext.getResponse().addCookie(cookie);

        return render("login");
    }

    public String edit() {
        setObj(SystemUtil.getUserMap());
        return render("edit");
    }

    public String save() {

        if (!getService().checkSMS(getO().get("user_phone").toString(), getO().get("postSMS_code").toString())) {
            addError("手机验证码填写错误");
            setObj(getO());
            return edit();
        }


        Map map = new HashMap();
        map.put("id", getO().get("id"));
        map.put("login_pwd", getO().get("login_pwd"));

        for (Object o : map.keySet()) {
            if (map.get(o) == null) {
                addError("表单填写错误");
                setObj(getO());
                return edit();
            }
        }

        if (getService().edit(map) > 0) {
            addMsg("保存成功，请重新登录");
            return logout();
        }

        addError("保存信息错误，请联系管理员");
        setObj(getO());
        return edit();
    }

    /**
     * 找回密码
     *
     * @return
     */
    public String getBackPass() {
        return render("getBackPass");
    }

    public String saveNewPwd() {

        if (!getService().checkSMS(getO().get("user_phone").toString(), getO().get("postSMS_code").toString())) {
            addError("手机验证码填写错误");
            setObj(getO());
            return getBackPass();
        }

        if (getService().saveNewPwd(getO().get("user_phone").toString(), getO().get("login_pwd").toString()) > 0) {
            addMsg("保存成功，请重新登录");
            return logout();
        }
        addError("保存信息错误，请联系管理员");
        return getBackPass();
    }

    private String getClientIP() {
        HttpServletRequest request = ServletActionContext.getRequest();
        String ip = request.getHeader("x-forwarded-for");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
        return ip;
    }
}
