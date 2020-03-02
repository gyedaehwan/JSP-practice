package com.servlettest;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ST/login")
public class Servlettest extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===login doGet()===");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		System.out.println(id);
		System.out.println(pw);
		System.out.println("login complete");

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("===login doPost()===");
		doGet(request, response);
	}

}
