package com.actions.admin;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.admin.GoodsIface;
import com.service.admin.GoodsService;

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
        setObj(getService().edit(getId()));
        return render("edit");
    }
}
