package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import accounts.Account;
import accounts.AccountDTO;
import model.BasicInfoModel;
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
		case "logout":
			HttpSession session1 = request.getSession(false);
			if (session1 != null) {
				session1.invalidate();
				RequestDispatcher rd1 = request.getRequestDispatcher("login.jsp");
				rd1.forward(request, response);
			}
			break;
		case "addAccounts":
			request.setAttribute("action", "addAccount");
			RequestDispatcher rd2 = request.getRequestDispatcher("/WEB-INF/accounts.jsp");
			rd2.forward(request, response);
			break;
		case "addAnAccount":
			int accountNumber = Integer.parseInt(request.getParameter("accountNumber"));
			AccountDTO account = Account.getAccount(accountNumber);
			request.setAttribute("action", "displayAccounts");
			request.setAttribute("account", account);
			RequestDispatcher rd3 = request.getRequestDispatcher("/WEB-INF/accounts.jsp");
			rd3.forward(request, response);
			break;
		case "analyseSpending":
			ArrayList<String> transactionList = new ArrayList<String>();
			request.setAttribute("transactionList", transactionList);
			RequestDispatcher rd4 = request.getRequestDispatcher("/WEB-INF/reports.jsp");
			rd4.forward(request, response);
			break;
		case "suggestPortfolio":
			RequestDispatcher rd5 = request.getRequestDispatcher("/WEB-INF/products.jsp");
			rd5.forward(request, response);
			break;
		case "saveKitty":
			RequestDispatcher rd6 = request.getRequestDispatcher("/WEB-INF/saveKitty.jsp");
			rd6.forward(request, response);
			break;
		}

		out.flush();
		out.close();

	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
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
				RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/index.jsp");
				rd.forward(request, response);
			} else {
				request.setAttribute("error", "Invalid Credentials");
				RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
				rd.forward(request, response);
			}
			break;
		case ("getStarted"):
			try {
				BasicInfoModel basicInfo = new BasicInfoModel(request);
				basicInfo.saveBasicInfo();
			} catch (Exception e) {
				e.printStackTrace();
			}
			request.setAttribute("action", "");
			RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/accounts.jsp");
			rd1.forward(request, response);
			break;
		}
	}

	private HttpSession checkSession(HttpServletRequest request) {

		HttpSession session = request.getSession();
		String username = (String) session.getAttribute("username");
		if (username == null) {
			username = request.getParameter("username");
			session.setAttribute("username", username);
		}
		return session;
	}

}
