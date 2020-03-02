package com.servlettest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Servlettest2
 */
@WebServlet("/ST/join")
public class Servlettest2 extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===join doGet()===");
		String id = request.getParameter("new_id");
		String pw = request.getParameter("new_pw");
		String residence = request.getParameter("residence");

		System.out.println(id);
		System.out.println(pw);
		System.out.println(residence);
		System.out.println("join complete");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("===join doPOST()===");
		doGet(request, response);
	}

}
