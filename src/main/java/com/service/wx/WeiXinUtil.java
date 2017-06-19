package com.service.wx;

import com.frame.util.HttpTools;
import com.frame.util.MyX509TrustManager;
import com.frame.util.RedisTools;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import redis.clients.jedis.Jedis;

import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.TrustManager;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.ConnectException;
import java.net.URL;

/**
 * Created by Administrator on 2017/3/31.
 */
public class WeiXinUtil {
    private static Logger log = LoggerFactory.getLogger(WeiXinUtil.class);
    static String appid = "wx6a888daab9d83335";
    static String secret = "b1013f713a9f372aab7dc26e7625ced6";

    public static String getAccessToken() {

        String access_token = "";

        Jedis j = RedisTools.getJedis();
        if (j.exists("WxAccessToken")) {
            access_token = j.get("WxAccessToken");
        } else {
            HttpTools ht = new HttpTools();
            ht.setUrl("https://api.weixin.qq.com/cgi-bin/token?grant_type=client_credential&appid=" + appid + "&secret=" + secret);
            String html = ht.getInnerHTML();
            JSONObject jo = JSONObject.fromObject(html);
            ht.close();

            access_token = jo.get("access_token").toString();

            j.set("WxAccessToken", access_token);
            j.expire("WxAccessToken", 7000);
        }
        RedisTools.returnResource(j);

        return access_token;
    }


    public static void setMenu() {
        String js = " {\n" +
                "     \"button\":[\n" +
                "     {\t\n" +
                "          \"type\":\"view\",\n" +
                "          \"name\":\"游戏下载\",\n" +
                "          \"url\":\"http://www.baidu.com\"\n" +
                "      },\n" +
                "      {\n" +
                "           \"name\":\"代理后台\",\n" +
                "           \"sub_button\":[\n" +
                "           {\t\n" +
                "               \"type\":\"view\",\n" +
                "               \"name\":\"代理登录\",\n" +
                "               \"url\":\"http://agents.saiwangame.com/\"\n" +
                "            },\n" +
                "            {\n" +
                "               \"type\":\"view\",\n" +
                "               \"name\":\"代理注册\",\n" +
                "               \"url\":\"http://agents.saiwangame.com/a/Base/User/reg\"\n" +
                "            }]\n" +
                "       }," +
                "      {\n" +
                "           \"name\":\"客服专区\",\n" +
                "           \"sub_button\":[\n" +
                "           {\t\n" +
                "               \"type\":\"click\",\n" +
                "               \"name\":\"在线客服\",\n" +
                "               \"key\":\"MENU_001\"\n" +
                "            },\n" +
                "            {\n" +
                "               \"type\":\"click\",\n" +
                "               \"name\":\"常见问题\",\n" +
                "               \"key\":\"MENU_002\"\n" +
                "            },\n" +
                "            {\n" +
                "               \"type\":\"click\",\n" +
                "               \"name\":\"游戏规则\",\n" +
                "               \"key\":\"MENU_003\"\n" +
                "            }]\n" +
                "       }" +
                "]\n" +
                " }";


        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/menu/create?access_token=ESL58Okpgz--8D-9um_Ws-CaObPv2LB-d3A4-GDpPpbziIKqsU2X1bNU4aV4MfnFTwwYVTCyWiOsYc2opKKuFjEQiAjmx6-MHcI0XUU2cA0-BbOxJuj0iNSyq2olfHrbXBQdAEALPE",
                "POST",
                js);

