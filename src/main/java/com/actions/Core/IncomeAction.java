package com.actions.Core;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.Core.BulletinIface;
import com.iface.Core.IncomeIface;
import com.service.Core.BulletinService;
import com.service.Core.IncomeService;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * 收入详情
 * Created by Administrator on 2017/3/10.
 */
public class IncomeAction extends BaseAction {


    IncomeIface getService() {
        return ServiceFactory.getBean(IncomeService.class, IncomeIface.class);
    }

    //收入汇总
    public String incomeSum() {

        if (getF().get("d1") == null) {
            getF().put("d1", SystemUtil.sdfDate().format(new Date()));
        }
        if (getF().get("d2") == null) {
            getF().put("d2", SystemUtil.sdfDate().format(new Date()));
        }
        getF().put("game_id", SystemUtil.getUserMap().get("game_id").toString());

        setPageBean(initPageBean());
        getService().incomeSum(getPageBean());

        return render("incomeSum");
    }

    /**
     * 收入明细
     * @return
     */
    public String incomeDetails() {
        setPageBean(initPageBean());
        String json = getService().incomeDetails(getPageBean(), SystemUtil.getUserMap().get("game_id").toString());

        Map map = new HashMap();
        map.put("json", json);
        setObj(map);

        setF(getF());

        return render("incomeDetails");
    }
}
