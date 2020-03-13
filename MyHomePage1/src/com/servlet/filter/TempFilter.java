package com.servlet.filter;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class TempFilter implements Filter {
	PrintWriter out;

	@Override
	public void init(FilterConfig filter) throws ServletException {
		System.out.println("--filter Init()--");
	}

	@Override
	public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("--filter doFilter()--");

		req.setCharacterEncoding("UTF-8");
		chain.doFilter(req, res);

	}

	@Override
	public void destroy() {
		System.out.println("--filter Destroy()--");
	}

	public void printLog(String log) {
		out.println(log);
		System.out.println(log);
	}

}
