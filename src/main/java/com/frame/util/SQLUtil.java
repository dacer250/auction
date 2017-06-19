package com.frame.util;

import org.springframework.util.StringUtils;

import java.util.*;

public class SQLUtil {

	@SuppressWarnings("unchecked")
	public static Map filter(Map filterMap, String sql, Map exactMap) {
		if (exactMap == null) {
			exactMap = new HashMap();
			exactMap.put("id", null);
		}
		Map<String, Object> retmap = new HashMap<String, Object>();
		List<String> params = new ArrayList<String>();

		if (filterMap == null) {
			retmap.put("hql", sql);
			return retmap;
		}
		Iterator it = filterMap.keySet().iterator();
		StringBuffer buffer = new StringBuffer(" ");
		if (sql.toLowerCase().indexOf("where") < 0) {
			buffer.append(" WHERE 1=1 ");
		}
		boolean exactMatched;
		while (it.hasNext()) {
			String key = (String) it.next();
			if(key.startsWith("end_"))
				continue;//区间匹配 如果end 继续
			Object object = filterMap.get(key);
			if (object==null||"".equals(object.toString()))
				continue;
			exactMatched = false;
			buffer.append(" AND ");
			if (key.startsWith("start_")) {
				String properName = StringUtils.replace(key, "start_", "");//得到字段名称
				if(filterMap.containsKey("end_"+properName)){
					buffer.append("(");
					buffer.append(properName);
					buffer.append(">? ");
					buffer.append("AND ");
					buffer.append("properName ");
					buffer.append("<? ");
					params.add(object.toString());
					params.add(filterMap.get("end_"+properName).toString());
				}else{
					buffer.append("1=1 ");
				}
			} else {
				if (exactMap.containsKey(key)) {
					buffer.append(key);
					buffer.append("=? ");
					params.add(object.toString());
					exactMatched = true;
				}

				if (!exactMatched) {
					buffer.append(key);
					buffer.append(" LIKE ?");
					params.add("%" + object.toString() + "%");
				}
			}
		}
		retmap.put("hql", sql + buffer);
		retmap.put("params", params);
		return retmap;
	}
	/**
	 * 
	 * @param sortList
	 *  {[Property],[SortOrder]}
	 * @param sql
	 * @param string
	 * @return
	 */
	public static String sortHQL(List<String> sortList, String query,
			String defaultSortOrder) {
		if (sortList == null || sortList.size() != 2)
			if (defaultSortOrder != null)
				return query + defaultSortOrder;
			else
				return query;
		String property = sortList.get(0);
		String sortOrder = sortList.get(1);
		return new StringBuffer().append(query).append(" ORDER BY ").append(
				property).append(" ").append(sortOrder).toString();
	}
	
	public static String pageSql(String sql,int firstRow,int pageSize){
		String dataSql = "SELECT /*+ FIRST_ROWS */ * FROM (SELECT ttttttt.*, ROWNUM RN FROM ("
			+ sql
			+ ") ttttttt WHERE ROWNUM < "
			+ (firstRow + pageSize)
			+ ") WHERE RN >= " + (firstRow);
		
		return dataSql;
	}
}
