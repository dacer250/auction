package com.service.Core;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.frame.util.SystemUtil;
import com.iface.Core.GiveIface;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

/**
 * Created by Administrator on 2017/5/7.
 */
public class GiveService extends BaseService implements GiveIface {


    @Override
    public int addBill(String agents_id, String virtual, String rmb) {

        TransactionTemplate tt = new TransactionTemplate(new DataSourceTransactionManager(getDataSource()));
        tt.execute(new TransactionCallback<Object>() {
            public Object doInTransaction(TransactionStatus status) {


                Map map = new HashMap();
                map.put("create_time", new Date());
                map.put("agents_user_id", agents_id);
                map.put("virtual", virtual);
                map.put("rmb", rmb);

                saveOrUpdate(map, "tb_agents_bill");
                //更新代理剩余房卡数
                update("UPDATE tb_user_info SET virtual = virtual + ? WHERE id = ?", virtual, SystemUtil.getUserMap().get("id"));
                long v = Long.valueOf(SystemUtil.getUserMap().get("virtual").toString());
                SystemUtil.getUserMap().put("virtual", v + Long.valueOf(virtual));

                return null;
            }
        });

        return 0;
    }

    @Override
    public void billList(PageBean pageBean) {
        pageBean.setHql("SELECT * FROM tb_agents_bill t WHERE t.agents_user_id = " + SystemUtil.getUserMap().get("id"));
        this.page(pageBean);
    }

    @Override
    public int userGive(String agents_id, String game_id, String virtual) {

        TransactionTemplate tt = new TransactionTemplate(new DataSourceTransactionManager(getDataSource()));
        tt.execute(new TransactionCallback<Object>() {
            public Object doInTransaction(TransactionStatus status) {


                //添加所属关系
                Map map = new HashMap();
                map.put("agents_user_id", agents_id);
                map.put("game_user_id", game_id);
                map.put("type", "1");
                try {
                    saveOrUpdate(map, "tb_user_give_bind");
                } catch (Exception e) {

                }


                /**
                 * 先同步游戏用户房卡数据
                 * 更新到代理后台游戏用户表中
                 * 再增加
                 */

                //添加分配记录
                map = new HashMap();
                map.put("create_time", new Date());
                map.put("agents_id", agents_id);
                map.put("game_user_id", game_id);
                map.put("virtual", virtual);
                saveOrUpdate(map, "tb_user_give");

                //更新游戏用户房卡数
                update("UPDATE tb_game_user_info SET virtual = virtual + ? WHERE game_id = ?", virtual, game_id);

                //更新代理剩余房卡数
                update("UPDATE tb_user_info SET virtual = virtual - ? WHERE id = ?", virtual, SystemUtil.getUserMap().get("id"));
                long v = Long.valueOf(SystemUtil.getUserMap().get("virtual").toString());
                SystemUtil.getUserMap().put("virtual", v - Long.valueOf(virtual));

                return null;
            }
        });

        return 0;
    }

    @Override
    public void getUserGiveBindList(PageBean pageBean) {
        pageBean.setSortOrder("ASC");
        pageBean.setProperty("virtual");
        pageBean.setHql("SELECT * FROM (\n" +
                "\tSELECT ugb.*,gui.virtual,gui.wx_avatar,gui.wx_id,gui.wx_nick FROM tb_user_give_bind ugb \n" +
                "\tLEFT JOIN tb_game_user_info gui ON ugb.game_user_id = gui.game_id WHERE ugb.agents_user_id = " + SystemUtil.getUserMap().get("id") + "\n" +
                ") t WHERE 1=1 ");
        this.page(pageBean);
    }

    @Override
    public void getUserGiveList(PageBean pageBean) {
        pageBean.setHql("SELECT * FROM (\n" +
                "SELECT ug.*,gui.wx_avatar,gui.wx_nick,gui.virtual AS virtual_all FROM tb_user_give ug \n" +
                "LEFT JOIN tb_game_user_info gui ON ug.game_user_id = gui.game_id\n" +
                "WHERE ug.agents_id = " + SystemUtil.getUserMap().get("id") + "\n" +
                ") t WHERE 1=1");
        this.page(pageBean);
    }

    @Override
    public Map getUserGive(String game_id) {
        return queryForMap("SELECT * FROM tb_game_user_info t WHERE t.game_id = ?", game_id);
    }


}
