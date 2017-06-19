package com.iface.Core;

import com.frame.bean.PageBean;

import java.util.Map;

/**
 * Created by Administrator on 2017/5/7.
 */
public interface GiveIface {
    public int addBill(String agents_id, String virtual, String rmb);

    public void billList(PageBean pageBean);

    /**
     * 房卡分配
     *
     * @param agents_id
     * @param game_id
     * @param virtual
     * @return
     */
    public int userGive(String agents_id, String game_id, String virtual);


    public void getUserGiveBindList(PageBean pageBean);

    public void getUserGiveList(PageBean pageBean);

    public Map getUserGive(String game_id);
}
