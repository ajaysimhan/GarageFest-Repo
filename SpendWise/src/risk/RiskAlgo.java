package risk;

import java.util.ArrayList;

import dao.BasicInfoDTO;
import model.BasicInfoModel;
import products.ProductDTO;
import suggestion.SuggestionDTO;
import transactions.TransactionClassifier;

public class RiskAlgo {

	static double age = 0;
	static double annualIncome = 0;
	static double netWorth = 0;
	static double debt = 0;
	static double debtInterestRate = 0;
	static double monthlyExpense = 0;

	public RiskAlgo() throws Exception {
		init();
	}

	private void init() throws Exception {
		BasicInfoDTO basic = BasicInfoModel.getBasicInfo();
		age = basic.getAge();
		annualIncome = basic.getAnnualIncome();
		netWorth = basic.getNetWorth();
		debt = basic.getTotaldebt();
		debtInterestRate = basic.getDebtInterestRate();

		TransactionClassifier tc = new TransactionClassifier();
		monthlyExpense = tc.getTotalTransactionAmount();
	}

	public static SuggestionDTO getSuggestion() {
		int accNo = 123;

		TransactionClassifier tc = new TransactionClassifier();
		double monthlyIncome = annualIncome / 12;

		double wasteAmount = tc.getNonUsefulTransactionAmount();
		double savingsPermonth = ((double) (Math.random() * 10)) / 18 * monthlyIncome;
		SuggestionDTO sug = getSavingSuggestionsAndInvestibleAmount(monthlyIncome, monthlyExpense, wasteAmount,
				savingsPermonth);
		return sug;
	}

	public static double getFinancialRisk() throws Exception {
		final double LOGCONSTANT = Math.log(24);
		double inflationRate = 2;
		double incomeHealth = getIncomeHealth(annualIncome, LOGCONSTANT);
		double netWorthHealth = getNetworthHealth(netWorth);
		double debtHealth = getDebtHealth(annualIncome, debt, debtInterestRate, inflationRate);
		double expenseHealth = getExpenseHealth(monthlyExpense, annualIncome);
		double agePoints = getAgePoints(age);
		double monthlyIncome = annualIncome / 12;

		double financialRisk = getFinancialRisk(incomeHealth, netWorthHealth, debtHealth, expenseHealth, agePoints);

		return financialRisk;
	}

	private static double getIncomeHealth(double annualIncome, double LOGCONSTANT) {
		double logIncome = (annualIncome / 1000) / LOGCONSTANT;
		double incomeHealth = (logIncome - 1) * 100;
		if (incomeHealth < 5) {
			return 5;
		}
		if (incomeHealth > 100) {
			return 100;
		}
		return incomeHealth;
	}

	private static double getNetworthHealth(double netWorth) {
		if (netWorth < -100000) {
			return -20;
		} else if (netWorth < -10000) {
			return -10;
		} else if (netWorth < 0) {
			return 0;
		} else if (netWorth < 1000) {
			return 10;
		} else if (netWorth < 5000) {
			return 20;
		} else if (netWorth < 10000) {
			return 30;
		} else if (netWorth < 50000) {
			return 40;
		} else if (netWorth < 100000) {
			return 50;
		} else if (netWorth < 100000) {
			return 60;
		} else if (netWorth < 500000) {
			return 75;
		} else if (netWorth < 1000000) {
			return 90;
		}
		return 100;
	}

	private static double getDebtHealth(double annualIncome, double debt, double debtInterestRate,
			double inflationRate) {
		double debtRatio = debt / annualIncome;
		double debtBurden = debtInterestRate - inflationRate;
		if (debtBurden > 2) {
			debtRatio = debtRatio * (debtBurden / 2);
		}
		if (debtRatio > 20) {
			return -90;
		} else if (debtRatio > 15) {
			return -80;
		} else if (debtRatio > 10) {
			return -70;
		} else if (debtRatio > 5) {
			return -60;
		} else if (debtRatio > 4) {
			return -50;
		} else if (debtRatio > 3) {
			return -40;
		} else if (debtRatio > 2) {
			return -30;
		} else if (debtRatio > 1) {
			return -10;
		}
		return 0;
	}

