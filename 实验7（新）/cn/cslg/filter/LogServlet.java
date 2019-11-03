package cn.cslg.filter;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/exp07/LogServlet")
public class LogServlet extends HttpServlet {

	@Override
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		pos��ʽ��Ҫ���ñ���
		request.setCharacterEncoding("utf-8");
//		��ȡ������û���
		String msg = request.getParameter("username");
//		��������ֵ��������һ��ҳ��
		request.setAttribute("uname", msg);
//		������ת������forward����ֻ���ض���ͬһ��WebӦ�ó����е�һ����Դ��
//		��response.sendRedirect�������������ض����κ�URL��
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
