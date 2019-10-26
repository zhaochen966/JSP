package cn.cslg.exp7;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.spring.c3p0.UserDao;

@WebServlet("/exp07/UserCheckServlet")//servlet的注解命名，jspweb页面要带目录名
public class UserCheckServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    //post设置编码，避免中文乱码
		request.setCharacterEncoding("utf-8");
		//获取文本框中的信息
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//spring JDBC格式
		//加载配置文件
		String xmlPath = "cn/spring/c3p0/beans.xml";
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlPath);
		//获取UserDao实例
		UserDao userDao = (UserDao) applicationContext.getBean("userDaoId");
//		UserBean userBean = new UserBean();
		//执行查找密码的方法
		UserBean userBean = userDao.findById(username);
		if(userBean == null){
			//查无此人，传参数
			String error = "查无此人";
			request.getRequestDispatcher("error.jsp?error=" + error).forward(request, response);
		}else{
		if(userBean.getPassword().equals(password)){
			//正确之后跳转，并且传参数
			request.getRequestDispatcher("welcome.jsp?uname=" + username).forward(request, response);
		}else{
			String error="密码错误";
			request.getRequestDispatcher("error.jsp?error=" + error).forward(request, response);
		}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
