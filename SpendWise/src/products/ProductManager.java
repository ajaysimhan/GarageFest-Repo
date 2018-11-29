package products;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;

import risk.RiskAlgo;
import suggestion.SuggestionDTO;
import transactions.TransactionDTO;

public class ProductManager {
	
	public ArrayList<ProductDTO> products = null;
	public String riskCategory;
	public SuggestionDTO suggestion;

	public ProductManager(HttpServletRequest request) throws Exception{
		
		initializeProducts();
		request.setAttribute("productlist", products);
		request.setAttribute("riskCategory", riskCategory);
		request.setAttribute("suggestion", suggestion);
	}
	
	private void initializeProducts() throws Exception {
		
		RiskAlgo ra = new RiskAlgo();
		double financialRisk = ra.getFinancialRisk();
		riskCategory = ra.getRiskCategory(financialRisk);
		products = ra.getProductsforRisk(financialRisk);
		suggestion = ra.getSuggestion();
	}
}
