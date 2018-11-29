package products;

public class ProductDTO {
	String name;
	int id;
	int fixedIncomeBonds;
	int exchangeTradedFund;
	int largeCapStocks;
	int midCapStocks;
	int smallAndMicroCapStocks;
	
	
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getFixedIncomeBonds() {
		return fixedIncomeBonds;
	}
	public void setFixedIncomeBonds(int fixedIncomeBonds) {
		this.fixedIncomeBonds = fixedIncomeBonds;
	}
	public int getExchangeTradedFund() {
		return exchangeTradedFund;
	}
	public void setExchangeTradedFund(int exchangeTradedFund) {
		this.exchangeTradedFund = exchangeTradedFund;
	}
	public int getLargeCapStocks() {
		return largeCapStocks;
	}
	public void setLargeCapStocks(int largeCapStocks) {
		this.largeCapStocks = largeCapStocks;
	}
	public int getMidCapStocks() {
		return midCapStocks;
	}
	public void setMidCapStocks(int midCapStocks) {
		this.midCapStocks = midCapStocks;
	}
	public int getSmallAndMicroCapStocks() {
		return smallAndMicroCapStocks;
	}
	public void setSmallAndMicroCapStocks(int smallAndMicroCapStocks) {
		this.smallAndMicroCapStocks = smallAndMicroCapStocks;
	}
	
}
