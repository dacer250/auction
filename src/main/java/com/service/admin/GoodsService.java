package com.service.admin;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.iface.admin.GoodsIface;

import java.util.Date;
import java.util.HashMap;
import java.util.List;
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
        return queryForMap("SELECT * FROM goods_info g WHERE g.id = ?", id);
    }

    @Override
    public void del(String... ids) {
        for (String id : ids) {
            deleteById("goods_info", id);
        }
    }

    @Override
    public int update(Map map) {
        return saveOrUpdate(map, "goods_info");
    }

    public List imgList(String id) {
        return queryForList("SELECT * FROM goods_info_imgs gi WHERE gi.goods_id = ? ORDER BY sort DESC", id);
    }

    @Override
    public void addImg(String id, String url) {
        Map map = new HashMap();
        map.put("create_date", new Date());
        map.put("goods_id", id);
        map.put("url", url);
        saveOrUpdate(map, "goods_info_imgs");
    }

    @Override
    public int delImg(String id) {
        return update("DELETE FROM goods_info_imgs WHERE id = ?", id);
    }

    @Override
    public int sortImg(String id, String sort) {
        return update("UPDATE goods_info_imgs SET sort = sort + ? WHERE id = ?", sort, id);
    }

    @Override
    public List getClassInfo() {
        return queryForList("SELECT * FROM class_info ci WHERE father_class = 0 AND type = 1 ORDER BY sort DESC");
    }

}
