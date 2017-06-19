package com.frame.base;

import com.frame.dao.JdbcDaoMySql;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by yibo on 2015/4/1.
 */
public class BaseService extends JdbcDaoMySql {
    protected Logger logger = LogManager.getLogger(this.getClass().getName());


    protected int status_1 = 2;
    protected int status_2 = 4;
    protected int status_3 = 8;
    protected int status_4 = 16;
    protected int status_5 = 32;
    protected int status_6 = 64;
    protected int status_7 = 128;

    protected Map readyData(Map map) {
        Map tMap = new HashMap<>();
        tMap.putAll(map);
        for (Object o : tMap.keySet()) {
            if (map.get(o) == null || map.get(o).toString().equals("")) {
                map.remove(o);
            }
        }
        return map;
    }
}
