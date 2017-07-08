package com.iface.main;

import java.util.List;
import java.util.Map;

/**
 * Created by mabo on 2017/7/6.
 */
public interface ClassifyIface {
    /**
     * 获得一级菜单信息
     *
     * @return
     */
    public List<Map<String, Object>> getClassInfoList();

    public Map getClassInfo(String id);

    public List<Map<String, Object>> getGoodsList(String class_id,int pn);
}
