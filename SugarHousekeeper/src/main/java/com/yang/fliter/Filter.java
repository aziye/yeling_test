package com.yang.fliter;

import java.io.IOException;
import java.util.List;

import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.filter.OncePerRequestFilter;

import com.alibaba.fastjson.JSONObject;
import com.google.gson.Gson;
import com.yang.util.BodyReaderHttpServletRequestWrapper;
import com.yang.util.BodyString;
import com.yang.util.UrlToJson;
import com.yang.util.XMLReaderJDOM;


/**
 * 过滤器 Title: Filter
 * 
 * @Description: TODO 主要用于验证用户token防止网络端口扫描
 *               此过滤器需要调用dao来进行数据库的操作(验证token)，但是在启动中过滤器优先于spring框架导致注入Dao失败，
 *               所以此过滤器必须要交给spring管理 spring-mabatis.xml中添加配置
 *               <bean name="urlFilter" class=
 *               "cn.com.zwkj.filter.SessionFilter"></bean> 修改web.xml中配置
 * @author: yang
 * @date: Oct 21, 2017 9:39:17 AM
 * @version: 1.0
 */
public class Filter extends OncePerRequestFilter {

	private static Logger logger = Logger.getLogger(Filter.class);
	
	private static Gson gson = new Gson();

	@Override
	protected void doFilterInternal(HttpServletRequest request, HttpServletResponse response, FilterChain chain)
			throws ServletException, IOException {
		
		// 携带的验证数据
		String param = null;
		// 此方法解决request中的数据只能提取一次
		ServletRequest requestWrapper = null;
		if (request instanceof HttpServletRequest) {
			requestWrapper = new BodyReaderHttpServletRequestWrapper((HttpServletRequest) request);
			param = BodyString.getBodyString(requestWrapper.getReader());
		} else {
			param = BodyString.getBodyString(request.getReader());
		}

		// 捕获来访URL
		String URL = request.getRemoteAddr();
		// 请求访问的接口路径
		String URI = request.getRequestURI();
		logger.info("请求方IP:" + URL + ", 请求路径:" + URI + ", 携带数据:" + param);

		if (null == requestWrapper) {
			chain.doFilter(request, response);
			return;
		} else {
			chain.doFilter(requestWrapper, response);
			return;
		}
	}
}