package com.service.wx;

import com.frame.base.BaseService;
import net.sf.json.JSONObject;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * Created by Administrator on 2017/4/1.
 */
public class WeiXinService {
    private static Logger log = LoggerFactory.getLogger(WeiXinService.class);
    public static void backMenu001(String openid) {
        String json = "{\n" +
                "    \"touser\":\""+openid+"\",\n" +
                "    \"msgtype\":\"text\",\n" +
                "    \"text\":\n" +
                "    {\n" +
                "         \"content\":\"您有任何问题，请直接在微信公众号内留言。我们的客服会尽快为您解决！\"\n" +
                "    }\n" +
                "}";

        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                json);
        log.debug(jo.toString());

    }

    public static void backMenu002(String openid) {
        /*String json = "{\n" +
                "    \"touser\":\""+openid+"\",\n" +
                "    \"msgtype\":\"news\",\n" +
                "    \"news\":{\n" +
                "        \"articles\": [\n" +
                "         {\n" +
                "             \"title\":\"常见问题\",\n" +
                "             \"description\":\"常见问题\",\n" +
                "             \"url\":\"http://mp.weixin.qq.com/s/p5k0Fi7Bbp1AKayzYVwu4w\",\n" +
                "             \"picurl\":\"https://gss0.baidu.com/8_BXsjip0QIZ8tyhnq/timg?wh_rate=0&wapiknow&quality=100&size=w250&sec=0&di=f56bc5499aac1644fcf6587e1257b493&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fzhidao%2Fwh%253D800%252C450%2Fsign%3Da9f38986ff246b607b5bba7cdbc83678%2F8326cffc1e178a82aefba875ff03738da877e824.jpg\"\n" +
                "         }\n" +
                "         ]\n" +
                "    }\n" +
                "}";*/

        String json = "{\n" +
                "    \"touser\":\""+openid+"\",\n" +
                "    \"msgtype\":\"mpnews\",\n" +
                "    \"mpnews\":\n" +
                "    {\n" +
                "         \"media_id\":\"cOx-K_QpcAiVAorM4NGggZdwOvlioPdt33wFW7_3zYU\"\n" +
                "    }\n" +
                "}";

        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                json);
        log.debug(jo.toString());

    }

    public static void backMenu003(String openid) {
        /*String json = "{\n" +
                "    \"touser\":\""+openid+"\",\n" +
                "    \"msgtype\":\"news\",\n" +
                "    \"news\":{\n" +
                "        \"articles\": [\n" +
                "         {\n" +
                "             \"title\":\"游戏规则\",\n" +
                "             \"description\":\"转转麻将、跑得快游戏规则\",\n" +
                "             \"url\":\"http://mp.weixin.qq.com/s/fN0YeFXxJ7u_7aJBl02o-A\",\n" +
                "             \"picurl\":\"https://gss0.baidu.com/8_BXsjip0QIZ8tyhnq/timg?wh_rate=0&wapiknow&quality=100&size=w250&sec=0&di=f56bc5499aac1644fcf6587e1257b493&src=http%3A%2F%2Fh.hiphotos.baidu.com%2Fzhidao%2Fwh%253D800%252C450%2Fsign%3Da9f38986ff246b607b5bba7cdbc83678%2F8326cffc1e178a82aefba875ff03738da877e824.jpg\"\n" +
                "         }\n" +
                "         ]\n" +
                "    }\n" +
                "}";*/

        String json = "{\n" +
                "    \"touser\":\""+openid+"\",\n" +
                "    \"msgtype\":\"mpnews\",\n" +
                "    \"mpnews\":\n" +
                "    {\n" +
                "         \"media_id\":\"cOx-K_QpcAiVAorM4NGggd1w_NsAIPHIM7eYQj0-m6M\"\n" +
                "    }\n" +
                "}";

        JSONObject jo = WeiXinUtil.httpRequest("https://api.weixin.qq.com/cgi-bin/message/custom/send?access_token=" + WeiXinUtil.getAccessToken(),
                "POST",
                json);
        log.debug(jo.toString());

    }
}
