package com.actions.main;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.main.OtherInfoIface;
import com.service.main.OtherInfoService;

public class OtherInfoAction extends BaseAction {
    OtherInfoIface getService() {
        return ServiceFactory.getBean(OtherInfoService.class, OtherInfoIface.class);
    }

    public String about() {
        setObj(getService().about());
        return render("about");
    }

    public String contact() {
        setObj(getService().contact());
        return render("contact");
    }
}
