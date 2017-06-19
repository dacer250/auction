package com.frame.dao;

import com.frame.util.SQLUtil;
import com.frame.util.SQLUtilMySql;

import java.util.List;
import java.util.Map;


public class JdbcDaoMySql extends JdbcDao {

    public List<Map<String, Object>> listWithPage(String sql, Map filterMap,
                                                  Map exactMap, List<String> sortList, int pageno, int pagesize) {
        logger.debug("JdbcDaoMySql");
        Map map = SQLUtil.filter(filterMap, sql, exactMap);
        sql = map.get("hql").toString();
        if (sql.toLowerCase().indexOf("order") > -1) {
            sql = SQLUtil.sortHQL(sortList, sql, null);
        }else {
            sql = SQLUtil.sortHQL(sortList, sql, " order by id DESC");
        }
        List paramlist = (List) map.get("params");
        if (pagesize == -1)// 当为-1时列出全部
            pagesize = 9999;
        sql = SQLUtilMySql.pageSql(sql, (pageno - 1) * pagesize, pagesize);
        return queryForList(sql, paramlist.toArray());
    }

    public int getTotalCount(String sql, List<Object> paramlist) {
        //String countHQL = "SELECT COUNT(*) FROM( " + sql + ") as t_count";
        String countHQL = "SELECT COUNT(1) " + sql.substring(sql.indexOf("FROM"), sql.length());
        int count = 0;
        if (paramlist != null && ((List<Object>) paramlist).size() > 0)
            count = queryForInt(countHQL, paramlist.toArray());
        else
            count = queryForInt(countHQL);
        return count;
    }

    public void deleteById(String t, String id) {
        this.update("DELETE FROM " + t + "  WHERE id=?", id);
    }

    public static void main(String[] args) {
        String sql = "SELECT * FROM tp_recomm_users r, tb_temp_userimg t WHERE r.id = t.uid AND t.avatar = 1";
        String countHQL = sql.substring(sql.indexOf("FROM"), sql.length());

        System.out.println(countHQL);
    }
}
