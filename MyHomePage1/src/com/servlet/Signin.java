package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.User;
import com.user.UserDAO;

@WebServlet("/signin")
public class Signin extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		User user = new User();
		user.setMemID(request.getParameter("ID"));
		user.setMemPW(request.getParameter("PW"));
		user.setMemName(request.getParameter("name"));
		user.setMemGender(request.getParameter("gender"));

		HttpSession session = request.getSession();

		if (user.getMemID() == null || request.getParameter("PW") == null || request.getParameter("name") == null) {
			System.out.println("----EMPTY INPUT----");
			response.sendRedirect("signin.jsp");

		}

		else {
			UserDAO userDAO = null;
			try {
				userDAO = new UserDAO();
			} catch (ClassNotFoundException | SQLException e) {
				e.printStackTrace();
			}

			int result = userDAO.join(user);
			if (result == -1) {
				System.out.println("Already exist ID");
				response.sendRedirect("signin.jsp");
			} else {
				session.setAttribute("ID", user.getMemID());
				response.sendRedirect("index.jsp");
			}
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
