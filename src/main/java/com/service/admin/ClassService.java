package com.service.admin;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.iface.admin.ClassIface;

import java.util.Map;

/**
 * Created by mabo on 2017/7/14.
 */
public class ClassService extends BaseService implements ClassIface {
    @Override
    public void list(PageBean pb) {
        pb.setSortOrder("DESC");
        pb.setProperty("sort");
        pb.setHql("SELECT * FROM class_info");
        this.page(pb);
    }

    @Override
    public Map edit(String id) {
        return queryForMap("SELECT * FROM class_info WHERE id = ?", id);
    }

    @Override
    public void save(Map map) {
        saveOrUpdate(map, "class_info");
    }

    @Override
    public void del(String id) {

    }
}
