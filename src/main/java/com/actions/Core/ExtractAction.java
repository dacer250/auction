package com.actions.Core;

import com.frame.base.BaseAction;
import com.frame.factory.ServiceFactory;
import com.frame.util.SystemUtil;
import com.iface.Base.UserInfoIface;
import com.iface.Core.ExtractIface;
import com.iface.Core.IncomeIface;
import com.service.Base.UserInfoService;
import com.service.Core.ExtractService;
import com.service.Core.IncomeService;

import java.util.Calendar;
import java.util.Date;

/**
 * 提现申请
 * Created by Administrator on 2017/3/23.
 */
public class ExtractAction extends BaseAction {

    IncomeIface getIncomeService() {
        return ServiceFactory.getBean(IncomeService.class, IncomeIface.class);
    }

    UserInfoIface getUserInfoService() {
        return ServiceFactory.getBean(UserInfoService.class, UserInfoIface.class);
    }

    ExtractIface getExtracService() {
        return ServiceFactory.getBean(ExtractService.class, ExtractIface.class);
    }

    /**
     * 接受提现申请
     *
     * @return
     */
    public String extractApplication() {
        if (getExtracService().updateExtracStatus(getO().get("id")) > 0) {
            addMsg("提现申请成功，佣金将于1个工作日之内到账");
            return extractList();
        }
        addError("提现申请失败");
        return extractList();
    }


    /**
     * 保存提现账号信息
     *
     * @return
     */
    public String saveAlipay() {

        if (!getUserInfoService().checkSMS(getO().get("user_phone").toString(), getO().get("postSMS_code").toString())) {
            addError("手机验证码填写错误");
            setObj(getO());
            return extractList();
        }
        getO().remove("postsms_code");

        if (getUserInfoService().edit(getO()) > 0) {
            SystemUtil.getUserMap().put("user_name", getO().get("user_name"));
            SystemUtil.getUserMap().put("alipay_id", getO().get("alipay_id"));
            addMsg("提现信息保存成功");

            return extractList();
        }
        addError("信息保存错误");

        return extractList();
    }

    public String extractAlipay() {
        return render("extractAlipay");
    }

    /**
     * 提现记录
     *
     * @return
     */
    public String extractList() {
        //如果支付宝账号为空，则跳转至添加支付宝信息页面
        if (SystemUtil.getUserMap().get("alipay_id") == null || SystemUtil.getUserMap().get("alipay_id").equals("")) {
            return extractAlipay();
        }

        if (getF().get("d1") == null) {
            Calendar c = Calendar.getInstance();
            c.setTime(new Date());
            c.add(Calendar.DATE, -30);
            getF().put("d1", SystemUtil.sdfDate().format(c.getTime()));

        }
        if (getF().get("d2") == null) {
            getF().put("d2", SystemUtil.sdfDate().format(new Date()));
        }
        getF().put("game_id", SystemUtil.getUserMap().get("game_id").toString());

        setPageBean(initPageBean());
        getIncomeService().incomeSum(getPageBean());

        return render("extractList");
    }


}
