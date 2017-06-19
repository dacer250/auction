package com.frame.util;

import com.aliyun.api.gateway.demo.SingleSendSms;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public class SystemUtil {
    public static void setSession(String key, Object obj) {
        HttpSession session = ServletActionContext.getRequest().getSession();
        session.setAttribute(key, obj);
    }

    public static Object getSession(String key) {
        HttpSession session = ServletActionContext.getRequest().getSession();
        return session.getAttribute(key);
    }

    public static Map getUserMap() {
        HttpSession session = ServletActionContext.getRequest().getSession();
        Map map = (Map) session.getAttribute("USER_MAP");
        if (map == null) {
            return new HashMap();
        }
        return map;
    }


    public static int getRandom(int start, int end) {
        if (start > end || start < 0 || end < 0) {
            return -1;
        }
        return (int) (Math.random() * (end - start + 1)) + start;
    }

    public static String randomUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    /**
     * yyyy-MM-dd HH:ss:mm
     *
     * @return
     */
    public static SimpleDateFormat sdfDateTime() {
        return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    }

    public static SimpleDateFormat sdfDate() {
        return new SimpleDateFormat("yyyy-MM-dd");
    }

    public static SingleSendSms postSMS = new SingleSendSms();


    static int[] agents_id = new int[]{1014, 1114, 1214, 1314, 1414, 1514, 1614, 1714, 1814, 1914, 1044, 1144, 1244, 1344, 1444, 1544, 1644, 1744, 1844, 1944};

    /**
     * 代理商ID黑名单
     * @param aId
     * @return
     */
    public static boolean agentsIdIsBlack(int aId) {
        for (int i = 0; i < agents_id.length; i++) {
            if (aId == agents_id[i]) {
                return true;
            }
        }
        return false;
    }

    public static void main(String[] args) {

        for (int i = 0; i < 6; i++) {
            System.out.println(SystemUtil.getRandom(100000, 999999));
        }
    }
}
