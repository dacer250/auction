package com.iface.admin;

import com.frame.bean.PageBean;

import java.util.Map;

/**
 * Created by mabo on 2017/7/13.
 */
public interface GoodsIface {
    public void pageBean(PageBean pageBean);

    public Map edit(String id);
}
