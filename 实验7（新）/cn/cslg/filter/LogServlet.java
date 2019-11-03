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
//		pos方式需要设置编码
		request.setCharacterEncoding("utf-8");
//		获取输入的用户名
		String msg = request.getParameter("username");
//		保存数据值，传到下一个页面
		request.setAttribute("uname", msg);
//		请求跳转，运用forward方法只能重定向到同一个Web应用程序中的一个资源。
//		而response.sendRedirect方法可以让你重定向到任何URL。
		request.getRequestDispatcher("result.jsp").forward(request, response);
	}

	@Override
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
