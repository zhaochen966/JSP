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

@WebServlet("/exp07/UserCheckServlet")//servlet��ע��������jspwebҳ��Ҫ��Ŀ¼��
public class UserCheckServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
	    //post���ñ��룬������������
		request.setCharacterEncoding("utf-8");
		//��ȡ�ı����е���Ϣ
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//spring JDBC��ʽ
		//���������ļ�
		String xmlPath = "cn/spring/c3p0/beans.xml";
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext(xmlPath);
		//��ȡUserDaoʵ��
		UserDao userDao = (UserDao) applicationContext.getBean("userDaoId");
//		UserBean userBean = new UserBean();
		//ִ�в�������ķ���
		UserBean userBean = userDao.findById(username);
		if(userBean == null){
			//���޴��ˣ�������
			String error = "���޴���";
			request.getRequestDispatcher("error.jsp?error=" + error).forward(request, response);
		}else{
		if(userBean.getPassword().equals(password)){
			//��ȷ֮����ת�����Ҵ�����
			request.getRequestDispatcher("welcome.jsp?uname=" + username).forward(request, response);
		}else{
			String error="�������";
			request.getRequestDispatcher("error.jsp?error=" + error).forward(request, response);
		}
		}
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
