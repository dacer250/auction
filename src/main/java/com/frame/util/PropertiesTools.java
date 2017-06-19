package com.frame.util;


import java.io.*;
import java.net.UnknownHostException;
import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * Base: lovesuper_ao
 * Date: 13-10-1
 * Time: 上午10:34
 * To change this template use File | Settings | File Templates.
 */
public class PropertiesTools {

    public static Properties initProperties() {


        //InputStream in = SystemTools.class.getClassLoader().getResourceAsStream("Config.properties");


        String filePath = PropertiesTools.class.getClassLoader().getResource("").getPath() + "Config.properties";

/*
        String[] paths = PropertiesTools.class.getClassLoader().getResource("/").getPath().split(String.valueOf(File.separatorChar));
        String filePath = String.valueOf(File.separatorChar);
        for (int i = 1; i < paths.length - 2; i++) {
            filePath = filePath + paths[i] + File.separatorChar;
        }
        filePath = filePath + "WEB-INF" + File.separator + "classes" + File.separatorChar + "Config.properties";
*/

        System.out.println("PropertiesTools === " + filePath);


        InputStream in = null;
        try {
            in = new BufferedInputStream(new FileInputStream(filePath));
        } catch (FileNotFoundException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }


        Properties p = new Properties();
        try {
            p.load(in);
        } catch (IOException e1) {
            e1.printStackTrace();
        }
        return p;
    }

    private static Properties p = initProperties();

    public static String JEDIS_IP = p.getProperty("JEDIS_IP");

    //上期发放奖金
    public static String ALL_INCOME = "ALL_INCOME";
    //本局投注金额
    public static String PLAY_BETS = "PLAY_BETS";
    //本局投注人数
    public static String PLAY_BETS_USE = "PLAY_BETS_USE";

    //机器人信息
    public static String ROBOT_INFO = "ROBOT_INFO";

    //开奖信息
    public static String LOTTERY_INFO = "LOTTERY_INFO";
    public static String LOTTERY = "LOTTERY";
    //当日总榜
    public static String TOTAL_LIST = "TOTAL_LIST";


    //开奖信息
    public static String VIRTUAL_LOTTERY_INFO = "VIRTUAL_LOTTERY_INFO";
    public static String VIRTUAL_LOTTERY = "VIRTUAL_LOTTERY";
    //当日总榜
    public static String VIRTUAL_TOTAL_LIST = "VIRTUAL_TOTAL_LIST";


    /**
     * 金币和人民币的汇率，100金币=1元
     */
    public static int EXCHANGE_RATE = 100;

    public static void main(String[] args) throws UnknownHostException {
        // System.out.println(SystemTools.class.getClassLoader().getResourceAsStream("Config.properties"));

    }
}
