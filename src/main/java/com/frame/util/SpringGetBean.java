package com.frame.util;

import org.springframework.beans.factory.support.DefaultListableBeanFactory;
import org.springframework.beans.factory.support.RootBeanDefinition;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ConfigurableApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

/**
 * Created by yibo on 2015/4/2.
 */
public class SpringGetBean {
    private static ApplicationContext ac = new ClassPathXmlApplicationContext("applicationContext.xml");

    /**
     * 获得非WEB应用的Spring对象
     * @param beanClass
     * @param aimClass
     * @param <T>
     * @return
     */
    public static <T> T getBean(Class<?> beanClass, Class<T> aimClass) {
        String beanId = beanClass.getName();
        if (!ac.containsBean(beanId)) {
            //将applicationContext转换为ConfigurableApplicationContext
            ConfigurableApplicationContext configurableApplicationContext = (ConfigurableApplicationContext) ac;
            DefaultListableBeanFactory beanFactory = (DefaultListableBeanFactory) configurableApplicationContext.getBeanFactory();
            RootBeanDefinition beanDefine = new RootBeanDefinition(beanClass, RootBeanDefinition.AUTOWIRE_BY_TYPE, false);
            beanFactory.registerBeanDefinition(beanId, beanDefine);
        }
        return ac.getBean(beanId, aimClass);
    }
}
