package com.actions.pc;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.main.IndexIface;
import com.service.main.IndexService;

import java.util.HashMap;
import java.util.Map;

public class IndexAction extends BaseAction {
    IndexIface getService() {
        return ServiceFactory.getBean(IndexService.class, IndexIface.class);
    }

    public String show(){
        Map map = new HashMap();
        map.put("swiper", getService().getSwiper());
        map.put("boutique", getService().getBoutique());
        map.put("ranking", getService().getRanking());

        SystemUtil.setSession("classinfo", getService().getClassInfo());
        //map.put("classinfo", getService().getClassInfo());
        setObj(map);
        return render("show");



    }
}
