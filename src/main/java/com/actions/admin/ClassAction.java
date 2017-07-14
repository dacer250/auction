package com.actions.admin;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.admin.ClassIface;
import com.service.admin.ClassService;

/**
 * Created by mabo on 2017/7/14.
 */
public class ClassAction extends BaseAction {
    ClassIface getService() {
        return ServiceFactory.getBean(ClassService.class, ClassIface.class);
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
