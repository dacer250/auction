package com.actions.admin;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.admin.GoodsIface;
import com.service.admin.GoodsService;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by MHOME on 2017/7/12.
 */
public class GoodsAction extends BaseAction{

    GoodsIface getService() {
        return ServiceFactory.getBean(GoodsService.class, GoodsIface.class);
    }


    public String list() {
        this.setPageBean(this.initPageBean());
        getService().pageBean(getPageBean());
        return render("list");
    }

    public String edit() {
        Map map = getService().edit(getId());
        map.put("classinfo", getService().getClassInfo());
        setObj(map);
        return render("edit");
    }

    public String update() {
        if (getO().get("status_s") != null && !getO().get("status_s").equals("")) {
            String[] ss = getO().get("status_s").split(",");

            int status = 0;
            for (String s : ss) {
                status = status | Integer.valueOf(s.trim());
            }
            getO().remove("status_s");
            getO().put("status", status + "");
        }else{
            getO().put("status", "0");
        }

        if (!getO().containsKey("type")) {
            getO().put("type", "2");
        }
        getService().update(getO());
        setId(getO().get("id"));
        return edit();
    }

    public String imgList_ajax() {
        return json(getService().imgList(getId()));
    }

    public String addImgList_ajax() {
        getService().addImg(getId(), getO().get("url"));
        setMsg_page_body("0");
        return _msgpage;
    }

    public String delImg_ajax() {
        setMsg_page_body(getService().delImg(getId()) + "");
        return _msgpage;
    }

    public String sortImg_ajax() {
        setMsg_page_body(getService().sortImg(getId(), getO().get("sort").toString()) + "");
        return _msgpage;
    }
}
