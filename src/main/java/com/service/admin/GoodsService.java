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


        String sql = "SELECT * FROM goods_info t";

        if (pageBean.getFiltermap().containsKey("cid")&& !pageBean.getFiltermap().get("cid").equals("")) {
            sql = "SELECT * FROM (\n" +
                    "SELECT g.*,ci.class_name,ci.id AS cid FROM class_goods cg \n" +
                    "LEFT JOIN class_info ci ON cg.class_id = ci.id \n" +
                    "LEFT JOIN goods_info g ON cg.goods_id = g.id)t";
        }

        String where = " WHERE t.status";
        if (pageBean.getFiltermap().containsKey("tj") && !pageBean.getFiltermap().get("tj").equals("")) {
            where = where + " & " + pageBean.getFiltermap().get("tj") + " = " + pageBean.getFiltermap().get("tj");
            pageBean.getFiltermap().remove("tj");
            sql = sql + where;
        }

        pageBean.setHql(sql);
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
        String[] classIds = map.get("class_id_s").toString().split(",");
        map.remove("class_id_s");

        if (saveOrUpdate(map, "goods_info") >= 1) {
            //保存对应分类
            update("DELETE FROM class_goods WHERE goods_id = ?", map.get("id"));
            Map tmap = new HashMap();
            for (String classId : classIds) {
                tmap.put("id", "");
                tmap.put("goods_id", map.get("id"));
                tmap.put("class_id", classId.trim());
                saveOrUpdate(tmap, "class_goods");
            }
        }

        return 1;
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

    @Override
    public List getClassGoods(String goods_id) {
        return queryForList("SELECT * FROM class_goods t WHERE t.goods_id = ?", goods_id);
    }

    @Override
    public void upSort(String id, String sort) {
        update("UPDATE goods_info SET sort = sort + ? WHERE id = ?", sort, id);
    }

}
