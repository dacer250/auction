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
        getPageBean().setFiltermap(getF());
        getService().list(getPageBean());
        return render("list");
    }

    public String edit() {
        setObj(getService().edit(getId()));
        return render("edit");
    }

    public String add() {
        return render("edit");
    }

    public String update() {
        if (!getO().containsKey("type")) {
            getO().put("type", "2");
        }

        getService().save(getO());
        setId(String.valueOf(getO().get("id")));
        return edit();
    }

    public String del() {
        getService().del(getId());
        return list();
    }

    public String upSort() {
        getService().upSort(getId(),getO().get("sort"));
        return list();
    }
}
