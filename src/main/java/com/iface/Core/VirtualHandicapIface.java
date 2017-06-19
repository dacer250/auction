package com.iface.Core;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/1/3.
 */
public interface VirtualHandicapIface {
    /**
     * 初始化赔率
     */
    public void init_odds();


    /**
     * 初始化鱼池
     */
    public List init_fishPool();


    /**
     * 开局
     */
    public void start();

    /**
     * 下注
     */
    public boolean betting(String gamblingUUID, long uid, int fishId, int bets);

    /**
     * 开奖
     */
    public String lottery(String uuid);

    /**
     * 结算
     */
    public Map income(String uuid);
}
