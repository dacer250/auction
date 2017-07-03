package com.actions.main;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.main.IndexIface;
import com.service.main.IndexService;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by MHOME on 2017/7/2.
 */
public class IndexAction extends BaseAction {

    IndexIface getService() {
        return ServiceFactory.getBean(IndexService.class, IndexIface.class);
    }

    public String show(){
        Map map = new HashMap();
        map.put("swiper", getService().getSwiper());
        setObj(map);
        return render("show");
    }
}
