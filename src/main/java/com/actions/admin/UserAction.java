package com.actions.admin;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.admin.UserIface;
import com.service.admin.UserService;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.Cookie;

public class UserAction extends BaseAction {

    UserIface getService() {
        return ServiceFactory.getBean(UserService.class, UserIface.class);
    }


    /**
     * 登录
     *
     * @return
     */
    public String login() {
        /*if (getO().size() <= 0) {
            return render("login");
        }*/

        if (getService().login(getO().get("login_name"), getO().get("login_pwd")) == 0) {
            return redirect("/a/admin/Goods/list");
        }
        addError("用户名密码错误");
        return logout();
    }

    public String logout() {
        SystemUtil.setSession("USER_MAP", null);

        Cookie cookie = new Cookie("is_auto", "0");
        cookie.setMaxAge(60 * 60 * 24 * 30);
        ServletActionContext.getResponse().addCookie(cookie);

        return redirect("/admin/login.html");
    }
}
