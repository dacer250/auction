package com.filter;

import com.frame.util.XMLParser;
import com.frame.util.XmlConverUtil;
import com.service.wx.WeiXinService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

/**
 * Created by Administrator on 2017/3/31.
 */
public class WxServlet extends HttpServlet {
    protected Logger logger = LogManager.getLogger(this.getClass().getName());

    /**
     * 处理微信服务器发来的消息
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");

        // TODO 消息的接收、处理、响应
        logger.debug("doPost");

        response.getWriter().write("");

        BufferedReader reader = request.getReader();
        String line = "";
        StringBuffer inputString = new StringBuffer();
        try {
            while ((line = reader.readLine()) != null) {
                inputString.append(line);
            }
            request.getReader().close();

            Map<String, Object> map = XMLParser.getMapFromXML(inputString.toString());
            for (Object keyValue : map.keySet()) {
                System.out.println(keyValue + "=" + map.get(keyValue));
            }

            if (map.get("MsgType").toString().equals("event")) {
                switch (map.get("EventKey").toString()) {
                    case "MENU_001":
                        WeiXinService.backMenu001(map.get("FromUserName").toString());
                        break;
                    case "MENU_002":
                        WeiXinService.backMenu002(map.get("FromUserName").toString());
                        break;
                    case "MENU_003":
                        WeiXinService.backMenu003(map.get("FromUserName").toString());
                        break;
                }
            }

            if (map.get("MsgType").toString().equals("text")) {
                //转发至客服
                Map tmap = new HashMap<>();
                tmap.put("ToUserName", map.get("FromUserName").toString());
                tmap.put("FromUserName", "mabobj");
                tmap.put("CreateTime", new Date().getTime());
                tmap.put("MsgType", "transfer_customer_service");

                /*String xml = "<xml>\n" +
                        "     <ToUserName><![CDATA["+map.get("FromUserName").toString()+"]]></ToUserName>\n" +
                        "     <FromUserName><![CDATA["+map.get("ToUserName").toString()+"]]></FromUserName>\n" +
                        "     <CreateTime>"+new Date().getTime()+"</CreateTime>\n" +
                        "     <MsgType><![CDATA[transfer_customer_service]]></MsgType>\n" +
                        "     <TransInfo>\n" +
                        "         <KfAccount><![CDATA[kf2001@gh_d5c1486223ed]]></KfAccount>\n" +
                        "     </TransInfo>\n" +
                        " </xml>";*/
                response.getWriter().write(XmlConverUtil.maptoXml(tmap));
                System.out.println("-------------" + XmlConverUtil.maptoXml(tmap));
            }


        } catch (Exception e) {
            e.printStackTrace();
        }


        logger.debug("doPost END");
    }


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String signature = request.getParameter("signature");
        String timestamp = request.getParameter("timestamp");
        String nonce = request.getParameter("nonce");
        String echostr = request.getParameter("echostr");

        String token = "c26564160f614e4bab52fd7cbe93358b";

        ArrayList<String> list = new ArrayList<String>();
        list.add(nonce);
        list.add(timestamp);
        list.add(token);

        Collections.sort(list);

        PrintWriter out = response.getWriter();
        out.println(echostr);
        out.flush();
        out.close();


    }
}
