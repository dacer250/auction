package com.frame.dao;

import com.frame.bean.ObjectMap;
import com.frame.bean.PageBean;
import com.frame.bean.SaasSort;
import com.frame.util.SQLUtil;
import com.mysql.jdbc.Statement;
import org.apache.commons.lang.StringUtils;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.PreparedStatementCreator;
import org.springframework.jdbc.support.GeneratedKeyHolder;
import org.springframework.jdbc.support.KeyHolder;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

/**
 * @author "石明(shiming@ec.com.cn)"
 */
public class JdbcDao extends JdbcTemplate {

    public void page(PageBean pb) {
        pb.setRetList(this.listWithPage(pb.getHql(), pb.getFiltermap(), pb.getExactMap(), pb.getGftSort(), pb.getPageno(), pb.getPagesize()));
        pb.setTotalrow(getTotalCount(pb.getHql(), pb.getFiltermap(), pb.getExactMap()));
    }

    @SuppressWarnings("unchecked")
    public int getTotalCount(String sql, Map filterMap, Map exactMap) {
        if (exactMap == null) {
            exactMap = new HashMap();
        }
        exactMap.put("id", null);
        Map map = SQLUtil.filter(filterMap, sql, exactMap);
        sql = map.get("hql").toString();
        Object paramlist = map.get("params");
        return this.getTotalCount(sql, (List) paramlist);
    }

    /**
     * 查询记录总数
     *
     * @param sql
     * @param paramlist
     * @return
     */
    public int getTotalCount(String sql, List<Object> paramlist) {
        String countHQL = "SELECT COUNT(*) FROM( " + sql + ")";
        int count = 0;
        if (paramlist != null && ((List<Object>) paramlist).size() > 0)
            count = queryForInt(countHQL, paramlist.toArray());
        else
            count = queryForInt(countHQL);
        return count;
    }

    /**
     * 跟据分页信息查询结果集
     *
     * @param filterMap
     * @param exactMap
     * @param sort
     * @param pageno
     * @param pagesize
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Map<String, Object>> listWithPage(String sql, Map filterMap,
                                                  Map exactMap, SaasSort sort, int pageno, int pagesize) {
        List<String> sortList = null;
        if (sort.isOk()) {
            sortList = new ArrayList<String>();
            sortList.add(sort.getProperty());
            sortList.add(sort.getSortOrder());
        }
        return this.listWithPage(sql, filterMap, exactMap, sortList, pageno,
                pagesize);
    }

    /**
     * 跟据分页信息查询结果集
     *
     * @param sql
     * @param filterMap
     * @param exactMap
     * @param sortList
     * @param pageno
     * @param pagesize
     * @return
     */
    @SuppressWarnings("unchecked")
    public List<Map<String, Object>> listWithPage(String sql, Map filterMap,
                                                  Map exactMap, List<String> sortList, int pageno, int pagesize) {
        Map map = SQLUtil.filter(filterMap, sql, exactMap);
        sql = map.get("hql").toString();
        sql = SQLUtil.sortHQL(sortList, sql, " order by id DESC");
        List paramlist = (List) map.get("params");
        if (pagesize == -1)// 当为-1时列出全部
            pagesize = 9999;
        sql = SQLUtil.pageSql(sql, (pageno - 1) * pagesize, pagesize);
        return queryForList(sql, paramlist.toArray());
    }

    public int saveOrUpdate(ObjectMap<String, String> o, String tableName) {
        HashMap<String, Object> so = new HashMap<String, Object>(o);
        int ret = saveOrUpdate(so, tableName);
        o.put("id", String.valueOf(so.get("ID")) != "null" ? String.valueOf(so.get("ID")) : String.valueOf(so.get("id")));
        return ret;
    }

    /**
     * 跟据id判断保存或者更新
     *
     * @param o
     * @param tableName
     * @return
     */
    public int saveOrUpdate(Map<String, Object> o, String tableName) {
        Object id = o.get("id");
        id = id != null ? id : o.get("ID");
        StringBuffer sb = null;
        List<Object> valueList = null;
        if (id != null && !StringUtils.isBlank(id.toString())) {// 非空update
            sb = new StringBuffer("UPDATE " + tableName + " SET ");
            Iterator<String> iterator = o.keySet().iterator();
            valueList = new ArrayList<Object>();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!"id".equalsIgnoreCase(key)) {//key不等于id
                    sb.append(key);
                    sb.append("=?,");
                    Object valueObj = o.get(key);
                    valueList.add(valueObj);
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(" WHERE id=? ");
            valueList.add(id);
        } else {
            o.remove("id");
            //o.put("ID", PrimaryKeyGen.genuuid());
            sb = new StringBuffer("INSERT INTO ");
            sb.append(tableName);
            StringBuffer colunmSql = new StringBuffer();
            StringBuffer valueSql = new StringBuffer();
            Iterator<String> iterator = o.keySet().iterator();
            boolean first = true;
            valueList = new ArrayList<Object>();
            while (iterator.hasNext()) {
                String key = iterator.next();
                Object valueObj = o.get(key);
                if (valueObj != null) {
                    if (first) {
                        first = false;
                    } else {
                        colunmSql.append(",");
                        valueSql.append(",");
                    }
                    colunmSql.append(key);
                    valueSql.append("?");
                    valueList.add(valueObj);
                }

            }
            sb.append("(");
            sb.append(colunmSql);
            sb.append(") VALUES (");
            sb.append(valueSql);
            sb.append(")");
        }
        return this.update(sb.toString(), valueList.toArray());
    }

