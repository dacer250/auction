package com.service.admin;

import com.frame.base.BaseService;
import com.frame.util.SystemUtil;
import com.iface.admin.UserIface;

import java.util.List;
import java.util.Map;

public class UserService extends BaseService implements UserIface {

    @Override
    public int login(String login_name, String login_pwd) {
        List<Map<String, Object>> list = queryForList("SELECT * FROM admin_user t WHERE t.login_name = ? AND t.login_pwd = ?", login_name, login_pwd);
        if (list.size() > 0) {
            SystemUtil.setSession("USER_MAP", list.get(0));
        } else {
            return 1;
        }
        return 0;
    }

}
