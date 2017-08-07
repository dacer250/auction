package com.filter;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class SystemListener implements ServletContextListener {
    protected Logger logger = LogManager.getLogger(this.getClass().getName());

    @Override
    public void contextInitialized(ServletContextEvent servletContextEvent) {

        /*WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext());
        XmlWebApplicationContext xml = (XmlWebApplicationContext) context;
        DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();


        RootBeanDefinition beanDefine = new RootBeanDefinition(IncomeService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
        beanFactory.registerBeanDefinition(IncomeService.class.getName(), beanDefine);
        IncomeIface service = context.getBean(IncomeService.class.getName(), IncomeIface.class);

        service.runIncomeDetails();*/

        /*WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext());
        XmlWebApplicationContext xml = (XmlWebApplicationContext) context;
        DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();

        RootBeanDefinition beanDefine = new RootBeanDefinition(IncomeService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
        beanFactory.registerBeanDefinition(IncomeService.class.getName(), beanDefine);
        IncomeIface service = context.getBean(IncomeService.class.getName(), IncomeIface.class);

        Date date1 = null, date2 = null;
        System.out.println("@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@");
        try {
            date1 = SystemUtil.sdfDateTime().parse("2017-04-01 00:00:00");
            date2 = SystemUtil.sdfDateTime().parse("2017-05-05 00:00:00");
        } catch (ParseException e) {
            e.printStackTrace();
        }
        System.out.println("###########################################################");
        service.runIncomeDetails(date1, date2);*/



    }


    @Override
    public void contextDestroyed(ServletContextEvent servletContextEvent) {
    }

/*

    String beanId = ConfigService.class.getName();

    WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(_e.getServletContext());
    XmlWebApplicationContext xml = (XmlWebApplicationContext) context;
    DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();
    RootBeanDefinition beanDefine = new RootBeanDefinition(ConfigService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
            beanFactory.registerBeanDefinition(beanId, beanDefine);
    ConfigIface service = context.getBean(beanId, ConfigIface.class);

*/

}
