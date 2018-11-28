package dao;

public class BasicInfoDTO {
	
	private double age;
	private double annualIncome;
	private double netWorth;
	private double totaldebt;
	private double debtInterestRate;
	
	public double getAge() {
		return age;
	}
	public void setAge(double age) {
		this.age = age;
	}
	public double getAnnualIncome() {
		return annualIncome;
	}
	public void setAnnualIncome(double annualIncome) {
		this.annualIncome = annualIncome;
	}
	public double getNetWorth() {
		return netWorth;
	}
	public void setNetWorth(double netWorth) {
		this.netWorth = netWorth;
	}
	public double getTotaldebt() {
		return totaldebt;
	}
	public void setTotaldebt(double totaldebt) {
		this.totaldebt = totaldebt;
	}
	public double getDebtInterestRate() {
		return debtInterestRate;
	}
	public void setDebtInterestRate(double debtInterestRate) {
		this.debtInterestRate = debtInterestRate;
	}
}
