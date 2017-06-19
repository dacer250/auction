package com.frame.util;

public class StringFunctionUtil {
	public static boolean isNotEmpty(String... str) {
		if (str != null && str.length > 0) {
			for (String strCk : str) {
				if (strCk == null || strCk.length()== 0) {
					return false;
				}
			}
			return true;
		}
		return false;
	}
	public static boolean isEmpty(String... str) {
		return !isNotEmpty(str);
	}
	
	public static String getBeanName(String str){
		StringBuffer buffer = new StringBuffer();
		char[] charArray = str.toLowerCase().toCharArray();
		boolean h=false;
		for (char c : charArray) {
			if(h){
				c=(char) (c-32);
				h=false;
			}
			if('_'!=c){
				buffer.append(c);
			}else
				h=true;
		}
		return buffer.toString();
	}
	
}
