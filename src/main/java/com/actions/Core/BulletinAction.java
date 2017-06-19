package com.actions.Core;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.Base.UserInfoIface;
import com.iface.Core.BulletinIface;
import com.service.Base.UserInfoService;
import com.service.Core.BulletinService;

/**
 * 公告
 * Created by Administrator on 2017/3/9.
 */
public class BulletinAction extends BaseAction {

    BulletinIface getService() {
        return ServiceFactory.getBean(BulletinService.class, BulletinIface.class);
    }

    public String list() {

        setPageBean(initPageBean());
        getPageBean().setPagesize(5);
        getPageBean().setFiltermap(getF());
        getService().list(getPageBean());
        return render("list");
    }
}
