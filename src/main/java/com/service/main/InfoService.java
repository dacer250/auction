package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.InfoIface;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by MHOME on 2017/7/5.
 */
public class InfoService extends BaseService implements InfoIface {
    @Override
    public List getList(int pn) {
        int cols = 0;
        if (pn > 0) {
            cols = pn * 10;
        }
        return queryForList("SELECT * FROM information i WHERE i.`type` = 1 ORDER BY i.`create_date` DESC LIMIT " + cols + ",10");
    }

    @Override
    public Map content(String id) {
        return queryForMap("SELECT * FROM `information` i WHERE i.`id` = ?", id);
    }
}
