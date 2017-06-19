package com.service.Core;

import com.frame.base.BaseService;
import com.frame.bean.PageBean;
import com.frame.util.PropertiesTools;
import com.frame.util.SystemUtil;
import com.iface.Core.IncomeIface;
import net.sf.json.JSONObject;
import org.springframework.dao.DuplicateKeyException;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.TransactionCallback;
import org.springframework.transaction.support.TransactionTemplate;

import java.sql.*;
import java.text.ParseException;
import java.util.*;
import java.util.Date;

/**
 * Created by Administrator on 2017/3/10.
 */
public class IncomeService extends BaseService implements IncomeIface {

    @Deprecated
    public void channelBill(PageBean pageBean) {
        /*SELECT * FROM tb_channel_bill cb LEFT JOIN (
                SELECT ui.id FROM tb_user_info ui WHERE FIND_IN_SET(ui.id,queryChildrenAreaInfo(9999))
            ) tt ON cb.user_id = tt.id*/
        String sql = "SELECT * FROM \n" +
                "(SELECT cb.id,sum(cb.add_rmb) AS add_rmb,sum(cb.add_virtual) AS add_virtual,sum(cb.less_virtual) AS less_virtual,sum(cb.dau) AS dau,min(tt.user_name),tt.`desc` FROM tb_channel_bill cb LEFT JOIN (\n" +
                "                SELECT ui.id,ui.user_name,ui.`desc` FROM tb_user_info ui WHERE FIND_IN_SET(ui.id,queryChildrenAreaInfo(" + pageBean.getFiltermap().get("id") + "))\n" +
                "            ) tt ON cb.user_id = tt.id WHERE cb.bill_date >= '" + pageBean.getFiltermap().get("d1") + "' AND cb.bill_date <= '" + pageBean.getFiltermap().get("d2") + "' GROUP BY tt.id" +
                ") t";

        Map tf = new HashMap();
        tf = pageBean.getFiltermap();
        pageBean.setFiltermap(new HashMap());

        pageBean.setHql(sql);
        this.page(pageBean);

        pageBean.setFiltermap(tf);

    }


    @Override
    public void incomeSum(PageBean pageBean) {
        pageBean.setHql("SELECT * FROM tb_income_details t WHERE t.income_date >= '" +
                pageBean.getFiltermap().get("d1") + "' AND t.income_date <= '" +
                pageBean.getFiltermap().get("d2") + "' AND t.game_id = '" +
                pageBean.getFiltermap().get("game_id").toString() + "'");
        pageBean.setFiltermap(new HashMap());
        this.page(pageBean);
    }

    @Override
    public String incomeDetails(PageBean pageBean, String game_id) {
        List<java.util.Map<String, Object>> list = queryForList("SELECT queryChildrenAgentsAndLive(?) AS c;", game_id);
        String json = null;
        Map map = new HashMap();
        if (list.size() > 0) {
            json = list.get(0).get("c").toString().split("#")[1];
            json = "{" + json.substring(1, json.length()) + "}";
            JSONObject jo = JSONObject.fromObject(json);

            for (Object o : jo.keySet()) {
                String[] ss = jo.get((String) o).toString().split(",");
                for (Object o1 : ss) {
                    map.put(o1, o);
                }
            }
        }

        String sql = "SELECT u.game_id AS u_g_id,u.wx_nick,u.wx_avatar,i.* FROM tb_game_user_info u  LEFT JOIN  tb_income_details i \n" +
                "ON i.game_id = u.game_id WHERE FIND_IN_SET(u.game_id,queryChildrenAgents(" + game_id + ")) AND (i.income_date = '" + pageBean.getFiltermap().get("income_date") +
                "' OR i.income_date is null) AND i.recharge is not NULL";
        logger.debug(sql);

        pageBean.setFiltermap(new HashMap());

        pageBean.setHql(sql);

        this.page(pageBean);

        return JSONObject.fromObject(map).toString();
    }

    public Map channelBillSum(Map map) {

        String sql = "SELECT cb.user_id,sum(cb.add_rmb) AS add_rmb,sum(cb.add_virtual) AS add_virtual,sum(cb.less_virtual) AS less_virtual,sum(cb.dau) AS dau FROM tb_channel_bill cb LEFT JOIN (\n" +
                "                SELECT ui.id FROM tb_user_info ui WHERE FIND_IN_SET(ui.id,queryChildrenAreaInfo(" + map.get("id") + "))\n" +
                "            ) tt ON cb.user_id = tt.id WHERE cb.bill_date >= '" + map.get("d1") + "' AND cb.bill_date <= '" + map.get("d2") + "'";

        return queryForList(sql).get(0);

    }

