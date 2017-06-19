package com.frame.util;

import javax.servlet.http.HttpServletRequest;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.File;
import java.util.Random;


/**
 * 生成验证砄1�7
 *
 * @author yipeng
 *
 */
public class DrawRandomNumber {

  private static final int WIDTH = 50;
  private static final int HEIGHT = 20;
  private static BufferedImage image = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
  private static DrawRandomNumber instance = new DrawRandomNumber();

  public static DrawRandomNumber getInstance() {
    return instance;
  }

  public synchronized Image drawRandNumber(int bits, int to, HttpServletRequest request) {
    String rand = getRandNumber(bits, to);
    if("true".equals(request.getSession().getServletContext().getInitParameter("qa")))
    	rand="9999";
    Graphics graphic = image.getGraphics();
    refreshBgColor(graphic);
    graphic.setColor(getRandColor(20, 130));
    graphic.drawString(rand, 6, 16);
    graphic.dispose();

    request.getSession(true).setAttribute(Constants.RANDOMVALUE_KEY, rand);
    return image;
  }

  private void refreshBgColor(Graphics g) {
    // 设定背景艄1�7
    g.fillRect(0, 0, WIDTH, HEIGHT);
    // 设定字体
    g.setFont(new Font("Times New Roman", Font.PLAIN, 18));
    // 随机产生155条干扰线，使图象中的认证码不易被其它程序探测刄1�7
    g.setColor(getRandColor(160, 200));
    for (int i = 0; i < 100; i++) {
      int x = Constants.RANDOM.nextInt(WIDTH);
      int y = Constants.RANDOM.nextInt(HEIGHT);
      int xl = Constants.RANDOM.nextInt(12);
      int yl = Constants.RANDOM.nextInt(12);
      g.drawLine(x, y, x + xl, y + yl);
    }
  }

  private Color getRandColor(int fc, int bc) {
    // 给定范围获得随机颜色
    if (fc > 255) fc = 255;
    if (bc > 255) bc = 255;
    int red = fc + Constants.RANDOM.nextInt(bc - fc);
    int green = fc + Constants.RANDOM.nextInt(bc - fc);
    int blue = fc + Constants.RANDOM.nextInt(bc - fc);
    return new Color(red, green, blue);
  }

  private String getRandNumber(int bits, int to) {
    StringBuffer randBuffer = new StringBuffer();
    for (int i = 1; i <= bits; i++)
      randBuffer.append(Constants.RANDOM.nextInt(to));
    return randBuffer.toString();
  }
}


class Constants {

    //SESSION使用KEY
    public static final String RANDOMVALUE_KEY = "random"; // 验证码
    public static final Random RANDOM = new Random(); // 生成Random对象到缓存中
    public static final String USER_MAP = "userMap";//用户信息

    public static final String TEMPLATE_PATH = new FileTool(File.separator).getPath() + "news_template" + File.separator;

    public static void main(String[] args) {
        System.out.println(File.separator);
    }
}
