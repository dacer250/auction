package com.service.Core;

import com.frame.base.BaseService;
import com.iface.Core.ExtractIface;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/3/23.
 */
public class ExtractService extends BaseService implements ExtractIface {


    @Override
    public int updateExtracStatus(String id) {
        if (queryForList("SELECT * FROM tb_income_details t WHERE  t.id = ? AND t.extract_status = 2",id).size() <= 0) {
            return 0;
        }
        Map map = new HashMap();
        map.put("id", id);
        map.put("extract_status", "4");
        map.put("extract_date", new Date());
        return saveOrUpdate(map, "tb_income_details");
    }
}
