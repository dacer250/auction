package com.actions.Core;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.Core.GiveIface;
import com.service.Core.GiveService;

/**
 * 房卡、钻石分配
 * Created by Administrator on 2017/5/5.
 */
public class GiveAction extends BaseAction {

    GiveIface getService() {
        return ServiceFactory.getBean(GiveService.class, GiveIface.class);
    }

    public String showBill() {
        return render("bill");
    }

    /**
     * 充值
     *
     * @return
     */
    public String addBill() {
        String rmb = getO().get("virtual");
        getService().addBill(SystemUtil.getUserMap().get("id").toString(),
                getO().get("virtual"),
                rmb);
        return billList();
    }

    /**
     * 充值列表
     */
    public String billList() {
        setPageBean(initPageBean());
        getService().billList(getPageBean());
        return render("billList");
    }

    /**
     * 房卡分配
     *
     * @return
     */
    public String userGive() {
        getService().userGive(SystemUtil.getUserMap().get("id").toString(),
                getO().get("game_id"),
                getO().get("virtual"));
        return getUserGiveBindList();
    }

    public String getUserGiveBindList() {

        setPageBean(initPageBean());

        if (getO().get("game_id") != null) {
            if (!getO().get("game_id").equals("")) {
                setObj(getService().getUserGive(getO().get("game_id")));
                getF().put("game_user_id", getO().get("game_id"));
                getPageBean().setFiltermap(getF());
            }
        }

        getService().getUserGiveBindList(getPageBean());
        return render("userGiveBindList");
    }
    public String getUserGiveList(){
        setPageBean(initPageBean());
        getService().getUserGiveList(getPageBean());
        return render("userGiveList");
    }


}
