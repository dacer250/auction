package com.service.Core;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.frame.util.SystemUtil;
import com.iface.Core.AgentsIface;

/**
 * 代理商
 * Created by Administrator on 2017/4/11.
 */
public class AgentsService extends BaseService implements AgentsIface {

    public void agentsList(PageBean pb) {

        /*pb.setProperty("RegDate");
        pb.setSortOrder("DESC");*/
        pb.setHql("SELECT t.*,u.wx_nick AS f_wx_n FROM tb_game_user_info t LEFT JOIN tb_user_info u ON t.AgencyID = u.agents_id " +
                " WHERE FIND_IN_SET(t.game_id,queryChildrenAgents(" + SystemUtil.getUserMap().get("game_id").toString() + "))" +
                " AND t.game_id <> " + SystemUtil.getUserMap().get("game_id")+" ORDER BY u.create_time ASC,RegDate DESC");
        this.page(pb);

    }
}
