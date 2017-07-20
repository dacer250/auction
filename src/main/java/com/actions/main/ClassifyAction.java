package com.actions.main;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.main.ClassifyIface;
import com.service.main.ClassifyService;

import java.util.HashMap;
import java.util.List;
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

        map.put("classinfoList", getService().getClassInfoList());

        if (getO().get("f") != null && !getO().get("f").equals("")) {
            map.put("f", getO().get("f"));
        } else {
            if (getId() != null && !getId().equals("")) {
                setId(getId());
            } else {
                setId(((List<Map<String, Object>>) map.get("classinfoList")).get(0).get("id").toString());
            }
        }

        setObj(map);
        return render("show");
    }

    public String list_ajax() {
        return json(getService().getGoodsList(getId(), Integer.valueOf(getO().get("pn").toString()), getO().get("f")));
    }

    public String getContent() {
        setObj(getService().getClassInfo(getId()));
        return render("content");
    }
}
