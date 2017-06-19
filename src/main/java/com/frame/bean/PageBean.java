/**
 * PageBean.java, 6:58:41 PM 
 * @author Ming.Shi
 * @since Jun 27, 2007
 * @version 1.0
 */
package com.frame.bean;

import com.frame.util.StringFunctionUtil;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@SuppressWarnings("unchecked")
public class PageBean {
	public final static int MAX_PAGE_SIZE=-1;
	
	private String hql;// "from xxx WHERE"
	private int pageno;
	private int totalrow;
	private int pagesize;// 全部列出
	private Map filtermap;// <name,shiming; >
	private String property;
	private String sortOrder;
	private Map exactMap = new HashMap();// 添加精确匹配的key

	private List retList; // get form datebase

	public Map<String,String> getFiltermap() {
		if(filtermap==null){
			filtermap = new HashMap();
		}
		return filtermap;
	}

	public void setFiltermap(Map filtermap) {
		this.filtermap = filtermap;
	}

	public String getHql() {
		return hql;
	}

	public void setHql(String hql) {
		this.hql = hql;
	}

	public int getMaxpageno() {
		int size = getPagesize();
		if (size == -1)// 全部显示
			return 1;
		if (totalrow==0){
			return 1;
		}
		return (totalrow / size) + (totalrow % size == 0 ? 0 : 1);
	}

	public int getPageno() {
		return pageno <= 0 ? 1 : pageno;
	}

	public void setPageno(int pageno) {
		this.pageno = pageno;
	}

	public int getPagesize() {
		if (pagesize == -1)
			return -1;
		return pagesize <= 0 ? 15 : pagesize;
	}

	public void setPagesize(int pagesize) {
		this.pagesize = pagesize;
	}

	public List getRetList() {
		return retList;
	}

	public void setRetList(List retList) {
		this.retList = retList;
	}

	public int getTotalrow() {
		return totalrow;
	}

	public void setTotalrow(int totalrow) {
		this.totalrow = totalrow;
	}

	public String getProperty() {
		return property;
	}

	public void setProperty(String property) {
		this.property = property;
	}

	public String getSortOrder() {
		return sortOrder;
	}

	public void setSortOrder(String sortOrder) {
		this.sortOrder = sortOrder;
	}

	public SaasSort getGftSort() {
		return new SaasSort(this.property, this.sortOrder);
	}

	public Map getExactMap() {
		return exactMap;
	}

	public void addExactMatch(String... str) {
		if (str != null && str.length > 0) {
			for (String sstr : str) {
				exactMap.put(sstr, null);
			}
		}
	}
	
	public void setDefaultOrder(String property,String sortOrder){
		if(StringFunctionUtil.isEmpty(this.property, this.sortOrder)){
			this.property=property;
			this.sortOrder=sortOrder;
		}
	}
}
