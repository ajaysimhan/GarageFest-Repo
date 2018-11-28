package suggestion;

public class SuggestionDTO {
	String comment;
	double investibleAmount;
	double possibleAdditionalSavings;
	public String getComment() {
		return comment;
	}
	public void setComment(String comment) {
		this.comment = comment;
	}
	public double getInvestibleAmount() {
		return investibleAmount;
	}
	public void setInvestibleAmount(double investibleAmount) {
		this.investibleAmount = investibleAmount;
	}
	public double getPossibleAdditionalSavings() {
		return possibleAdditionalSavings;
	}
	public void setPossibleAdditionalSavings(double possibleAdditionalSavings) {
		this.possibleAdditionalSavings = possibleAdditionalSavings;
	}
	
}
