import com.frame.util.HttpTools;
import com.frame.util.SystemUtil;
import com.service.wx.WeiXinUtil;
import net.sf.json.JSONObject;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * Created by Administrator on 2017/3/23.
 */
public class Test {

    public static void main(String[] args) {
        /*Map map = new HashMap();
        map.put("0", new String[]{"001", "002", "003"});
        map.put("1", new String[]{"004", "005", "006"});
        map.put("2", new String[]{"007", "008", "009"});
        System.out.println(JSONObject.fromObject(map).toString());


        String str = ",\"0\":[\"1000001\"],\"1\":[\"1000002,1000003,1000008,1000009\"],\"2\":[\"1000004,1000005,1000006,1000010,1000011\"],\"3\":[\"1000007\"]";
        str = "{"+str.substring(1, str.length())+"}";
        System.out.println(JSONObject.fromObject(str).get("0"));

        System.out.println(SystemUtil.randomUUID());


        System.out.println(WeiXinUtil.getAccessToken());*/

        /*Date date1 = new Date();
        Date date2 = new Date(date1.getTime() - (5 * 60 * 1000));

        System.out.println(SystemUtil.sdfDateTime().format(date1));
        System.out.println(SystemUtil.sdfDateTime().format(date2));*/

        /*List list = new ArrayList<>();
        HttpTools ht = new HttpTools();
        System.out.println(ht.post("http://wx.saiwangame.com/wx?asdfas", list));*/
        String d_t = SystemUtil.sdfDate().format(new Date()) + " 03:00:00";
        String hh = new SimpleDateFormat("HH").format(new Date());
        if (Integer.valueOf(hh) > 3) {
            Calendar c = Calendar.getInstance();
            c.setTime(new Date());
            c.add(Calendar.DATE, +1);
            d_t = SystemUtil.sdfDate().format(c.getTime()) + " 03:00:00";
        }

        System.out.println(d_t);
        Date new_d = null;
        try {
            new_d = SystemUtil.sdfDateTime().parse(d_t);
        } catch (ParseException e) {
            e.printStackTrace();
        }

        try {
            System.out.println(new_d.getTime() - System.currentTimeMillis());
            Thread.sleep(new_d.getTime() - System.currentTimeMillis());
        } catch (InterruptedException e) {
            e.printStackTrace();
        }

    }
}
