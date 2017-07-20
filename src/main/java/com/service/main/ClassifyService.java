package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.ClassifyIface;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by mabo on 2017/7/6.
 */
public class ClassifyService extends BaseService implements ClassifyIface {
    @Override
    public List<Map<String, Object>> getClassInfoList() {
        return queryForList("SELECT * FROM class_info c WHERE c.`father_class` = 0 ORDER BY c.`sort` DESC ");
    }

    @Override
    public Map getClassInfo(String id) {
        Map map = new HashMap();
        map.put("obj", queryForMap("SELECT * FROM goods_info gi WHERE gi.id = ?", id));
        map.put("img_list", queryForList("SELECT * FROM goods_info_imgs gii WHERE gii.goods_id = ? ORDER BY gii.sort DESC ", id));

        return map;
    }


    @Override
    public List<Map<String, Object>> getGoodsList(String class_id, int pn, String f) {
        int cols = 0;
        if (pn > 0) {
            cols = pn * 10;
        }
        String or = "class_id = '"+class_id+"' ";
        if (f != null && !f.equals("")) {
            or = " (g.`name` like '%" + f + "%' OR g.short like '%" + f + "%' OR g.synopsis_html like '%" + f + "%') \n";
        }

        return queryForList("SELECT * FROM (\n" +
                "SELECT g.*,gii.url FROM goods_info g LEFT JOIN goods_info_imgs gii ON gii.`goods_id` = g.`id` " +
                "WHERE " + or +
                "ORDER BY gii.`sort` DESC\n" +
                ") t GROUP BY id LIMIT " + cols + ",10");
    }

}
