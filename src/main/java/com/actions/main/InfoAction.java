package com.actions.main;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.main.IndexIface;
import com.iface.main.InfoIface;
import com.service.main.IndexService;
import com.service.main.InfoService;

/**
 * Created by MHOME on 2017/7/5.
 */
public class InfoAction extends BaseAction {

    InfoIface getService() {
        return ServiceFactory.getBean(InfoService.class, InfoIface.class);
    }

    public String show() {
        return render("show");
    }

    public String list_ajax() {
        return json(getService().getList(Integer.valueOf(getO().get("pn").toString())));
    }
}