    public int saveBackId(Map<String, Object> o, String tableName) {

        Object id = o.get("id");
        id = id != null ? id : o.get("ID");
        StringBuffer sb = null;
        List<Object> valueList = null;
        if (id != null && !StringUtils.isBlank(id.toString())) {// 非空update
            sb = new StringBuffer("UPDATE " + tableName + " SET ");
            Iterator<String> iterator = o.keySet().iterator();
            valueList = new ArrayList<Object>();
            while (iterator.hasNext()) {
                String key = iterator.next();
                if (!"id".equalsIgnoreCase(key)) {//key不等于id
                    sb.append(key);
                    sb.append("=?,");
                    Object valueObj = o.get(key);
                    valueList.add(valueObj);
                }
            }
            sb.deleteCharAt(sb.length() - 1);
            sb.append(" WHERE id=? ");
            valueList.add(id);
        } else {
            o.remove("id");
            //o.put("ID", PrimaryKeyGen.genuuid());
            sb = new StringBuffer("INSERT INTO ");
            sb.append(tableName);
            StringBuffer colunmSql = new StringBuffer();
            StringBuffer valueSql = new StringBuffer();
            Iterator<String> iterator = o.keySet().iterator();
            boolean first = true;
            valueList = new ArrayList<Object>();
            while (iterator.hasNext()) {
                String key = iterator.next();
                Object valueObj = o.get(key);
                if (valueObj != null) {
                    if (first) {
                        first = false;
                    } else {
                        colunmSql.append(",");
                        valueSql.append(",");
                    }
                    colunmSql.append(key);
                    valueSql.append("?");
                    valueList.add(valueObj);
                }

            }
            sb.append("(");
            sb.append(colunmSql);
            sb.append(") VALUES (");
            sb.append(valueSql);
            sb.append(")");
        }

        KeyHolder key = new GeneratedKeyHolder();
        final StringBuffer finalSb = sb;
        final List<Object> finalValueList = valueList;
        int ri = this.update(new PreparedStatementCreator() {
            @Override
            public PreparedStatement createPreparedStatement(Connection connection) throws SQLException {
                logger.debug(finalSb.toString());
                PreparedStatement preState = connection.prepareStatement(finalSb.toString(),Statement.RETURN_GENERATED_KEYS);
                for (int i = 0; i < finalValueList.size(); i++) {
                    preState.setObject(i + 1, finalValueList.get(i));
                }
                return preState;
            }
        }, key);

        o.put("id", key.getKey());
        return ri;
    }

    /**
     * @param p          参数《列名，值>
     * @param tableName
     * @param selectSql
     * @param orderBySql
     * @return ===========Modify Record===========
     * @author "石明(shiming@ec.com.cn)" 2011-1-2  创建
     */
    public List<?> queryByParameter(Map<String, ?> p, String tableName, String selectSql, String orderBySql) {
        List<Object> valueList = null;
        if (selectSql == null) {
            selectSql = "SELECT * FROM " + tableName;
        }
        StringBuffer sb = new StringBuffer();
        sb.append(selectSql);
        sb.append(" WHERE ");
        Iterator<String> iterator = p.keySet().iterator();
        valueList = new ArrayList<Object>();
        while (iterator.hasNext()) {
            String key = iterator.next();
            sb.append(key);
            sb.append("=? and ");
            Object valueObj = p.get(key);
            valueList.add(valueObj);
        }
        String sql = sb.substring(0, sb.length() - 4);
        if (orderBySql != null)
            sql += " " + orderBySql;
        return this.queryForList(sql, valueList.toArray());
    }

    public Map<String, Object> queryById(String tableType, String id) {
        List<Map<String, Object>> queryForList = this.queryForList("select * from " + tableType + " where id=?", id);
        if (queryForList.size() > 0)
            return queryForList.get(0);
        return null;
    }

    public void deleteById(String t, String id) {
        this.update("DELETE " + t + " t WHERE t.id=?", id);
    }

    public int insertForMap(String t, ObjectMap om) {
        String sql = "INSERT INTO " + t + " (";
        String col = "";
        String val = "";
        Object[] vals = new Object[om.size()];
        int i = 0;
        for (Object o : om.keySet()) {
            col += o.toString() + ",";
            val = "?,";
            vals[i] = om.get(o);
            i++;
        }
        sql = sql + col.substring(0, col.length() - 1) + ") VALUES (" + val.substring(0, val.length() - 1) + ")";
        return this.update(sql, vals);
    }
}
