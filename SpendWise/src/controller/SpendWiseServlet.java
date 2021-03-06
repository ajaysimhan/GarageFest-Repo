package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;

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
import model.ReportsModel;
import model.SaveKittyModel;
import products.ProductManager;
import transactions.TransactionClassifier;

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
		case ("getStarted"):
			request.setAttribute("action", "");
			RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/accounts.jsp");
			rd1.forward(request, response);
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
		    TransactionClassifier transactions = new TransactionClassifier();
			HashMap<String, Integer> transactionTypes = transactions.getTransactionsForChart();
			ReportsModel rm = new ReportsModel();
			rm.buildWasteTransactionList(transactionTypes);
			request.setAttribute("categoryList", rm.getCategories());
			request.setAttribute("expenseList", rm.getExpenses());
			RequestDispatcher rd4 = request.getRequestDispatcher("/WEB-INF/reports.jsp");
			rd4.forward(request, response);
			break;
		case "dataCapture":
			RequestDispatcher rd8 = request.getRequestDispatcher("/WEB-INF/datacapture.jsp");
			rd8.forward(request, response);
			break;
		case "saveKitty":
            RequestDispatcher rd6 = request.getRequestDispatcher("/WEB-INF/savekitty.jsp");
            SaveKittyModel sm = new SaveKittyModel();
            request.setAttribute("kittymood", sm.getKittyMood());
		rd6.forward(request, response);
		break;

		case "home":
			RequestDispatcher rd7 = request.getRequestDispatcher("/WEB-INF/index.jsp");
			rd7.forward(request, response);
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
		case ("suggestPortfolio"):
			try {
				BasicInfoModel basicInfo = new BasicInfoModel(request);
				basicInfo.saveBasicInfo();
				ProductManager productManager = new ProductManager(request);
			} catch (Exception e) {
				e.printStackTrace();
			}
			RequestDispatcher rd1 = request.getRequestDispatcher("/WEB-INF/products.jsp");
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
