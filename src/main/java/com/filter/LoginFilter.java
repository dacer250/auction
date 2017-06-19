package com.filter;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.util.AntPathMatcher;
import org.springframework.util.PathMatcher;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.regex.Matcher;
import java.util.regex.Pattern;


/**
 * <p>
 * Title:
 * </p>
 * <p/>
 * <p>
 * Description:
 * </p>
 *
 * @author <a href="mailto:gaotianyu@ec.com.cn">gaotianyu</a>
 * @version 1.0
 * @create 2009-8-10 by ASAP TEAM
 * @CopyRight www.ec.com.cn
 */
public class LoginFilter implements Filter {
    protected Logger logger = LogManager.getLogger(this.getClass().getName());

    private static ThreadLocal<HttpServletRequest> reqLocal = new ThreadLocal<HttpServletRequest>();
    private PathMatcher mather = new AntPathMatcher();
    private static String loginURL = null;
    private String[] disableURL = null;

    private Pattern p;
    private Matcher m;

    public void destroy() {

    }

    public void doFilter(ServletRequest req, ServletResponse arg1,
                         FilterChain arg2) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) req;
        reqLocal.set(request);
        HttpServletResponse httpRes = (HttpServletResponse) arg1;

        Object currentUser = reqLocal.get().getSession().getAttribute("USER_MAP");
        String requestURI = ((HttpServletRequest) req).getRequestURI();
        String hz = requestURI.substring(requestURI.length() - 3, requestURI.length());

        if (hz.equals("jpg") || hz.equals("gif") || hz.equals("css") || hz.equals(".js") || hz.equals("ico")) {
            arg2.doFilter(req, arg1);
            return;
        }

        if (currentUser == null) {
            boolean reDirectFlag = true;
            for (String s : disableURL) {
                p = Pattern.compile(s);
                m = p.matcher(requestURI);
                if (m.find()) {
                    reDirectFlag = false;
                    break;
                }
            }
            if (reDirectFlag) {
                httpRes.sendRedirect(request.getContextPath() + "/" + loginURL);
                return;
            }
        } else {
        }

        arg2.doFilter(req, arg1);
    }

    public void init(FilterConfig conf) throws ServletException {
        loginURL = conf.getInitParameter("loginURL");
        disableURL = conf.getInitParameter("disableURL").split(";");
    }

    public static HttpServletRequest getReq() {
        return reqLocal.get();
    }

}
