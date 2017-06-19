package com.iface.Core;

import com.frame.bean.PageBean;

import java.util.Date;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/10.
 */
public interface IncomeIface {

    /**
     * 收入汇总
     * @param pageBean
     */
    public void incomeSum(PageBean pageBean);


    /**
     * 收入明细
     * @param pageBean
     * @param game_id
     * @return
     */
    public String incomeDetails(PageBean pageBean, String game_id);

    /**
     * 同步游戏用户数据
     */
    public void synchronizeUserInfo(Date date1,Date date2);

    /**
     * 同步代理商数据
     */
    public void synchronizeAgencyInfo(Date date1,Date date2);


    /**
     * 同步充值数据
     */
    public void synchronizeRecharge(Date date1,Date date2);

    /**
     * 每5分钟运行一次，统计近5分钟充值和分成
     */
    public void runIncomeDetails(Date date1, Date date2);

    public void runIncomeDetailsForDate(Date date1);

    public Map channelBillSum(Map map);


}
