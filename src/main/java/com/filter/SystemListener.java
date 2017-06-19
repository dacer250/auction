package com.filter;

import com.frame.util.SystemUtil;
import com.iface.Core.IncomeIface;
import com.service.Core.IncomeService;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.context.support.WebApplicationContextUtils;
import org.springframework.web.context.support.XmlWebApplicationContext;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;


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


        //每5分钟，同步新注册用户
        Thread t = new Thread(new Runnable() {
            @Override
            public void run() {
                WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext());
                XmlWebApplicationContext xml = (XmlWebApplicationContext) context;
                DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();

                RootBeanDefinition beanDefine = new RootBeanDefinition(IncomeService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
                beanFactory.registerBeanDefinition(IncomeService.class.getName(), beanDefine);
                IncomeIface service = context.getBean(IncomeService.class.getName(), IncomeIface.class);

                while (true) {
                    logger.debug("synchronizeUserInfo");
                    Calendar c = Calendar.getInstance();
                    c.setTime(new Date());
                    c.add(Calendar.MINUTE, -3);

                    Date date1 = c.getTime();
                    Date date2 = new Date();

                    service.synchronizeUserInfo(date1, date2);//同步游戏用户数据
                    service.synchronizeAgencyInfo(date1, date2);
                    service.synchronizeRecharge(date1, date2);
                    service.runIncomeDetails(date1, date2);

                    try {
                        Thread.sleep(1 * 60 * 1000);
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        //t.start();

        //每日3点同步前日信息
        t = new Thread(new Runnable() {
            @Override
            public void run() {
                WebApplicationContext context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext());
                XmlWebApplicationContext xml = (XmlWebApplicationContext) context;
                DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();

                RootBeanDefinition beanDefine = new RootBeanDefinition(IncomeService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
                beanFactory.registerBeanDefinition(IncomeService.class.getName(), beanDefine);
                IncomeIface service = context.getBean(IncomeService.class.getName(), IncomeIface.class);

                while (true) {
                    logger.debug("synchronize all");
                    Calendar c = Calendar.getInstance();
                    c.setTime(new Date());
                    c.add(Calendar.DATE, -1);

                    Date date1 = c.getTime();
                    Date date2 = new Date();

                    service.synchronizeUserInfo(date1, date2);//同步游戏用户数据
                    service.synchronizeAgencyInfo(date1, date2);
                    service.synchronizeRecharge(date1, date2);
                    //service.runIncomeDetailsForDate(date1);

                    String d_t = SystemUtil.sdfDate().format(new Date()) + " 03:00:00";
                    String hh = new SimpleDateFormat("HH").format(new Date());
                    if (Integer.valueOf(hh) > 2) {
                        c.setTime(new Date());
                        c.add(Calendar.DATE, +1);
                        d_t = SystemUtil.sdfDate().format(c.getTime()) + " 03:00:00";
                    }
                    Date new_d = null;
                    try {
                        new_d = SystemUtil.sdfDateTime().parse(d_t);
                    } catch (ParseException e) {
                        e.printStackTrace();
                    }

                    try {
                        logger.debug(SystemUtil.sdfDateTime().format(new_d) + " == " + hh + " == " + (new_d.getTime() - System.currentTimeMillis()));
                        Thread.sleep(new_d.getTime() - System.currentTimeMillis());
                    } catch (InterruptedException e) {
                        e.printStackTrace();
                    }
                }
            }
        });
        //t.start();


        /*context = WebApplicationContextUtils.getRequiredWebApplicationContext(servletContextEvent.getServletContext());
        xml = (XmlWebApplicationContext) context;
        beanFactory = (DefaultListableBeanFactory) xml.getBeanFactory();
        beanDefine = new RootBeanDefinition(VirtualHandicapService.class, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
        beanFactory.registerBeanDefinition(VirtualHandicapService.class.getName(), beanDefine);
        VirtualHandicapIface service2 = context.getBean(VirtualHandicapService.class.getName(), VirtualHandicapIface.class);
        service2.start();*/


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
