package com.servlet;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.user.UserDAO;

@WebServlet("/login")
public class Login extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String input_ID = request.getParameter("memberID");
		String input_PW = request.getParameter("memberPW");
		HttpSession session = request.getSession();

		try {
			UserDAO userDAO = new UserDAO();
			if (userDAO.check_id(input_ID, input_PW) == false) {
				System.out.println("login fail");
			} else {
				session.setAttribute("ID", input_ID); // 로그인 성공시

			}
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
		}

		response.sendRedirect("index.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
