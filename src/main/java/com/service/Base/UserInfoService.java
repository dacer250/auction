package com.service.Base;

import com.aliyun.api.gateway.demo.SingleSendSms;
import com.frame.base.BaseService;
import com.frame.util.HttpTools;
import com.frame.util.RedisTools;
import com.frame.util.SystemUtil;
import com.iface.Base.UserInfoIface;
import redis.clients.jedis.Jedis;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/8.
 */
public class UserInfoService extends BaseService implements UserInfoIface {


    /**
     * @param userInfo
     * @return 1=注册成功；2=游戏ID不存在；3=手机号已注册
     */
    public int add(Map userInfo) {
        userInfo.put("create_time", new Date());
        userInfo.put("user_type", 2);
        userInfo.put("user_status", 4);

        List<java.util.Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.user_phone = ?", userInfo.get("user_phone"));
        if (list.size() > 0) {
            return 3;
        }
        list = queryForList("SELECT  * FROM tb_game_user_info WHERE game_id = ?", userInfo.get("game_id"));
        if (list.size() <= 0) {
            return 2;
        } else {

            userInfo.put("wx_id", list.get(0).get("wx_id"));
            userInfo.put("wx_nick", list.get(0).get("wx_nick"));
            userInfo.put("wx_avatar", list.get(0).get("wx_avatar"));

        }
        return saveOrUpdate(userInfo, "tb_user_info");



        /*List<java.util.Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.game_id = ? OR t.user_phone = ?", userInfo.get("game_id"), userInfo.get("user_phone"));
        if (list.size() > 0) {
            //游戏ID存在，但是手机号也存在
            if (list.get(0).get("user_phone") != null && list.get(0).get("user_phone").toString().equals(userInfo.get("user_phone").toString())) {
                return 3;
            }
            userInfo.put("id", list.get(0).get("id"));

            int agents_id = SystemUtil.getRandom(100000, 999999);
            //如果代理商ID存在，则重新生成；
            while (queryForList("SELECT * FROM tb_user_info t WHERE t.agents_id = ? ", agents_id).size() > 0) {
                agents_id = SystemUtil.getRandom(100000, 999999);
            }
            userInfo.put("agents_id", agents_id);

            //游戏ID存在，手机号不存在，则保存
            return saveOrUpdate(userInfo, "tb_user_info");
        } else {
            return 2;
        }*/

    }

    @Override
    public int edit(Map userInfo) {
        return saveOrUpdate(userInfo, "tb_user_info");
    }

    @Override
    public int saveNewPwd(String phone, String pwd) {
        List<java.util.Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.user_phone = ?", phone);
        if (list.size() > 0) {
            Map map = new HashMap();
            map.put("id", list.get(0).get("id"));
            map.put("login_pwd", pwd);
            saveOrUpdate(map, "tb_user_info");
            return 1;
        }
        return 0;
    }

    public int postSMS(String user_phone, String post_ip) {

        Jedis j = RedisTools.getJedis();

        String code = SystemUtil.getRandom(1000, 9999) + "";

        Map map = new HashMap();
        int count = 1;
        if (j.exists("postSMS_" + post_ip)) {
            count = Integer.valueOf(j.hget("postSMS_" + post_ip, "count")) + 1;
            j.hset("postSMS_" + post_ip, "count", count + "");
            if (count > 30) {
                return 1;
            }
        }
        count = 1;
        if (j.exists("postSMS_" + user_phone)) {
            map = j.hgetAll("postSMS_" + user_phone);
            code = map.get("code").toString();
            count = Integer.valueOf(map.get("count").toString()) + 1;
            map.put("count", count + "");
            map.put("code", code + "");
            j.hmset("postSMS_" + user_phone, map);
        }  else {
            map.put("count", count + "");
            map.put("code", code + "");
            j.hmset("postSMS_" + user_phone, map);
            j.hset("postSMS_" + post_ip, "count", count + "");
            j.expire("postSMS_" + user_phone, 30 * 60);
            j.expire("postSMS_" + post_ip, 30 * 60);
        }
        RedisTools.returnResource(j);

        //30分钟发送大于5条，则返回错误
        if (count > 5) {
            return 1;
        }

        logger.debug(user_phone + " count:" + count);
        synchronized (SystemUtil.postSMS) {
            return SystemUtil.postSMS.sendMsg(user_phone, "{\"code\":\"" + code + "\"}");
        }
    }

    public boolean checkSMS(String user_phone, String code) {
        Jedis j = RedisTools.getJedis();

        if (j.exists("postSMS_" + user_phone)) {
            if (j.hget("postSMS_" + user_phone, "code").equals(code)) {
                return true;
            }
        }

        RedisTools.returnResource(j);

        return false;
    }

    public int useSMS(String code) {
        return 1;
    }

    @Override
    public int login(String login_name, String login_pwd) {
        List<Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.user_phone = ? AND t.login_pwd = ? AND t.user_type = 2", login_name, login_pwd);
        if (list.size() > 0) {
            SystemUtil.setSession("USER_MAP", list.get(0));

            Map map = new HashMap();
            map.put("id", list.get(0).get("id"));
            map.put("last_login_date", new Date());
            saveOrUpdate(map, "tb_user_info");
        } else {
            return 1;
        }
        return 0;
    }


}
