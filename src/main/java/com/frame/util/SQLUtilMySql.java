package com.frame.util;


public class SQLUtilMySql extends SQLUtil {
    public static String pageSql(String sql, int firstRow, int pageSize) {
        String dataSql = sql + " LIMIT " + firstRow + "," + pageSize;
        return dataSql;
    }
}
