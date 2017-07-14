package com.iface.admin;

import com.frame.bean.PageBean;

import java.util.List;
import java.util.Map;

/**
 * Created by mabo on 2017/7/13.
 */
public interface GoodsIface {
    public void pageBean(PageBean pageBean);

    public Map edit(String id);

    public int update(Map map);

    public List imgList(String id);

    public void addImg(String id, String url);

    public int delImg(String id);

    public int sortImg(String id, String sort);


    public List getClassInfo();
}
