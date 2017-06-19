package com.frame.factory;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.context.ApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;

public class ServiceFactory {
    static final Log log = LogFactory.getLog(ServiceFactory.class);
    static ApplicationContext webApplicationContext = WebApplicationContextUtils.getWebApplicationContext(ServletActionContext.getServletContext());

    public static <T> T getBean(Class<?> beanClass, Class<T> aimClass) {
        return getBean(beanClass, true, aimClass);
    }

    public static <T> T getBean(String beanId, Class<T> clz) {
        return webApplicationContext.getBean(beanId, clz);
    }

    /**
     * 通过Spring容器创建bean 其中会检查bean的scope ，避免冲突。bean的scope取决与第一次创建时定义的scope。
     *
     * @param beanClass
     * @param isSingleton
     * @return
     */
    @SuppressWarnings("deprecation")
    public static <T> T getBean(Class<?> beanClass,
                                boolean isSingleton, Class<T> aimClz) {
        String beanId = beanClass.getName();
        if (!webApplicationContext.containsBean(beanId)) {
            XmlWebApplicationContext xml = (XmlWebApplicationContext) webApplicationContext;
            DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();
            RootBeanDefinition beanDefine = new RootBeanDefinition(beanClass, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
//			beanDefine.setSingleton(isSingleton);
//			BeanDefinition beanDefine=new RootBeanDefinition();
//			beanDefine.setBeanClassName(beanId);
//			beanDefine.setScope(beanDefine.SCOPE_SINGLETON);
//			beanDefine.setAutowireCandidate(true);
            beanFactory.registerBeanDefinition(beanId, beanDefine);
//			beanFactory.r

            if (log.isDebugEnabled()) {
                log.debug("create Bean " + beanId);
            }
        }
//		else { // 检查bean的scope ，避免冲突。bean的scope取决与第一次创建时定义的scope。
//			BeanDefinition def = webApplicationContext.get
//			if (isSingleton != def.isSingleton()) {
//				throw new IllegalArgumentException("Can't register bean as "
//						+ (!def.isSingleton() ? "singleton" : "prototype")
//						+ ", it's already registered as "
//						+ (def.isSingleton() ? "singleton" : "prototype")
//						+ ". Bean beanID '" + beanID + "'");
//			}
//		}
        return webApplicationContext.getBean(beanId, aimClz);
    }
}
