package com.frame.base;

import com.frame.bean.ObjectMap;
import com.frame.bean.PageBean;
import com.frame.factory.ServiceFactory;
import com.opensymphony.xwork2.ActionSupport;
import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.struts2.ServletActionContext;

import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;


public class BaseAction extends ActionSupport {
    protected Logger logger = LogManager.getLogger(this.getClass().getName());

    public static final String LIST = "list";
    public static final String EDIT = "edit";

    @SuppressWarnings("unused")
    private static final String REDIRECT = "_redirect";
    private static final String MSG = "_msg";
    private static final String DYNAMIC = "dynamic";
    private String _target;


    private String go;
    protected String id;
    protected int pageno;
    protected int pagesize;
    protected String property;
    protected String order;
    protected String[] ids;
    protected String _jsonString;
    private PageBean pageBean;
    private Map<String, String> f;
    private ObjectMap<String, String> o = new ObjectMap<String, String>();
    private Map<String, ?> obj;
    private Map<String, String> paramMap;
    private boolean backList;

    public String get_target() {
        return _target;
    }

    public void set_target(String _target) {
        this._target = _target;
    }

    protected String render(String _target) {
        set_target(_target);
        return DYNAMIC;
    }

    public String redirect(String url) {
        return redirect(url, true, 0);
    }

    public void addParam(String name, String value) {
        if (paramMap == null) {
            paramMap = new HashMap<String, String>();
        }
        paramMap.put(name, value);
    }

    public void addReqParam(String name, Object obj) {
        ServletActionContext.getRequest().setAttribute(name, obj);
    }

    public String redirect(String url, boolean keepParameter, int seconds) {
        try {
            ServletActionContext.getResponse().sendRedirect(url);
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
//		HttpServletRequest request = ServletActionContext.getRequest();
//		request.setAttribute("_url", URLUtil.processUrl(url));
//		request.setAttribute("_keepParameter", keepParameter);
//		request.setAttribute("_seconds", seconds);
//		return REDIRECT;
        return null;
    }

    public String showMsgPage(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "msg");
        return MSG;
    }

    public String showWarnPage(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "warn");
        return MSG;
    }

    public String showErrorPage(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "error");
        return MSG;
    }

    /**
     * 同一页面显示msg
     *
     * @param msg ===========Modify Record===========
     * @author "石明(shiming@ec.com.cn)" 2010-9-11  创建
     */
    public void addMsg(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "msg");
    }

    /**
     * 同一页面显示警告
     *
     * @param msg ===========Modify Record===========
     * @author "石明(shiming@ec.com.cn)" 2010-9-11  创建
     */
    public void addWarn(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "warn");
    }

    /**
     * 同一页面显示错误
     *
     * @param msg ===========Modify Record===========
     * @author "石明(shiming@ec.com.cn)" 2010-9-11  创建
     */
    public void addError(String msg) {
        HttpServletRequest request = ServletActionContext.getRequest();
        request.setAttribute("info_msg", msg);
        request.setAttribute("info_type", "error");
    }

    protected Map<String, Object> parsePageBean(PageBean pageBean) {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("total", pageBean.getTotalrow());
        map.put("root", pageBean.getRetList());
        return map;
    }

    protected String json(Object obj) {
        _jsonString = JSONArray.fromObject(obj).toString();
        return "json";
    }

    protected String jsonToObject(Object object) {
        _jsonString = JSONObject.fromObject(object).toString();
        return "json";
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public int getPageno() {
        return pageno;
    }

    public void setPageno(int pageno) {
        this.pageno = pageno;
    }

    public int getPagesize() {
        if (pagesize < 1)
            pagesize = 15;
        return pagesize;
    }

    public void setPagesize(int pagesize) {
        this.pagesize = pagesize;
    }

    public String getProperty() {
        return property;
    }

    public void setProperty(String property) {
        this.property = property;
    }

    public String getOrder() {
        return order;
    }

    public void setOrder(String order) {
        this.order = order;
    }

    public String[] getIds() {
        return ids;
    }

    public void setIds(String[] ids) {
        this.ids = ids;
    }

    public PageBean initPageBean() {
        pageBean = new PageBean();
        pageBean.setFiltermap(getF());
//		pageBean.addExactMatch("enterpriseId");
        pageBean.setPageno(this.getPageno());
        pageBean.setPagesize(this.getPagesize());
        pageBean.setProperty(this.getProperty());
        pageBean.setSortOrder(this.getOrder());
        return pageBean;
    }

    public <T> T getService(Class<?> clz, Class<T> aimClz) {
        return ServiceFactory.getBean(clz, aimClz);
    }

    public <T> T getService(String str, Class<T> clz) {
        return ServiceFactory.getBean(str, clz);
    }

    public String get_jsonString() {
        return _jsonString;
    }

    public void setPageBean(PageBean pageBean) {
        this.pageBean = pageBean;
    }

    public PageBean getPageBean() {
        return pageBean;
    }

    public boolean needBack() {
        return backList;
    }

    public void setBackList(boolean backList) {
        this.backList = backList;
    }

    public String getParamString() {
        StringBuffer sb = new StringBuffer();
        if (paramMap != null) {
            for (String key : paramMap.keySet()) {
                sb.append("<input type='hidden' name='");
                sb.append(key);
                sb.append("' value=");
                sb.append(paramMap.get(key));
                sb.append(" />");
            }
        }
        return sb.toString();
    }

    public String getSearchParemeters() {
        Map<String, Object> map = new HashMap<String, Object>();
        map.put("f", f);
        map.put("pageno", pageno);
        map.put("pagesize", pagesize);
        map.put("property", property);
        map.put("order", order);
        return "<input type='hidden' name=\"searchParemeters\" id=\"id_searchParemeters\" value='" + JSONObject.fromObject(map).toString() + "'>";
    }

    @SuppressWarnings({"deprecation", "unchecked"})
    public void setSearchParemeters(String msg) {
        JSONObject jsonObject = JSONObject.fromObject(msg);
        JSONObject fObject = jsonObject.getJSONObject("f");
        if (!fObject.isNullObject()) {
            Set<String> keySet = fObject.keySet();
            Map<String, String> filteMap = getF();
            for (String key : keySet) {
                filteMap.put(key, fObject.getString(key));
            }
        }
        pageno = jsonObject.getInt("pageno");
        pagesize = jsonObject.getInt("pagesize");
        property = "null".equals(jsonObject.getString("property")) ? null : jsonObject.getString("property");
        order = "null".equals(jsonObject.getString("order")) ? null : jsonObject.getString("order");
    }

    public String go() {
        return render(getGo());
    }

    public String getGo() {
        return go;
    }

    public void setGo(String go) {
        this.go = go;
    }

    public Map<String, String> getF() {
        if (f == null) {
            f = new HashMap<String, String>();
        }
        return f;
    }

    public void setF(Map<String, String> f) {
        this.f = f;
    }

    public ObjectMap<String, String> getO() {
        return o;
    }

    public void setO(ObjectMap<String, String> o) {
        this.o = o;
    }

    public Map<String, ?> getObj() {
        return obj;
    }

    public void setObj(Map<String, ?> obj) {
        this.obj = obj;
    }

    private Map<String, String> solrPage;

    public Map<String, String> getSolrPage() {
        return solrPage;
    }

    public void setSolrPage(Map<String, String> solrPage) {
        this.solrPage = solrPage;
    }

    private String msg_page_body;
    protected String _msgpage = "_msgpage";
    public String getMsg_page_body() {
        return msg_page_body;
    }

    public void setMsg_page_body(String msg_page_body) {
        this.msg_page_body = msg_page_body;
    }
}
