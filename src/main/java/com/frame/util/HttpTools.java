package com.frame.util;


import net.sf.json.JSONObject;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.http.*;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.params.ConnRoutePNames;
import org.apache.http.conn.params.ConnRouteParams;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.impl.conn.tsccm.ThreadSafeClientConnManager;
import org.apache.http.params.CoreConnectionPNames;
import org.apache.http.protocol.HTTP;
import org.apache.http.util.EntityUtils;
import org.jsoup.Jsoup;

import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.net.*;
import java.util.List;


/**
 * Created with IntelliJ IDEA.
 * Base: yibo.ma
 * Date: 13-8-1
 * Time: 上午10:12
 * To change this template use File | Settings | File Templates.
 */
public class HttpTools {
    public static Jsoup jsoup;
    protected final Log log = LogFactory.getLog(getClass());

    private DefaultHttpClient hc;
    private HttpGet hg;
    private HttpPost httpPost;

    private HttpResponse hr;
    private HttpEntity he;


    public DefaultHttpClient getHc() {
        return hc;
    }


    public HttpTools() {
        //hc = new DefaultHttpClient();
        hc = new DefaultHttpClient(new ThreadSafeClientConnManager());

        hg = new HttpGet();
        httpPost = new HttpPost();

        //请求超时
        hc.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 10 * 1000);
        //读取超时
        hc.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 10 * 1000);

        addHeader("Base-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53");

    }

    public HttpTools(byte ip[]) {
        hc = new DefaultHttpClient(new ThreadSafeClientConnManager());

        hg = new HttpGet();
        httpPost = new HttpPost();

        //请求超时
        hc.getParams().setParameter(CoreConnectionPNames.CONNECTION_TIMEOUT, 10 * 1000);
        //读取超时
        hc.getParams().setParameter(CoreConnectionPNames.SO_TIMEOUT, 10 * 1000);

        addHeader("Base-Agent", "Mozilla/5.0 (iPhone; CPU iPhone OS 7_0 like Mac OS X; en-us) AppleWebKit/537.51.1 (KHTML, like Gecko) Version/7.0 Mobile/11A465 Safari/9537.53");

        //byte ip[] = new byte[] { (byte) 192, (byte) 168, 1, 105 };
        try {
            hc.getParams().setParameter(ConnRouteParams.LOCAL_ADDRESS,
                    InetAddress.getByAddress(ip));
        } catch (UnknownHostException e) {
            e.printStackTrace();
        }
    }

    public void setUrl(String url) {
        hg = new HttpGet(url);
    }

    public void setUrl(URI uri) {
        hg = new HttpGet(uri);
    }

    public void addHeader(String name, String value) {
        hg.addHeader(name, value);
        httpPost.addHeader(name, value);
    }

    public Header[] getHeader() {
        return hr.getAllHeaders();
    }

    public void close() {
        hc.getConnectionManager().shutdown();
    }


    public void setProxy(String hostname, int port) {
        //DefaultHttpClient client = new DefaultHttpClient();
        //设置代理开始。如果代理服务器需要验证的话，可以修改用户名和密码
        //192.168.1.107为代理地址 808为代理端口 UsernamePasswordCredentials后的两个参数为代理的用户名密码
        //client.getCredentialsProvider().setCredentials(new AuthScope("192.168.1.107", 808), new UsernamePasswordCredentials("", ""));
        HttpHost proxy = new HttpHost(hostname, port);
        hc.getParams().setParameter(ConnRoutePNames.DEFAULT_PROXY, proxy);
        //设置代理结束
    }


    public void execute() {
        if (hg != null) {
            try {
                hr = hc.execute(hg);
                //System.out.println(hr.getStatusLine());
            } catch (IOException e) {
                e.printStackTrace();
                log.warn("读取页面错误，URL=" + hg.getURI());
            }
        }
    }


    public String getInnerHTML() {
        return this.getInnerHTML("UTF-8");
    }

    public String getInnerTypeHtml() {
        try {
            execute();
            if (!(hr.getEntity().getContentType().getValue().indexOf("html") > -1)) {
                return "";
            }

            String html = EntityUtils.toString(hr.getEntity(), "UTF-8");
            hr = null;
            if (html != null) {
                return html;
            }
        } catch (Exception e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            log.warn("获得HTML代码错误，URL=" + hg.getURI());
        }
        return "";
    }

    public String getInnerHTML(String encoding) {
        try {
            execute();
//            if (!(hr.getEntity().getContentType().getValue().indexOf("html") > -1)) {
//                return "";
//            }

            String html = EntityUtils.toString(hr.getEntity(), encoding);
            hr = null;
            if (html != null) {
                return html;
            }
        } catch (Exception e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            log.warn("获得HTML代码错误，URL=" + hg.getURI());
        }
        return "";
    }


    public byte[] getByteArray() {
        try {
            execute();
            if (hr.getEntity() != null) {
                return EntityUtils.toByteArray(hr.getEntity());
            }
        } catch (Exception e) {
            //e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            log.warn("获得HTML代码错误，URL=" + hg.getURI());
        }
        return null;
    }


    public String post(String url, List<NameValuePair> p) {
        httpPost.setURI(URI.create(url));
        try {
            httpPost.setEntity(new UrlEncodedFormEntity(p, HTTP.UTF_8));

            hr = hc.execute(httpPost);

            //System.out.println(url + " == " + hr.getStatusLine().getStatusCode());
            if (hr.getStatusLine().getStatusCode() == 301 || hr.getStatusLine().getStatusCode() == 303) {
                System.out.println(url + " == " + hr.getStatusLine().getStatusCode());
                Header[] hs = hr.getHeaders("Location");
                if (hs.length > 0) {
                    System.out.println(hs[0]);
                    EntityUtils.toString(hr.getEntity(), "gb2312");
                    return hs[0].toString().replace("Location: ", "");
                }
            }

            String html = EntityUtils.toString(hr.getEntity(), "gb2312");

            hr = null;

            return html;
        } catch (IOException e) {
            e.printStackTrace();  //To change body of catch statement use File | Settings | File Templates.
            return null;
        }
    }


    public byte[] post(URI uri) {
        StringEntity entity = null;
        try {
            entity = new StringEntity("");
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

        entity.setChunked(true);
        HttpPost httppost = new HttpPost(uri);
        httppost.setEntity(entity);

        HttpResponse response = null;


        byte[] btArray = new byte[0];

        try {
            response = hc.execute(httppost);

            HttpEntity httpentity = response.getEntity();

            if (httpentity != null) {
                //读取流
                InputStream instream = entity.getContent();
                //读取字符串
                String rpString = EntityUtils.toString(entity);
                //读取字节
                btArray = EntityUtils.toByteArray(httpentity);


                //请求关闭
                httppost.abort();
                //另一种关闭方式
                //httpclient.getConnectionManager().shutdown();
            }
        } catch (IOException e) {
            e.printStackTrace();
        }

        return btArray;
    }


    public static void main(String[] args) {

//        HttpTools hct = new HttpTools();
//
//
//        hct.setUrl("http://www.eeeqi.cn/page/?s=15963");
//
//        hct.addHeader("host","www.eeeqi.cn");
//        hct.addHeader("user-agent","Mozilla/5.0 (Windows NT 6.1; WOW64; rv:22.0) Gecko/20100101 Firefox/22.0");
//        hct.addHeader("accept","*/*");
//        hct.addHeader("accept-language","zh-cn,zh;q=0.8,en-us;q=0.5,en;q=0.3");
//        hct.addHeader("accept-encoding","gzip, deflate");
//        hct.addHeader("referer","http://weibubo.com/");
//        hct.addHeader("connection","keep-alive");
//
//        System.out.println(hct.getInnerHTML("GB2312"));
        URL url = null;
        URI uri = null;
        try {
            url = new URL("http://client.gushitong.baidu.com/ui/gushitong?queryURL=stockreport&from=android&os_ver=18&format=pb&vv=1.2.0&uid=&BDUSS=&cuid=AEBF3D89B38255E6ECA0DD9FAA8A03AE|443969535210414&stock_code=sh601901&page_index=1&page_size=20");
            uri = new URI(url.getProtocol(), url.getHost(), url.getPath(), url.getQuery(), null);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

        HttpTools hct = new HttpTools();
        byte[] b1 = hct.post(uri);
        byte[] tt = null;
        try {
            for (int i = 0; i < b1.length; i++) {
                tt = new byte[i + 1];
                for (int j = 0; j < i; j++) {
                    tt[j] = b1[j];
                    System.out.println(b1[j]);
                }
                System.out.println(new String(tt, "UTF-8"));
            }

        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }

/*
        HttpTools hct = new HttpTools();
        byte[] b1 = hct.post(uri);

        try {
            url = new URL("http://client.gushitong.baidu.com/ui/gushitong?queryURL=gettagnews&from=android&os_ver=18&format=pb&vv=1.2.0&uid=&BDUSS=&cuid=AEBF3D89B38255E6ECA0DD9FAA8A03AE|443969535210414&tagid=&tagname=%E8%91%9B%E6%B4%B2%E5%9D%9D&count=5");
            uri = new URI(url.getProtocol(), url.getHost(), url.getPath(), url.getQuery(), null);
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }

        byte[] b2 = hct.post(uri);

        byte[] b3 = new byte[b1.length + b2.length];

        for (int i = 0; i < b1.length; i++) {
            b3[i] = b1[i];
        }

        int c = b1.length - 1;
        for (int i = 0; i < b2.length; i++) {
            b3[c] = b2[i];
            c++;
        }

        try {
            System.out.println(new String(b3,"ISO-8859-1"));
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
        }*/
    }

    private void httpReqUrl(JSONObject jsonParam, String url)
            throws ClientProtocolException, IOException {

        log.info("httpclient执行新闻资讯接口开始。");
        JSONObject json = new JSONObject();
        DefaultHttpClient httpClient = new DefaultHttpClient();

        HttpPost method = new HttpPost(url);


        StringEntity entity = new StringEntity(jsonParam.toString(), "utf-8");//解决中文乱码问题
        entity.setContentEncoding("UTF-8");
        entity.setContentType("application/json");
        method.setEntity(entity);

        //这边使用适用正常的表单提交

//               List<BasicNameValuePair> pairList = new ArrayList<BasicNameValuePair>();
        //pairList.add(new BasicNameValuePair("chnl_id", "11"));
        //pairList.add(new BasicNameValuePair("title", bean.getTitle()));// 标题
        //pairList.add(new BasicNameValuePair("content", bean.getContent()));// 资讯内容
        //pairList.add(new BasicNameValuePair("source_url", bean.getSourceUrl()));// 资讯源地址
        //pairList.add(new BasicNameValuePair("source_name", bean.getSourceFrom()));// 来源网站名称
        //pairList.add(new BasicNameValuePair("img_urls", bean.getImgUrls()));// 采用 url,url,url 的格式进行图片的返回
        //method.setEntity(new UrlEncodedFormEntity(pairList, "utf-8"));


        HttpResponse result = httpClient.execute(method);

        // 请求结束，返回结果
        String resData = EntityUtils.toString(result.getEntity());
        JSONObject resJson = JSONObject.fromObject(resData);

        log.debug(resJson.toString());

    }
}
