package com.iface.admin;

import com.frame.bean.PageBean;

import java.util.Map;

/**
 * Created by mabo on 2017/7/14.
 */
public interface InformationIface {
    public void list(PageBean pb);

    public Map edit(String id);

    public void save(Map map);

    public void del(String id);
}