    public void synchronizeUserInfo(Date date1, Date date2) {

        String connectionUrl = "jdbc:sqlserver://183.61.146.17:1433;"
                + "databaseName=AdventureWorks;integratedSecurity=true;";
        String url = "jdbc:sqlserver://183.61.146.17:1433;databaseName=awqp_db;user=YYhnmj11_db;password=YYsjkmm9393_11";//sa身份连接

        // Declare the JDBC objects.
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url);

            String SQL = "SELECT TUsers.UserID,UserName,AgencyID,RegIP,RegDate,Token,NickName,HeadStr,Sex FROM \n" +
                    "TUsers LEFT JOIN TUserInfo ON TUsers.UserID = TUserInfo.UserID" +
                    " WHERE RegDate > '" + SystemUtil.sdfDateTime().format(date1) + "' AND RegDate < '" + SystemUtil.sdfDateTime().format(date2) + "'";
            logger.debug(SQL);

            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);

            Map row = new HashMap();
            while (rs.next()) {
                try {
                    row.put("game_id", rs.getString(1));
                    row.put("UserName", rs.getString(2));
                    row.put("AgencyID", rs.getString(3));
                    row.put("RegIP", rs.getString(4));
                    row.put("RegDate", rs.getString(5));
                    row.put("wx_id", rs.getString(6));
                    row.put("wx_nick", rs.getString(7));
                    row.put("wx_avatar", rs.getString(8));
                    saveOrUpdate(row, "tb_game_user_info");
                } catch (DuplicateKeyException e) {
                    //e.printStackTrace();
                }
            }
        }
        // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (Exception e) {
                }
            if (stmt != null)
                try {
                    stmt.close();
                } catch (Exception e) {
                }
            if (con != null)
                try {
                    con.close();
                } catch (Exception e) {
                }
        }


    }

    @Override
    public void synchronizeAgencyInfo(Date date1, Date date2) {


        String connectionUrl = "jdbc:sqlserver://183.61.146.17:1433;"
                + "databaseName=AdventureWorks;integratedSecurity=true;";
        String url = "jdbc:sqlserver://183.61.146.17:1433;databaseName=awqp_db;user=YYhnmj11_db;password=YYsjkmm9393_11";//sa身份连接

        // Declare the JDBC objects.
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url);

            String SQL = "SELECT TUsers.UserID,AgencyID FROM \n" +
                    "TUsers LEFT JOIN TUserInfo ON TUsers.UserID = TUserInfo.UserID" +
                    " WHERE LastLoginTM > '" + SystemUtil.sdfDateTime().format(date1) + "' AND LastLoginTM < '" + SystemUtil.sdfDateTime().format(date2) + "'";
            logger.debug(SQL);

            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);

            Map row = new HashMap();

            logger.debug(rs.getRow());
            while (rs.next()) {
                try {
                    row.put("game_id", rs.getString(1));
                    row.put("AgencyID", rs.getString(2));
                    update("UPDATE tb_game_user_info SET AgencyID = ? WHERE game_id = ?", row.get("AgencyID"), row.get("game_id"));
                } catch (DuplicateKeyException e) {
                    e.printStackTrace();
                }
            }
        }
        // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (Exception e) {
                }
            if (stmt != null)
                try {
                    stmt.close();
                } catch (Exception e) {
                }
            if (con != null)
                try {
                    con.close();
                } catch (Exception e) {
                }
        }

    }

    @Override
    public void synchronizeRecharge(Date date1, Date date2) {

        String connectionUrl = "jdbc:sqlserver://183.61.146.17:1433;"
                + "databaseName=AdventureWorks;integratedSecurity=true;";
        String url = "jdbc:sqlserver://183.61.146.17:1433;databaseName=awqp_db;user=YYhnmj11_db;password=YYsjkmm9393_11";//sa身份连接

        // Declare the JDBC objects.
        Connection con = null;
        Statement stmt = null;
        ResultSet rs = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            con = DriverManager.getConnection(url);

            String SQL = "SELECT ID,OrdersNo,TPOrders,TUsersID,ActualMoney,DoneDate,TypeInfo,Remark FROM Bzw_WOrders " +
                    "WHERE IsDone = 1 AND Type = 18 AND DoneDate > '" + SystemUtil.sdfDateTime().format(date1) + "' AND DoneDate < '" + SystemUtil.sdfDateTime().format(date2) + "'";
            logger.debug(SQL);

            stmt = con.createStatement();
            rs = stmt.executeQuery(SQL);

            while (rs.next()) {
                try {
                    update("INSERT INTO tb_savings(id,OrdersNo,TPOrders,game_id,savings_sum,savings_date,TypeInfo,Remark,`type`) VALUES (?,?,?,?,?,?,?,?,?)",
                            rs.getString(1),
                            rs.getString(2),
                            rs.getString(3),
                            rs.getString(4),
                            rs.getString(5),
                            rs.getString(6),
                            rs.getString(7),
                            rs.getString(8),
                            1);
                } catch (DuplicateKeyException e) {
                    //e.printStackTrace();
                }
            }
        }
        // Handle any errors that may have occurred.
        catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (rs != null)
                try {
                    rs.close();
                } catch (Exception e) {
                }
            if (stmt != null)
                try {
                    stmt.close();
                } catch (Exception e) {
                }
            if (con != null)
                try {
                    con.close();
                } catch (Exception e) {
                }
        }
    }


    @Override
    public void runIncomeDetails(Date date1, Date date2) {
        TransactionTemplate tt = new TransactionTemplate(new DataSourceTransactionManager(getDataSource()));
        tt.execute(new TransactionCallback<Object>() {
            public Object doInTransaction(TransactionStatus status) {
                List<Map<String, Object>> t_list;
                List<Map<String, Object>> t_list2;
                Map t_map;

                List<Map<String, Object>> savings_List = queryForList("SELECT * FROM tb_savings t WHERE t.savings_date > ? AND t.savings_date < ? AND t.type = 1;", date1, date2);


                for (Map<String, Object> map : savings_List) {
                    String d = SystemUtil.sdfDate().format(map.get("savings_date"));

                    //添加或更新用户充值记录
                    t_list = queryForList("SELECT * FROM tb_income_details t WHERE t.game_id = ? AND t.income_date = ?", map.get("game_id").toString(), d);
                    int savings_sum = Integer.valueOf(map.get("savings_sum").toString());
                    if (t_list.size() > 0) {
                        if (t_list.get(0).get("recharge") != null) {
                            savings_sum = savings_sum + Integer.valueOf(t_list.get(0).get("recharge").toString());
                        }
                        t_list.get(0).put("recharge", savings_sum);
                        saveOrUpdate(t_list.get(0), "tb_income_details");
                    } else {
                        t_map = new HashMap();
                        t_map.put("game_id", map.get("game_id"));
                        t_map.put("income_date", d);
                        t_map.put("recharge", savings_sum + "");
                        saveOrUpdate(t_map, "tb_income_details");
                    }

                    //计算返佣,三级
                    String game_id = map.get("game_id").toString();
                    logger.debug(game_id + " ===");
                    savingsFor:
                    for (int i = 0; i < 3; i++) {
                        t_list = queryForList("SELECT u.game_id AS father_game_id FROM tb_game_user_info g LEFT JOIN tb_user_info u ON g.AgencyID = u.agents_id WHERE g.game_id = ?", game_id);
                        if (t_list.size() > 0 && t_list.get(0).get("father_game_id") != null) {
                            game_id = t_list.get(0).get("father_game_id").toString();
                            if (game_id.equals("")) {
                                break;
                            }

                            t_list2 = queryForList("SELECT * FROM tb_income_details t WHERE t.game_id = ? AND t.income_date = ?", game_id, d);
                            Double brokerage = Double.valueOf(map.get("savings_sum").toString());
                            if (i == 0) {
                                brokerage = (brokerage * 0.4);
                            } else if (i == 1) {
                                brokerage = (brokerage * 0.15);
                            } else if (i == 2) {
                                brokerage = (brokerage * 0.05);
                            }

                            if (t_list2.size() > 0) {
                                Double t_b = 0.0;
                                if (t_list2.get(0).get("brokerage") != null) {
                                    t_b = Double.valueOf(t_list2.get(0).get("brokerage").toString());
                                }
                                brokerage = brokerage + t_b;
                                t_list2.get(0).put("brokerage", brokerage + "");
                                saveOrUpdate(t_list2.get(0), "tb_income_details");
                            } else {
                                t_map = new HashMap();
                                t_map.put("game_id", game_id);
                                t_map.put("income_date", d);
                                t_map.put("brokerage", brokerage + "");
                                saveOrUpdate(t_map, "tb_income_details");
                            }
                        } else {
                            continue savingsFor;
                        }
                    }
                    logger.debug("222 ===");
                    map.put("type", 2);
                    saveOrUpdate(map, "tb_savings");
                }
               return null;
            }
        });
        logger.debug("end ===");

    }


    public void runIncomeDetailsForDate(Date date) {
        TransactionTemplate tt = new TransactionTemplate(new DataSourceTransactionManager(getDataSource()));
        tt.execute(new TransactionCallback<Object>() {
            public Object doInTransaction(TransactionStatus status) {
                Date date1 = null, date2 = null;
                try {
                    date1 = SystemUtil.sdfDateTime().parse(
                            SystemUtil.sdfDate().format(date) + " 00:00:00"
                    );
                    date2 = SystemUtil.sdfDateTime().parse(
                            SystemUtil.sdfDate().format(new Date()) + " 00:00:00"
                    );
                } catch (ParseException e) {
                    e.printStackTrace();
                }

                //logger.debug("DELETE FROM tb_income_details WHERE income_date = '" + SystemUtil.sdfDate().format(date1) + "'");
                //update("DELETE FROM tb_income_details WHERE income_date = '" + SystemUtil.sdfDate().format(date1) + "'");


                List<Map<String, Object>> t_list;
                List<Map<String, Object>> t_list2;
                Map t_map;

                List<Map<String, Object>> savings_List = queryForList("SELECT * FROM tb_savings t WHERE t.savings_date > ? AND t.savings_date <= ? ;", date1, date2);

                savingsFor:
                for (Map<String, Object> map : savings_List) {
                    String d = SystemUtil.sdfDate().format(map.get("savings_date"));

                    //添加或更新用户充值记录
                    t_list = queryForList("SELECT * FROM tb_income_details t WHERE t.game_id = ? AND t.income_date = ?", map.get("game_id").toString(), d);
                    int savings_sum = Integer.valueOf(map.get("savings_sum").toString());
                    if (t_list.size() > 0) {
                        if (t_list.get(0).get("recharge") != null) {
                            savings_sum = savings_sum + Integer.valueOf(t_list.get(0).get("recharge").toString());
                        }
                        t_list.get(0).put("recharge", savings_sum);
                        saveOrUpdate(t_list.get(0), "tb_income_details");
                    } else {
                        t_map = new HashMap();
                        t_map.put("game_id", map.get("game_id"));
                        t_map.put("income_date", d);
                        t_map.put("recharge", savings_sum + "");
                        saveOrUpdate(t_map, "tb_income_details");
                    }

                    //计算返佣,三级
                    String game_id = map.get("game_id").toString();
                    logger.debug(game_id + " ===");

                    for (int i = 0; i < 3; i++) {
                        t_list = queryForList("SELECT u.game_id AS father_game_id FROM tb_game_user_info g LEFT JOIN tb_user_info u ON g.AgencyID = u.agents_id WHERE g.game_id = ?", game_id);
                        if (t_list.size() > 0 && t_list.get(0).get("father_game_id") != null) {
                            game_id = t_list.get(0).get("father_game_id").toString();
                            if (game_id.equals("")) {
                                break;
                            }

                            t_list2 = queryForList("SELECT * FROM tb_income_details t WHERE t.game_id = ? AND t.income_date = ?", game_id, d);
                            Double brokerage = Double.valueOf(map.get("savings_sum").toString());
                            if (i == 0) {
                                brokerage = (brokerage * 0.4);
                            } else if (i == 1) {
                                brokerage = (brokerage * 0.15);
                            } else if (i == 2) {
                                brokerage = (brokerage * 0.05);
                            }

                            if (t_list2.size() > 0) {
                                int t_b = 0;
                                if (t_list2.get(0).get("brokerage") != null) {
                                    t_b = Integer.valueOf(t_list2.get(0).get("brokerage").toString());
                                }
                                brokerage = brokerage + t_b;
                                t_list2.get(0).put("brokerage", brokerage + "");
                                saveOrUpdate(t_list2.get(0), "tb_income_details");
                            } else {
                                t_map = new HashMap();
                                t_map.put("game_id", game_id);
                                t_map.put("income_date", d);
                                t_map.put("brokerage", brokerage + "");
                                saveOrUpdate(t_map, "tb_income_details");
                            }
                        } else {
                            continue savingsFor;
                        }
                    }
                    logger.debug("222 ===");
                    map.put("type", 2);
                    saveOrUpdate(map, "tb_savings");
                }
                return null;
            }
        });
        logger.debug("end ===");

    }
}
