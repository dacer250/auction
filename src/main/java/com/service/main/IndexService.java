package com.service.main;

import com.frame.base.BaseService;
import com.iface.main.IndexIface;

import java.util.List;
import java.util.Map;

/**
 * Created by MHOME on 2017/7/2.
 */
public class IndexService extends BaseService implements IndexIface {
    @Override
    public List<Map<String, Object>> getSwiper() {
        return queryForList("SELECT gi.`goods_id`,gi.`url` FROM goods_info_imgs gi WHERE gi.`id` IN (\n" +
                "SELECT \n" +
                "  gii.`id` \n" +
                "FROM\n" +
                "  goods_info_imgs gii \n" +
                "  LEFT JOIN goods_info g \n" +
                "    ON gii.`goods_id` = g.`id` \n" +
                "WHERE g.`status` & 2 = 2 \n" +
                "ORDER BY gii.`sort` DESC\n" +
                ") GROUP BY gi.`goods_id`");
    }

    @Override
    public List<Map<String, Object>> getBoutique() {
        return queryForList("SELECT gi.`goods_id`,gi.`url` FROM goods_info_imgs gi WHERE gi.`id` IN (\n" +
                "SELECT \n" +
                "  gii.`id` \n" +
                "FROM\n" +
                "  goods_info_imgs gii \n" +
                "  LEFT JOIN goods_info g \n" +
                "    ON gii.`goods_id` = g.`id` \n" +
                "WHERE g.`status` & 4 = 4 \n" +
                "ORDER BY gii.`sort` DESC\n" +
                ") GROUP BY gi.`goods_id`");
    }

    @Override
    public List<Map<String, Object>> getRanking() {
        return queryForList("SELECT gi.*,t.url FROM goods_info gi LEFT JOIN (\n" +
                "\tSELECT \n" +
                "\t\t*\n" +
                "\tFROM\n" +
                "\t\tgoods_info_imgs gii \n" +
                "\tORDER BY gii.`sort` DESC\n" +
                ")t ON gi.id = t.goods_id\n" +
                "\tWHERE gi.`status` & 8 = 8\n" +
                "GROUP BY gi.id");
    }

}
