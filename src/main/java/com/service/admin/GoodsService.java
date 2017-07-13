package com.service.admin;

import com.frame.base.BaseAction;
import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.iface.admin.GoodsIface;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by mabo on 2017/7/13.
 */
public class GoodsService extends BaseService implements GoodsIface {
    @Override
    public void pageBean(PageBean pageBean) {
        pageBean.setSortOrder("DESC");
        pageBean.setProperty("sort");

        pageBean.setHql("SELECT * FROM (\n" +
                "SELECT g.*,c.class_name FROM goods_info g LEFT JOIN class_info c ON g.class_id = c.id\n" +
                ")t");
        this.page(pageBean);
    }

    @Override
    public Map edit(String id) {
        Map map = new HashMap();
        map.put("obj", queryForMap("SELECT * FROM goods_info g WHERE g.id = ?", id));
        map.put("img_list", queryForList("SELECT * FROM goods_info_imgs gi WHERE gi.goods_id = ?", id));
        return map;
    }

}
