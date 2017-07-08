package com.actions.main;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.main.ClassifyIface;
import com.service.main.ClassifyService;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by mabo on 2017/7/6.
 */
public class ClassifyAction extends BaseAction {

    ClassifyIface getService() {
        return ServiceFactory.getBean(ClassifyService.class, ClassifyIface.class);
    }

    public String show() {
        Map map = new HashMap();
        if (getId() != null && !getId().equals("")) {
            setId(getId());
        } else {
            setId("1");
        }

        map.put("classinfoList", getService().getClassInfoList());
        setObj(map);
        return render("show");
    }

    public String list_ajax() {
        return json(getService().getGoodsList(getId(), Integer.valueOf(getO().get("pn").toString())));
    }

    public String getContent() {
        setObj(getService().getClassInfo(getId()));
        return render("content");
    }
}
