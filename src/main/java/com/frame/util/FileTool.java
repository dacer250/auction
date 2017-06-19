package com.frame.util;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

import java.io.*;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.util.ArrayList;
import java.util.List;

/**
 * 对文件的相关操作
 * Created by IntelliJ IDEA.
 * Base: Administrator
 * Date: 2009-10-11
 * Time: 22:37:21
 * To change this template use File | Settings | File Templates.
 */

public class FileTool {

    protected final Log log = LogFactory.getLog(getClass());

    private File file;

    public FileTool(String path) {
        file = new File(path);
    }


    /**
     * 获得WEB程序根目录
     * 局限性：只有当根目录包含"WEB-INF"情况下，才能查找到，否则返回类的编译路径
     *
     * @return
     */
    public static String getWebProjectPath() {
        String str = getClassPath(FileTool.class);
        if (str.toLowerCase().indexOf("web-inf") > -1) {
            str = str.substring(0, str.toLowerCase().indexOf("web-inf"));
        }
        return str;
    }


    /**
     * 获得项目物理路径
     *
     * @return
     */
    public String getPath() {
        try {
            return file.getCanonicalPath();
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
        return null;
    }

    /**
     * 新建目录
     *
     * @param pathName 目录名称
     */
    public void createFolder(String pathName) {
        if (pathName.substring(0, 1).indexOf(File.separator) == 0) {
            pathName = pathName.substring(1, pathName.length());
        }

        String path = getPath();
        if (file.isFile()) {
            path = path.substring(0, path.lastIndexOf(File.separator));
        }

        new File(path + File.separator + pathName).mkdir();
    }

    /**
     * 创建多级目录，目录级别已斜杠 ( \ ) 分割
     *
     * @param pathNames
     */
    public void createFolders(String pathNames) {
        String[] names = pathNames.split("\\\\");
        String name = "";
        for (String n : names) {
            name = name + n + File.separator;
            createFolder(name);
        }
    }


    /**
     * 如果当前创建的对象是一个文件对象，则获得此文件内容，默认为GBK编码
     *
     * @return
     */
    public String getBodyByGBK() {
        return getBody("GBK");
    }

    /**
     * 如果当前创建的对象是一个文件对象，则获得此文件内容
     *
     * @param encoding 字符集编码
     * @return
     */
    public String getBody(String encoding) {
        if (file.isFile()) {
            return FileTool.getFileBody(getPath(), encoding);
        }
        return null;
    }


    /**
     * 得到当前目录下文件
     *
     * @return
     */
    public String[] getFileName() {
        File[] files = file.listFiles();

        List list = new ArrayList();
        for (int i = 0; i < files.length; i++) {
            if (!files[i].isDirectory()) {
                list.add(files[i].getAbsolutePath());
            }
        }

        String[] strs = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strs[i] = list.get(i).toString();
        }

        return strs;
    }


    /**
     * 获得目录下所有文件列表，包括子目录。
     *
     * @return
     */
    public String[] getFileNames() {
        List list = getFiles(getPath());
        String[] strs = new String[list.size()];
        for (int i = 0; i < list.size(); i++) {
            strs[i] = list.get(i).toString();
        }
        return strs;
    }

    public String[] getFileNamesBySelect(String fileType) {
        List<String> names = new ArrayList();
        for (String s : getFileNames()) {
            if (s.indexOf(fileType) > 0) {
                names.add(s);
            }
        }
        String[] str = new String[names.size()];
        for (int i = 0; i < names.size(); i++) {
            str[i] = names.get(i);
        }
        return str;
    }


    private List getFiles(String path) {
        if (file.isFile()) {
            return null;
        }
        File[] files = new File(path).listFiles();
        List<String> file = new ArrayList();
        List<String> folders = new ArrayList();

        for (int i = 0; i < files.length; i++) {
            if (files[i].isDirectory()) {
                folders.add(files[i].getAbsolutePath());
            } else {
                file.add(files[i].getAbsolutePath());
            }
        }

        for (String str : folders) {
            file.addAll(getFiles(str));
        }
        return file;
    }


