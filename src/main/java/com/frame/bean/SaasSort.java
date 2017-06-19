/**
 * (c)Copyright 2007 SinoCredit Co,Ltd. All Rights Reserved.  
 * Lab7fSort.java, 1:32:57 PM 
 * @author Ming.Shi
 * @since Dec 1, 2007
 * @version 1.0
 */
package com.frame.bean;

public class SaasSort {
	private String property;

	private String sortOrder;

	public SaasSort() {
	}

	public SaasSort(String property, String sortOrder) {
		this.property = property;
		this.sortOrder = sortOrder;
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
	
	public boolean isOk(){
		return property!=null&&property.length()>0&&sortOrder!=null&&sortOrder.length()>0;
	}
}


