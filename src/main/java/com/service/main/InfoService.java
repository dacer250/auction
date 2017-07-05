package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.InfoIface;

import java.util.List;

/**
 * Created by MHOME on 2017/7/5.
 */
public class InfoService extends BaseService implements InfoIface {
    @Override
    public List getList(int rows) {
        int cols = 0;
        if (rows > 0) {
            cols = rows * 10;
        }
        return queryForList("SELECT * FROM information i WHERE i.`type` = 1 LIMIT " + cols + ",10");
    }
}
