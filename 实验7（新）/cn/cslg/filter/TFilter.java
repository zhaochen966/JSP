package cn.cslg.filter;

import java.io.IOException;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebFilter("/exp07/LogServlet")
public class TFilter implements Filter {
	public void destroy() {
		// TODO Auto-generated method stub
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		HttpServletRequest req = (HttpServletRequest) request;
		HttpServletResponse resp = (HttpServletResponse) response;
		
		// ���post������������
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		// ���get������������
		HttpServletRequest proxy = (HttpServletRequest) Proxy.newProxyInstance(req.getClass().getClassLoader(),
				new Class[] { HttpServletRequest.class }, new InvocationHandler() {
					@Override
					public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
						String methodName = method.getName();
					if ("getParameter".equals(methodName)) {
							// ���get������������
							// ���ܴ˷����Ĳ���
							String value = req.getParameter(args[0].toString());
							// �ж�����ʽ-��ȡ��ǰ����ķ�ʽ GET POST
							String methodSubmit = req.getMethod();
							if ("GET".equals(methodSubmit)) {
								// �ǿ��ж�
								if (value != null && value.length() > 0) {
									// �Խ��ܵ��Ĳ������б���
									value = new String(value.getBytes("ISO-8859-1"), "utf-8");
								}
							}

								if (value.startsWith("T")) {
									value = "��½ʧ��:" + value + "<br>" + "�û�����T��ͷ�ˣ�";
								}else{
									value = "��½�ɹ���" + value;
								}
							return value;
							
						} else {
							Object returnValue = method.invoke(req, args);
							return returnValue;
						}
					}
				});
		chain.doFilter(proxy, response);//����
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
