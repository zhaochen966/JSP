package cn.cslg.exp7.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.cslg.exp7.model.Triangle;

@WebServlet("/exp07/TriangleServlet")
public class TriangleServlet extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html;charset=UTF-8");
		String a1 = request.getParameter("num1");
		String a2 = request.getParameter("num2");
		String a3 = request.getParameter("num3");
		
		//��ȡ�����ߵ�ֵ�����ҽ�������ת�������벻�Ϸ����׳��쳣��
		double num1 = 0,num2 = 0,num3 = 0;
		try{
			num1=Double.parseDouble(a1);
			num2=Double.parseDouble(a2);
			num3=Double.parseDouble(a3);
			
			Triangle t = new Triangle(num1,num2,num3);
			double area = t.area(t);

			if(area>0){
				response.sendRedirect("show.jsp?area=" + area);
			}if(area == 0){
				response.getWriter().println("�޷����������Σ�����");
			}
			
		}catch(Exception e){
			response.getWriter().println("���������֣�����");
		}

		
	}
}
