package cn.spring.c3p0;


import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.cslg.exp7.UserBean;



public class Test {
	
	public static void main(String[] args) {
	String xmlPath = "cn/spring/c3p0/beans.xml";
	ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlPath);
	
	UserDao userDao = (UserDao) applicationContext.getBean("userDaoId");
	UserBean userBean = new UserBean();
/*	userBean = userDao.findById("6");
    if(userBean == null){
    	System.out.println("55");
    }else{
    	System.out.println(userBean.getPassword());	
    }*/
	userBean = userDao.findById("1");
	System.out.println(userBean);
	
	}
	
}