        System.out.println(jo.toString());

    }


    /**
     * 发起https请求并获取结果
     *
     * @param requestUrl    请求地址
     * @param requestMethod 请求方式（GET、POST）
     * @param outputStr     提交的数据
     * @return JSONObject(通过JSONObject.get(key)的方式获取json对象的属性值)
     */

    public static JSONObject httpRequest(String requestUrl, String requestMethod, String outputStr) {

        JSONObject jsonObject = null;

        StringBuffer buffer = new StringBuffer();

        try {

// 创建SSLContext对象，并使用我们指定的信任管理器初始化

            TrustManager[] tm = {new MyX509TrustManager()};

            SSLContext sslContext = SSLContext.getInstance("SSL", "SunJSSE");

            sslContext.init(null, tm, new java.security.SecureRandom());

// 从上述SSLContext对象中得到SSLSocketFactory对象

            SSLSocketFactory ssf = sslContext.getSocketFactory();

            URL url = new URL(requestUrl);

            HttpsURLConnection httpUrlConn = (HttpsURLConnection) url.openConnection();

            httpUrlConn.setSSLSocketFactory(ssf);

            httpUrlConn.setDoOutput(true);

            httpUrlConn.setDoInput(true);

            httpUrlConn.setUseCaches(false);

// 设置请求方式（GET/POST）

            httpUrlConn.setRequestMethod(requestMethod);

            if ("GET".equalsIgnoreCase(requestMethod))

                httpUrlConn.connect();

// 当有数据需要提交时

            if (null != outputStr) {

                OutputStream outputStream = httpUrlConn.getOutputStream();

// 注意编码格式，防止中文乱码

                outputStream.write(outputStr.getBytes("UTF-8"));

                outputStream.close();

            }

// 将返回的输入流转换成字符串

            InputStream inputStream = httpUrlConn.getInputStream();

            InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");

            BufferedReader bufferedReader = new BufferedReader(inputStreamReader);

            String str = null;

            while ((str = bufferedReader.readLine()) != null) {

                buffer.append(str);

            }

            bufferedReader.close();

            inputStreamReader.close();

// 释放资源

            inputStream.close();

            inputStream = null;

            httpUrlConn.disconnect();

            jsonObject = JSONObject.fromObject(buffer.toString());

        } catch (ConnectException ce) {

            log.error("Weixin server connection timed out.");

        } catch (Exception e) {

            log.error("https request error:{}", e);

        }

        return jsonObject;

    }

    public static void postMSG() {
        String json = "{\n" +
                "    \"touser\":\"okFF30oUBl9_M_wFGQ9qcsBe_a6Q\",\n" +
                "    \"msgtype\":\"news\",\n" +
                "    \"news\":{\n" +
                "        \"articles\": [\n" +
                "         {\n" +
                "             \"title\":\"Happy Day\",\n" +
                "             \"description\":\"Is Really A Happy Day\",\n" +
                "             \"url\":\"https://zhidao.baidu.com/question/429314402240520172.html\",\n" +
                "             \"picurl\":\"https://gss0.baidu.com/8_BXsjip0QIZ8tyhnq/timg?wh_rate=0&wapiknow&quality=100&size=w250&sec=0&di=f56bc5499aac1644fcf6587e1257b493&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fzhidao%2Fwh%253D800%252C450%2Fsign%3Da9f38986ff246b607b5bba7cdbc83678%2F8326cffc1e178a82aefba875ff03738da877e824.jpg\"\n" +
                "         },\n" +
                "         {\n" +
                "             \"title\":\"Happy Day\",\n" +
                "             \"description\":\"Is Really A Happy Day\",\n" +
                "             \"url\":\"URL\",\n" +
                "             \"picurl\":\"PIC_URL\"\n" +
                "         }\n" +
                "         ]\n" +
                "    }\n" +
                "}";
        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                json);

        System.out.println(jo.toString());
    }

    public static void getMaterial() {

        String js = "{\n" +
                "   \"type\":\"news\",\n" +
                "   \"offset\":0,\n" +
                "   \"count\":20\n" +
                "}";


        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/material/batchget_material?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                js);

        System.out.println(jo.toString());

    }
    public static void main(String[] args) {
        //WeiXinUtil.setMenu();

        //WeiXinUtil.postMSG();



        String json = "{\n" +
                "    \"touser\":\"okFF30oUBl9_M_wFGQ9qcsBe_a6Q\",\n" +
                "    \"msgtype\":\"mpnews\",\n" +
                "    \"mpnews\":\n" +
                "    {\n" +
                "         \"media_id\":\"cOx-K_QpcAiVAorM4NGggd1w_NsAIPHIM7eYQj0-m6M\"\n" +
                "    }\n" +
                "}";

        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                json);

        System.out.println(jo.toString());


    }
}
