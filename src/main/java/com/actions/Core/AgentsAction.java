package com.actions.Core;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.iface.Core.AgentsIface;
import com.service.Core.AgentsService;

/**
 * 代理商
 * Created by Administrator on 2017/4/11.
 */
public class AgentsAction extends BaseAction {

    AgentsIface getService() {
        return ServiceFactory.getBean(AgentsService.class, AgentsIface.class);
    }

    public String agentsList() {

        setPageBean(initPageBean());
        getService().agentsList(getPageBean());

        return render("list");
    }
}
