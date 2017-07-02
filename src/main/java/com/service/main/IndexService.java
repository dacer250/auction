package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.IndexIface;

import java.awt.*;

/**
 * Created by MHOME on 2017/7/2.
 */
public class IndexService extends BaseService implements IndexIface {
    @Override
    public List getSwiper() {
       z queryForList("SELECT g.`id`,g.`imgs`,g.`sort` FROM goods_info g WHERE g.`status` & 2 = 2 ORDER  BY g.`sort`");
        return null;
    }
}
