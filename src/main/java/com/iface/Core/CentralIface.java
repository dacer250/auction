package com.iface.Core;

import java.util.LinkedList;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/1/3.
 */
public interface CentralIface {

    /**
     * 用户信息
     * @param userId
     * @param uuid
     * @return 用户信息 & 投注信息
     */
    public Map getUserInfo(String userId, String uuid, String user_name, String user_pwd);

    /**
     * 创建新用户
     * @return
     */
    public int createUser(String cookies_uuid);

    /**
     * 投注
     * @param userId
     * @param uuid
     * @param fishId
     * @param bets
     * @return
     */
    public Map betting(String userId, String uuid, String fishId, String bets);


    /**
     * 开奖信息
     * @param uuid
     * @return
     */
    public List<Map<String, Object>> getLotteryInfo(String uuid);
    /**
     * 开奖信息
     * @param uuid
     * @return
     */
    public List<Map<String, Object>> getVirtualLotteryInfo(String uuid);


    /**
     * 历史记录
     * @return
     */
    public List<Map<String, Object>> getHistory();
    /**
     * 历史记录
     * @return
     */
    public List<Map<String, Object>> getVirtualHistory();


    /**
     * 当日排名
     * @return
     */
    public LinkedList getTodayRanking();

    public LinkedList getVirtualTodayRanking();

    public boolean regUser(String user_id, String user_name, String user_pwd);

}
