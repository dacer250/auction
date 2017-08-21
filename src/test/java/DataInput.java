import com.frame.util.FileTool;
import com.frame.util.FileTools;
import com.frame.util.SystemUtil;
import net.coobird.thumbnailator.Thumbnails;

import java.io.IOException;
import java.sql.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class DataInput {

    public static final String url = "jdbc:mysql://120.24.44.240:3306/auction?autoReconnect=true&amp;useUnicode=true&amp;characterEncoding=UTF-8&amp;zeroDateTimeBehavior=round";
    public static final String name = "com.mysql.jdbc.Driver";
    public static final String user = "auction";
    public static final String password = "auction!@#";

    public Connection conn = null;
    public PreparedStatement pst = null;

    public DataInput() {
        try {
            Class.forName(name);//指定连接类型
            conn = DriverManager.getConnection(url, user, password);//获取连接
            //pst = conn.prepareStatement(sql);//准备执行语句
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            this.conn.close();
            this.pst.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void f1() {
        FileTool ft = new FileTool("D:\\Google云盘\\项目\\孟晨拍卖网\\和田玉\\");
        String[] names = ft.getFileNames();

        for (String name : names) {
            String n = name.replace("D:\\Google云盘\\项目\\孟晨拍卖网\\和田玉\\", "").replace(".jpg", "");

            String pattern = "\\d*?$";
            Pattern r = Pattern.compile(pattern);
            Matcher m = r.matcher(n);
            if (m.find()) {
                n = m.replaceAll("");
            }
            System.out.println(n);
        }
    }

    public void f2() {

        PreparedStatement ps = null;
        ResultSet rs = null;

        String[] data = null;
        try {
            data = FileTools.loadFile("D:\\Google云盘\\项目\\孟晨拍卖网\\玉器data.txt").split("\n");
        } catch (IOException e) {
            e.printStackTrace();
        }

        FileTool ft = new FileTool("D:\\Google云盘\\项目\\孟晨拍卖网\\和田玉");
        String[] names = ft.getFileNames();


        for (String datum : data) {
            String[] dd = datum.split("\t");

            String _short = dd[3] + "," + dd[4] + "," + dd[5] + "," + dd[6];
            String s_h = "<p>\n" +
                    "    编号：" + dd[0] + "\n" +
                    "</p>\n" +
                    "<p>\n" +
                    "    尺寸：" + dd[3] + "\n" +
                    "</p>\n" +
                    "<p>\n" +
                    "    材质：" + dd[4] + "\n" +
                    "</p>\n" +
                    "<p>\n" +
                    "    年号： " + dd[5] + "\n" +
                    "</p>\n" +
                    "<p>\n" +
                    "    价格： " + dd[6] + "\n" +
                    "</p>";
            int _type = 1;

            Long id = null;
            try {
                ps = conn.prepareStatement("INSERT INTO goods_info(`name`,short,synopsis_html,`type`) VALUES ('" + dd[1] + "','" + _short + "','" + s_h + "'," + _type + ")", Statement.RETURN_GENERATED_KEYS);
                //ps.setString(1, "test");
                ps.execute();
                rs = ps.getGeneratedKeys();
                if (rs.next()) {
                    id = rs.getLong(1);
                }
            } catch (SQLException e) {
                e.printStackTrace();
            }

            for (String name : names) {
                String n = name.replace("D:\\Google云盘\\项目\\孟晨拍卖网\\和田玉\\", "").replace(".jpg", "");

                String pattern = "\\d*?$";
                Pattern r = Pattern.compile(pattern);
                Matcher m = r.matcher(n);
                if (m.find()) {
                    n = m.replaceAll("");
                }
                if (n.equals(dd[2])) {
                    String uuid = SystemUtil.randomUUID();
                    FileTools.Copy(name, "D:\\dev\\project\\auction\\classes\\artifacts\\auction_Web_exploded\\uploadFiles\\20170817\\" + uuid + ".jpg");

                    try {
                        ps = conn.prepareStatement("INSERT INTO goods_info_imgs(goods_id,url) VALUES (?,?)", Statement.RETURN_GENERATED_KEYS);
                        ps.setObject(1, id);
                        ps.setString(2, "/uploadFiles/20170817/" + uuid + ".jpg");
                        ps.execute();
                    } catch (SQLException e) {
                        e.printStackTrace();
                    }
                    //ps.setString(1, "test");
                    System.out.println(n);
                }
            }
        }
    }

    public void f3() {
        FileTool ft = new FileTool("D:\\dev\\project\\auction\\classes\\artifacts\\auction_Web_exploded\\uploadFiles\\20170817");

        String[] ns = ft.getFileNames();
        for (String n : ns) {
            try {
                Thumbnails.of(n)
                        .size(350, 350)
                        .outputFormat("jpg")
                        .toFile(n+".x");
            } catch (IOException e) {
                e.printStackTrace();
            }
            System.out.println(n);
        }

    }

    public static void main(String[] args) {
        DataInput di = new DataInput();
        di.f3();
    }
}
