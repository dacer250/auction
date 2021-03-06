package com.service.admin;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.iface.admin.InformationIface;

import java.util.Date;
import java.util.Map;

/**
 * Created by mabo on 2017/7/14.
 */
public class InformationService extends BaseService implements InformationIface {
    @Override
    public void list(PageBean pb) {
        pb.setSortOrder("DESC");
        pb.setProperty("create_date");
        pb.setHql("SELECT * FROM information");
        this.page(pb);
    }

    @Override
    public Map edit(String id) {
        return queryForMap("SELECT * FROM information WHERE id = ?", id);
    }

    @Override
    public void save(Map map) {
        if (!map.containsKey("create_date")) {
            map.put("create_date", new Date());
        }
        saveOrUpdate(map, "information");
    }

    @Override
    public void del(String id) {
        deleteById("information", id);
    }

}
