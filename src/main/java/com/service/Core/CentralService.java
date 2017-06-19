package com.service.Core;

import com.frame.base.BaseService;
import com.frame.util.PropertiesTools;
import com.frame.util.RedisTools;
import com.frame.util.SystemUtil;
import com.iface.Core.CentralIface;
import redis.clients.jedis.Jedis;

import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2017/1/3.
 */
public class CentralService extends BaseService implements CentralIface {
    @Override
    public Map getUserInfo(String userId, String uuid, String user_name, String user_pwd) {

        Map data = new HashMap();
        List<Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.user_id = ? OR (t.login_name = ? AND t.login_pwd = ?)", userId,user_name,user_pwd);
        if (list.size() > 0) {
            //判断用户名密码

            Map map = list.get(0);
            map.put("is_login", "2");
            if (list.get(0).get("login_name") != null) {
                if (!list.get(0).get("login_name").toString().equals(user_name) || !list.get(0).get("login_pwd").toString().equals(user_pwd)) {
                    return null;
                }else {
                    map.put("is_login", "1");
                }
            }

            map.put("login_name", "");
            map.put("login_pwd", "");
            data.put("user_info", map);
        }

        list = queryForList("SELECT * FROM tb_user_bets t WHERE t.user_id = ? AND t.gambling_uuid = ?", userId, uuid);
        if (list.size() > 0) {
            data.put("user_bets", list.get(0));
        }


        list = queryForList("SELECT * FROM tb_virtual_user_bets t WHERE t.user_id = ? AND t.gambling_uuid = ?", userId, uuid);
        if (list.size() > 0) {
            data.put("virtual_user_bets", list.get(0));
        }

        return data;
    }

    @Override
    public int createUser(String cookies_uuid) {
        List<Map<String, Object>> list = queryForList("SELECT * FROM tb_user_info t WHERE t.cookies_uuid = ?", cookies_uuid);
        if (list.size() > 0) {
            return Integer.valueOf(list.get(0).get("user_id").toString());
        }

        int i = 0;
        while (i < 10) {
            int id = SystemUtil.getRandom(9999, 999999);
            if (queryForList("SELECT * FROM tb_user_info t WHERE t.user_id = ?", id).size() <= 0) {
                update("INSERT INTO tb_user_info (user_id,nick,create_date,virtual,cookies_uuid) VALUES (?,?,?,?,?)", id, "玩家" + id, new Date(), 10000, cookies_uuid);
                return id;
            }
            i++;
        }
        return 0;
    }

    @Override
    public Map betting(String userId, String uuid, String fishId, String bets) {

        return null;
    }

    @Override
    public List<Map<String, Object>> getLotteryInfo(String uuid) {
        return queryForList("SELECT g.uuid,g.lottery,b.user_id,b.income FROM tb_gambling g LEFT JOIN tb_user_bets b ON  g.uuid = b.gambling_uuid \n" +
                "WHERE g.uuid = ?", uuid);
    }

    @Override
    public List<Map<String, Object>> getVirtualLotteryInfo(String uuid) {
        return queryForList("SELECT g.uuid,g.lottery,b.user_id,b.income FROM tb_virtual_gambling g LEFT JOIN tb_user_bets b ON  g.uuid = b.gambling_uuid \n" +
                "WHERE g.uuid = ?", uuid);
    }

    @Override
    public List<Map<String, Object>> getHistory() {
        return queryForList("SELECT t.uuid,t.create_date,t.lottery FROM tb_gambling t WHERE t.lottery is not NULL ORDER BY t.create_date DESC LIMIT 20;");
    }

    @Override
    public List<Map<String, Object>> getVirtualHistory() {
        return queryForList("SELECT t.uuid,t.create_date,t.lottery FROM tb_virtual_gambling t WHERE t.lottery is not NULL ORDER BY t.create_date DESC LIMIT 20;");
    }

    @Override
    public LinkedList getTodayRanking() {
        Jedis j = RedisTools.getJedis();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Map map = j.hgetAll(PropertiesTools.TOTAL_LIST + sdf.format(new Date()));

        RedisTools.returnResource(j);


        LinkedList list = new LinkedList();
        for (Object o : map.keySet()) {
            list.add(new String[]{o + "", map.get(o).toString()});
        }

        for (int i = 0; i < list.size(); i++) {
            for (int k = i; k < list.size(); k++) {
                int i1 = Integer.valueOf(((String[]) list.get(i))[1]);
                int i2 = Integer.valueOf(((String[]) list.get(k))[1]);
                if (i1 < i2) {
                    String[] s = (String[]) list.get(i);
                    list.set(i, list.get(k));
                    list.set(k, s);
                }
            }
        }

        return list;
    }

    @Override
    public LinkedList getVirtualTodayRanking() {

        Jedis j = RedisTools.getJedis();

        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        Map map = j.hgetAll(PropertiesTools.VIRTUAL_TOTAL_LIST + sdf.format(new Date()));

        RedisTools.returnResource(j);


        LinkedList list = new LinkedList();
        for (Object o : map.keySet()) {
            list.add(new String[]{o + "", map.get(o).toString()});
        }

        for (int i = 0; i < list.size(); i++) {
            for (int k = i; k < list.size(); k++) {
                int i1 = Integer.valueOf(((String[]) list.get(i))[1]);
                int i2 = Integer.valueOf(((String[]) list.get(k))[1]);
                if (i1 < i2) {
                    String[] s = (String[]) list.get(i);
                    list.set(i, list.get(k));
                    list.set(k, s);
                }
            }
        }

        return list;
    }

    @Override
    public boolean regUser(String user_id, String user_name, String user_pwd) {
        if (update("UPDATE tb_user_info SET login_name = ?, login_pwd = ? WHERE user_id = ?", user_name, user_pwd, user_id) > 0) {
            return true;
        }
        return false;
    }

}