	private static double getExpenseHealth(double monthlyExpense, double annualIncome) {
		double monthlyIncome = annualIncome / 12;
		double expenseHealth = 100 - (monthlyExpense / monthlyIncome) * 100;
		return expenseHealth;
	}

	private static double getAgePoints(double age) {
		if (age < 20) {
			return 20;
		} else if (age <= 60) {
			return (60 - age) / 2;
		} else if (age > 60) {
			return (60 - age);
		}
		return 0;
	}

	public static double getFinancialRisk(double incomeHealth, double netWorthHealth, double debtHealth,
			double expenseHealth, double agePoints) {
		double financialRisk = (incomeHealth * 2 + netWorthHealth * 1.5 + debtHealth + expenseHealth * 2.5) / 7
				+ agePoints;
		if (financialRisk < 5) {
			return 5;
		}
		if (financialRisk > 100) {
			return 100;
		}
		return financialRisk;
	}

	public static ArrayList<ProductDTO> getProductsforRisk(double financialRisk) {
		ArrayList<ProductDTO> productArray = new ArrayList<>();
		if (financialRisk < 10) {
			ProductDTO pr1 = new ProductDTO();
			pr1.setId(1);
			pr1.setName("SpendWise Long-Term Debt Conservative Fund");
			pr1.setFixedIncomeBonds(100);
			productArray.add(pr1);

		} else if (financialRisk < 20) {
			ProductDTO pr2 = new ProductDTO();
			pr2.setId(2);
			pr2.setName("iShares Debt and index Conservative Fund");
			pr2.setFixedIncomeBonds(90);
			pr2.setExchangeTradedFund(10);
			productArray.add(pr2);
		} else if (financialRisk < 40) {
			ProductDTO pr3 = new ProductDTO();
			pr3.setId(3);
			pr3.setName("DSP Black Rock fixed income  Fund");
			pr3.setFixedIncomeBonds(70);
			pr3.setExchangeTradedFund(10);
			pr3.setLargeCapStocks(20);
			productArray.add(pr3);
			ProductDTO pr4 = new ProductDTO();
			pr4.setId(4);
			pr4.setName("CH Inkan KTU wealth conservation Fund");
			pr4.setFixedIncomeBonds(70);
			pr4.setExchangeTradedFund(20);
			pr4.setLargeCapStocks(10);
			productArray.add(pr4);
		} else if (financialRisk < 60) {
			ProductDTO pr5 = new ProductDTO();
			pr5.setId(5);
			pr5.setName("SpendWise L exteria Balanced UTK Fund");
			pr5.setFixedIncomeBonds(50);
			pr5.setExchangeTradedFund(20);
			pr5.setLargeCapStocks(20);
			pr5.setMidCapStocks(10);
			productArray.add(pr5);
			ProductDTO pr6 = new ProductDTO();
			pr6.setId(6);
			pr6.setName("Value Line Asset Allocation Fund");
			pr6.setFixedIncomeBonds(40);
			pr6.setExchangeTradedFund(30);
			pr6.setLargeCapStocks(20);
			pr6.setMidCapStocks(10);
			productArray.add(pr6);
			ProductDTO pr7 = new ProductDTO();
			pr7.setId(7);
			pr7.setName("Fidelity® Balanced Fund");
			pr7.setFixedIncomeBonds(40);
			pr7.setExchangeTradedFund(20);
			pr7.setLargeCapStocks(20);
			pr7.setMidCapStocks(20);
			productArray.add(pr7);
		} else if (financialRisk < 80) {
			ProductDTO pr8 = new ProductDTO();
			pr8.setId(8);
			pr8.setName("MFS® Growth Allocation Fund");
			pr8.setFixedIncomeBonds(20);
			pr8.setExchangeTradedFund(20);
			pr8.setLargeCapStocks(30);
			pr8.setMidCapStocks(20);
			pr8.setSmallAndMicroCapStocks(10);
			productArray.add(pr8);
			ProductDTO pr9 = new ProductDTO();
			pr9.setId(9);
			pr9.setName("AR Yape Growth Portfolio");
			pr9.setFixedIncomeBonds(10);
			pr9.setExchangeTradedFund(30);
			pr9.setLargeCapStocks(30);
			pr9.setMidCapStocks(10);
			pr9.setSmallAndMicroCapStocks(20);
			productArray.add(pr9);
			ProductDTO pr10 = new ProductDTO();
			pr10.setId(10);
			pr10.setName("CO Lgate Balanced Fund");
			pr10.setFixedIncomeBonds(25);
			pr10.setLargeCapStocks(30);
			pr10.setMidCapStocks(30);
			pr10.setSmallAndMicroCapStocks(15);
			productArray.add(pr10);
		} else if (financialRisk < 95) {
			ProductDTO pr11 = new ProductDTO();
			pr11.setId(11);
			pr11.setName("Loomis Sayles Growth A Fund");
			pr11.setFixedIncomeBonds(10);
			pr11.setExchangeTradedFund(25);
			pr11.setLargeCapStocks(15);
			pr11.setMidCapStocks(25);
			pr11.setSmallAndMicroCapStocks(25);
			productArray.add(pr11);
			ProductDTO pr12 = new ProductDTO();
			pr12.setId(12);
			pr12.setName("PRIMECAP Odyssey Aggressive Growth");
			pr12.setFixedIncomeBonds(10);
			pr12.setExchangeTradedFund(30);
			pr12.setLargeCapStocks(30);
			pr12.setMidCapStocks(10);
			pr12.setSmallAndMicroCapStocks(20);
			productArray.add(pr12);
		} else if (financialRisk <= 100) {
			ProductDTO pr13 = new ProductDTO();
			pr13.setId(13);
			pr13.setName("AJ umam Growth Aggressive Fund");
			pr13.setExchangeTradedFund(25);
			pr13.setLargeCapStocks(15);
			pr13.setMidCapStocks(25);
			pr13.setSmallAndMicroCapStocks(35);
			productArray.add(pr13);
		}

		return productArray;
	}