    public void createFile(String fileName, String body) {
        createFile(fileName, body.getBytes());
    }

    public void createFile(String fileName, byte[] body) {
        try {
            FileOutputStream fos = new FileOutputStream(getPath() + File.separator + fileName, false);
            fos.write(body);
            fos.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
    }

    public synchronized static void copyTo(String filePath1, String filePath2) {
        FileChannel fc = null;
        try {
            fc = new FileInputStream(filePath1).getChannel();
        } catch (FileNotFoundException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }

        ByteBuffer bb = null;
        if (fc != null) {
            try {
                bb = MappedByteBuffer.allocate((int) fc.size());
                fc.read(bb);
                fc.close();
                fc = null;
            } catch (IOException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }
        }

        try {
            FileOutputStream fos = new FileOutputStream(filePath2, false);
            fos.write(bb.array());
            fos.close();
        } catch (FileNotFoundException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }


    }


    /**
     * 读取文件
     *
     * @return
     */
    public synchronized static String getFileBody(String filePath, String encoding) {

        FileChannel fc = null;
        try {
            fc = new FileInputStream(filePath).getChannel();
        } catch (FileNotFoundException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }

        ByteBuffer bb = null;
        if (fc != null) {
            try {
                bb = MappedByteBuffer.allocate((int) fc.size());
                fc.read(bb);
                fc.close();
                fc = null;
            } catch (IOException e) {
                e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            }
        }

        String str = null;
        try {
            str = new String(bb.array(), encoding);
        } catch (UnsupportedEncodingException e) {
            //e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            str = "编码转换错误";
        }
        return str;
    }

    /**
     * 生成文件
     *
     * @param filePath
     * @param body
     */
    public synchronized static void setFileBody(String filePath, String body, String encoding) {

        if (body == null) {
            System.out.println("内容为空，不可写入");
            return;
        }
        try {
            BufferedWriter bw = bw = new BufferedWriter(new OutputStreamWriter(
                    new FileOutputStream(filePath), encoding));
            bw.write(body);
            bw.flush();
        } catch (FileNotFoundException e) {
            //e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        } catch (IOException e) {
            //e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
        }
    }

    /**
     * 获得文件物理路径
     *
     * @return
     */
    public synchronized static String getClassPath(Class classs) {
        if (classs == null) {
            return null;
        }
        String path = classs.getResource("").toString().replace("file:/", "").replace("/", File.separator);
        if (!(path.indexOf(":") > -1)) {
            path = File.separator + path;
        }
        return path;
    }

    /**
     * 获得WEB程序根目录
     * 局限性：只有当根目录包含"WEB-INF"情况下，才能查找到，否则返回类的编译路径
     *
     * @return
     */
    public synchronized static String getWebProjectPath(Class classs) {
        String str = getClassPath(classs);
        if (str.toLowerCase().indexOf("web-inf") > -1) {
            str = str.substring(0, str.toLowerCase().indexOf("web-inf"));
        }
        return str;
    }

    public boolean delete() {
        if (file.exists()) {                    //判断文件是否存在
                return file.delete();                     //delete()方法 你应该知道 是删除的意思;
        }
        return false;
    }

    public static void main(String[] args) {
        FileTool ft = new FileTool("D:\\项目\\m日志20090414.txt");
        System.out.println(ft.getBodyByGBK());

        System.out.println(" ------------- ");


        /*
        System.out.println(ft.getPath());

        //ft.createFolders("\\aaa\\bbb\\ccc\\ddd");

        System.out.println(Thread.currentThread().getContextClassLoader().getResource(""));
        System.out.println(FileTool.class.getClassLoader().getResource(""));
        System.out.println(ClassLoader.getSystemResource(""));
        System.out.println(FileTool.class.getResource(""));
        System.out.println(FileTool.class.getResource("/"));
        System.out.println(new File("").getAbsolutePath());
        System.out.println(System.getProperty("ext-all.js"));


        Pattern pPattern = Pattern.compile("a");
        Matcher m = pPattern.matcher("aaaa");
        m.find();
        System.out.println();
        */

    }


}
