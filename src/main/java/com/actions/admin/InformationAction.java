package com.actions.admin;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.admin.InformationIface;
import com.service.admin.InformationService;

/**
 * Created by mabo on 2017/7/14.
 */
public class InformationAction extends BaseAction {
    InformationIface getService() {
        return ServiceFactory.getBean(InformationService.class, InformationIface.class);
    }

    public String list() {
        setPageBean(this.initPageBean());
        getService().list(getPageBean());
        return render("list");
    }

    public String edit() {
        setObj(getService().edit(getId()));
        return render("edit");
    }

    public String update() {
        getService().save(getO());
        setId(getO().get("id"));
        return edit();
    }
}