	public static SuggestionDTO getSavingSuggestionsAndInvestibleAmount(double monthlyIncome, double monthlyExpense,
			double wasteAmount, double savingsPerMonth) {

		SuggestionDTO suggestion = new SuggestionDTO();
		if (savingsPerMonth >= 0.5 * monthlyIncome) {
			suggestion.setComment("Kudos, You are an aggresssive saver. Keep going.");
		} else if (savingsPerMonth >= 0.3 * monthlyIncome) {
			if (wasteAmount >= 0.5 * monthlyExpense) {
				suggestion.setComment("You are saving good amount. But you can still fine tune your spending pattern");
			} else {
				suggestion.setComment("You are saving good amount.");
			}
		} else if (savingsPerMonth >= 0.2 * monthlyIncome) {
			suggestion.setComment("You are saving just enough amount. Try to increase your savings");
		} else if (savingsPerMonth >= 0.1 * monthlyIncome) {
			if (wasteAmount >= 0.3 * monthlyExpense) {
				suggestion.setComment("You are not saving enough. Try to cut down your expenses");
			} else {
				suggestion.setComment("You are not saving enough");
			}
		} else {
			suggestion.setComment("You are not saving enough. Your spending doesn't look good");
		}

		if (savingsPerMonth >= 0.2 * monthlyIncome) {
			suggestion.setInvestibleAmount(savingsPerMonth);
		} else {
			if (wasteAmount >= 0.3 * monthlyIncome)
				suggestion.setInvestibleAmount(savingsPerMonth + wasteAmount / 2);
		}

		return suggestion;
	}

	public static String getRiskCategory(double financialRisk) {
		if (financialRisk <= 20) {
			return "CONSERVATIVE";
		} else if (financialRisk <= 40) {
			return "MODERATELY CONSERVATIVE";
		} else if (financialRisk <= 60) {
			return "MODERATE";
		} else if (financialRisk <= 80) {
			return "MODERATELY AGGRESSIVE";
		} else if (financialRisk <= 100) {
			return "AGGRESSIVE";
		}
		return "";
	}
}
