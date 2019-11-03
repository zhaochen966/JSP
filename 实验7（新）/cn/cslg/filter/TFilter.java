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
		
		// 解决post中文乱码问题
		req.setCharacterEncoding("utf-8");
		resp.setContentType("text/html;charset=utf-8");
		// 解决get中文乱码问题
		HttpServletRequest proxy = (HttpServletRequest) Proxy.newProxyInstance(req.getClass().getClassLoader(),
				new Class[] { HttpServletRequest.class }, new InvocationHandler() {
					@Override
					public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
						String methodName = method.getName();
					if ("getParameter".equals(methodName)) {
							// 解决get中文乱码问题
							// 接受此方法的参数
							String value = req.getParameter(args[0].toString());
							// 判断请求方式-获取当前请求的方式 GET POST
							String methodSubmit = req.getMethod();
							if ("GET".equals(methodSubmit)) {
								// 非空判断
								if (value != null && value.length() > 0) {
									// 对接受到的参数进行编码
									value = new String(value.getBytes("ISO-8859-1"), "utf-8");
								}
							}

								if (value.startsWith("T")) {
									value = "登陆失败:" + value + "<br>" + "用户名以T开头了！";
								}else{
									value = "登陆成功：" + value;
								}
							return value;
							
						} else {
							Object returnValue = method.invoke(req, args);
							return returnValue;
						}
					}
				});
		chain.doFilter(proxy, response);//放行
		
	}

	public void init(FilterConfig fConfig) throws ServletException {
	}

}
