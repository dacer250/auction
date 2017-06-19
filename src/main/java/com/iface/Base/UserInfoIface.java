package com.iface.Base;

import java.util.Map;

/**
 * Created by Administrator on 2017/3/8.
 */
public interface UserInfoIface {

    public int add(Map userInfo);
    public int edit(Map userInfo);

    /**
     * 找回密码，保存新密码
     * @param phone
     * @param pwd
     * @return
     */
    public int saveNewPwd(String phone, String pwd);
    /**
     * 发送验证码
     * @return
     */
    public int postSMS(String user_phone,String post_ip);

    /**
     * 使用验证码
     * @param code
     * @return
     */
    public int useSMS(String code);

    /**
     * 验证验证码
     * @param user_phone
     * @param code
     * @return
     */
    public boolean checkSMS(String user_phone, String code);

    public int login(String login_name, String login_pwd);

}
