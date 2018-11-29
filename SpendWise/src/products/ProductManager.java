package products;

import java.util.ArrayList;

import model.HttpServletRequest;
import risk.RiskAlgo;
import suggestion.SuggestionDTO;
import transactions.TransactionDTO;

public class ProductManager {
	
	public ArrayList<ProductDTO> products = null;
	public String riskCategory;
	public SuggestionDTO suggestion;

	public ProductManager(HttpServletRequest request){
		
		initializeProducts();
		request.setAttribute("productlist", products);
		request.setAttribute("riskCategory", riskCategory);
		request.setAttribute("suggestion", suggestion);
	}
	
	private void initializeProducts() {
		
		RiskAlgo riskAlgorithm = new RiskAlgo();
		
		double financialRisk = riskAlgorithm.getFinancialRisk();
		riskCategory = riskAlgorithm.getRiskCategory(financialRisk);
		products = riskAlgorithm.getProductsforRisk(financialRisk);
		suggestion = riskAlgorithm.getSuggestion();
	}
}
