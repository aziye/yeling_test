package com.yang.fliter;

import java.io.IOException;
import java.util.Locale;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;

import org.springframework.util.Assert;
import org.springframework.util.StringUtils;
import org.springframework.web.filter.HiddenHttpMethodFilter;

/**
 *  
 * @author <a href="mailto:xingm@vt08.com">xingMiao</a>
 * @version 1.0, 2018年1月12日
 */
public class MyHiddenHttpMethodFilter extends HiddenHttpMethodFilter {
	private String methodParam = DEFAULT_METHOD_PARAM;

	public void setMethodParam(String methodParam) {
		Assert.hasText(methodParam, "'methodParam' must not be empty");
		this.methodParam = methodParam;
	}

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain filterChain)
			throws ServletException, IOException {
		String paramValue = request.getParameter(methodParam);
		String _method = request.getMethod();
		if (StringUtils.hasLength(paramValue)) {
			String method = paramValue.toUpperCase(Locale.ENGLISH);
			boolean b = ("POST".equals(_method))
					|| ("GET".equals(_method) && "DELETE".equalsIgnoreCase(method) && "PUT".equalsIgnoreCase(method));
			if (b) {
				HttpServletRequest wrapper = new HttpMethodRequestWrapper(request, method);
				filterChain.doFilter(wrapper, response);
			} else {
				HttpServletRequest wrapper = new HttpMethodRequestWrapper(request, method);
				filterChain.doFilter(wrapper, response);
			}
		} else {
			filterChain.doFilter(request, response);
		}
	}

	private static class HttpMethodRequestWrapper extends HttpServletRequestWrapper {

		private final String method;

		public HttpMethodRequestWrapper(HttpServletRequest request, String method) {
			super(request);
			this.method = method;
		}

		@Override
		public String getMethod() {
			return this.method;
		}
	}
}

