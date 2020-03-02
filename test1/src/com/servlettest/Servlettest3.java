package com.servlettest;

import java.io.IOException;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlettest3
 */
@WebServlet("/ST/survey")
public class Servlettest3 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===survey doGET()===");

		String gender = request.getParameter("gender");
		String partner = request.getParameter("partner");
		String[] num = request.getParameterValues("num");

		System.out.println(gender);
		System.out.println(partner);
		System.out.println(Arrays.toString(num));

		System.out.println("survey complete");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("===doPOST()===");
		doGet(request, response);
	}

}
