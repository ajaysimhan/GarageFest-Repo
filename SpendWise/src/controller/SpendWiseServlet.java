package controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.LoginModel;

/**
 * Servlet implementation class SpendWiseServlet
 */
public class SpendWiseServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = checkSession(request);
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();

		switch (request.getParameter("myAction")) {
		case ("login"):
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			LoginModel lm = new LoginModel();
			boolean isValidUser = lm.validateUser(username, password);
			if (isValidUser) {
				response.sendRedirect("index.html");
			}
			break;
		case ("logout"):
			HttpSession session1 = request.getSession(false);
			if (session1 != null) {
				session1.invalidate();
				response.sendRedirect("login.html");
			}
			break;
		case ("getStarted"):
			response.sendRedirect("accounts.html");
			break;
		case ("addAccounts"):
			response.sendRedirect("accounts.html");
			break;
		case ("analyseSpending"):
			response.sendRedirect("reports.html");
			break;
		case ("suggestPortfolio"):
			response.sendRedirect("products.html");
			break;
		}
		out.flush();
		out.close();
	}

	private HttpSession checkSession(HttpServletRequest request) {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username == null) {
			username = request.getParameter("username");
		}
		return session;
	}

}
