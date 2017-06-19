import com.frame.util.FileTools;
import com.frame.util.HttpTools;
import org.apache.http.NameValuePair;
import org.apache.http.message.BasicNameValuePair;

import javax.imageio.ImageIO;
import java.io.*;
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

/**
 * Created by Administrator on 2017/4/10.
 */
public class BDLX {

    HttpTools ht = new HttpTools();

    public BDLX() {
        ht.addHeader("Host", "www.257qp.com");
        ht.addHeader("User-Agent", "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101 Firefox/52.0");
        ht.addHeader("Referer", "http://www.257qp.com/Agency/AgencyLoginOut.aspx");
    }

    public void index() {
        ht.setUrl("http://www.257qp.com/Public/Validate.ashx?x=0.37876669563549537");

        BufferedOutputStream bufferOutput = null;
        try {
            bufferOutput = new BufferedOutputStream(new FileOutputStream(
                    new File("d:\\abc.jpg")));

            bufferOutput.write(ht.getByteArray());

            bufferOutput.flush();
        } catch (Exception e) {
            throw new RuntimeException(e);
        } finally {
//            if (bufferOutput != null) {
//                try {
//                    bufferOutput.close();
//                } catch (Exception e) {
//                    throw new RuntimeException(e);
//                }
//            }
        }
    }

    public void login(String code){
        List<NameValuePair> list = new ArrayList<>();
        list.add(new BasicNameValuePair("txtPassword", "654321"));
        list.add(new BasicNameValuePair("txtUserName", "admin"));
        list.add(new BasicNameValuePair("txtVali", code));
        System.out.println(ht.post("http://www.257qp.com/Agency/AgencyLogin.aspx", list));

        ht.setUrl("http://www.257qp.com/Agency/Index.aspx");
        System.out.println(ht.getInnerHTML());


    }


    public static void main(String[] args) {
        BDLX b = new BDLX();
        b.index();
        Scanner input=new Scanner(System.in);
        b.login(input.next());

        HttpTools ht = new HttpTools();
        ht.setUrl("http://www.257qp.com/Agency/Default.aspx");
        System.out.println(ht.getInnerHTML());
    }
}
