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
        return queryForList("SELECT * FROM class_info c WHERE c.`father_class` = 0 ORDER BY c.`sort`");
    }

    @Override
    public Map getClassInfo(String id) {
        Map map = new HashMap();
        map.put("obj", queryForMap("SELECT * FROM goods_info gi WHERE gi.id = ?", id));
        map.put("img_list", queryForList("SELECT * FROM goods_info_imgs gii WHERE gii.goods_id = ? ORDER BY gii.sort", id));

        return map;
    }


    @Override
    public List<Map<String, Object>> getGoodsList(String class_id, int pn) {
        int cols = 0;
        if (pn > 0) {
            cols = pn * 10;
        }

        return queryForList("SELECT * FROM (\n" +
                "SELECT g.*,gii.url FROM goods_info_imgs gii LEFT JOIN goods_info g ON gii.`goods_id` = g.`id` WHERE class_id = ? ORDER BY gii.`sort` DESC\n" +
                ") t GROUP BY id LIMIT " + cols + ",10", class_id);
    }

}
