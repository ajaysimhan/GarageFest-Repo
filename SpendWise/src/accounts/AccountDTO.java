package accounts;

import java.util.ArrayList;

public class AccountDTO {
	String CONTAINER;
	String providerAccountId;
	String accountName;
	String accountStatus;
	String accountNumber;
	String aggregationSource;
	String isAsset;
	Amount balance;
	String id;
	String lastUpdated;
	String userClassification;
	String includeInNetWorth;
	String providerId;
	String providerName;
	String isManual;
	Amount availableBalance;
	Amount currentBalance;
	String accountType;
	String displayedName;
	String createdDate;
	ArrayList<Owner> holder;

	public Amount getAvailableBalance() {
		return availableBalance;
	}

	public String getCONTAINER() {
		return CONTAINER;
	}

	public void setCONTAINER(String cONTAINER) {
		CONTAINER = cONTAINER;
	}

	public String getProviderAccountId() {
		return providerAccountId;
	}

	public void setProviderAccountId(String providerAccountId) {
		this.providerAccountId = providerAccountId;
	}

	public String getAccountName() {
		return accountName;
	}

	public void setAccountName(String accountName) {
		this.accountName = accountName;
	}

	public String getAccountStatus() {
		return accountStatus;
	}

	public void setAccountStatus(String accountStatus) {
		this.accountStatus = accountStatus;
	}

	public String getAccountNumber() {
		return accountNumber;
	}

	public void setAccountNumber(String accountNumber) {
		this.accountNumber = accountNumber;
	}

	public String getAggregationSource() {
		return aggregationSource;
	}

	public void setAggregationSource(String aggregationSource) {
		this.aggregationSource = aggregationSource;
	}

	public String getIsAsset() {
		return isAsset;
	}

	public void setIsAsset(String isAsset) {
		this.isAsset = isAsset;
	}

	public Amount getBalance() {
		return balance;
	}

	public void setBalance(Amount balance) {
		this.balance = balance;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getLastUpdated() {
		return lastUpdated;
	}

	public void setLastUpdated(String lastUpdated) {
		this.lastUpdated = lastUpdated;
	}

	public String getUserClassification() {
		return userClassification;
	}

	public void setUserClassification(String userClassification) {
		this.userClassification = userClassification;
	}

	public String getIncludeInNetWorth() {
		return includeInNetWorth;
	}

	public void setIncludeInNetWorth(String includeInNetWorth) {
		this.includeInNetWorth = includeInNetWorth;
	}

	public String getProviderId() {
		return providerId;
	}

	public void setProviderId(String providerId) {
		this.providerId = providerId;
	}

	public String getProviderName() {
		return providerName;
	}

	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	public String getIsManual() {
		return isManual;
	}

	public void setIsManual(String isManual) {
		this.isManual = isManual;
	}

	public Amount getCurrentBalance() {
		return currentBalance;
	}

	public void setCurrentBalance(Amount currentBalance) {
		this.currentBalance = currentBalance;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getDisplayedName() {
		return displayedName;
	}

	public void setDisplayedName(String displayedName) {
		this.displayedName = displayedName;
	}

	public String getCreatedDate() {
		return createdDate;
	}

	public void setCreatedDate(String createdDate) {
		this.createdDate = createdDate;
	}

	public ArrayList<Owner> getHolder() {
		return holder;
	}

	public void setHolder(ArrayList<Owner> holder) {
		this.holder = holder;
	}

	public void setAvailableBalance(Amount availableBalance) {
		this.availableBalance = availableBalance;
	}

	@Override
	public String toString() {
		return "AccountDTO [CONTAINER=" + CONTAINER + ", providerAccountId=" + providerAccountId + ", accountName="
				+ accountName + ", accountStatus=" + accountStatus + ", accountNumber=" + accountNumber
				+ ", aggregationSource=" + aggregationSource + ", isAsset=" + isAsset + ", balance=" + balance + ", id="
				+ id + ", lastUpdated=" + lastUpdated + ", userClassification=" + userClassification
				+ ", includeInNetWorth=" + includeInNetWorth + ", providerId=" + providerId + ", providerName="
				+ providerName + ", isManual=" + isManual + ", availableBalance=" + availableBalance
				+ ", currentBalance=" + currentBalance + ", accountType=" + accountType + ", displayedName="
				+ displayedName + ", createdDate=" + createdDate + ", holder=" + holder + "]";
	}

	public static class Amount {
		double amount;
		String currency;

		public double getAmount() {
			return amount;
		}

		public void setAmount(double amount) {
			this.amount = amount;
		}

		public String getCurrency() {
			return currency;
		}

		public void setCurrency(String currency) {
			this.currency = currency;
		}

		@Override
		public String toString() {
			return "Amount [amount=" + amount + ", currency=" + currency + "]";
		}
	}

	public static class Owner {
		String ownership;
		ArrayList<Address> address;

		public ArrayList<Address> getAddress() {
			return address;
		}

		public void setAddress(ArrayList<Address> address) {
			this.address = address;
		}

		public String getOwnership() {
			return ownership;
		}

		@Override
		public String toString() {
			return "Owner [ownership=" + ownership + ", address=" + address + "]";
		}

		public static class Address {
			String address1;
			String city;
			String state;
			long zip;
			String type;

			public String getAddress1() {
				return address1;
			}

			public void setAddress1(String address1) {
				this.address1 = address1;
			}

			public String getCity() {
				return city;
			}

			public void setCity(String city) {
				this.city = city;
			}

			public String getState() {
				return state;
			}

			public void setState(String state) {
				this.state = state;
			}

			public long getZip() {
				return zip;
			}

			public void setZip(long zip) {
				this.zip = zip;
			}

			public String getType() {
				return type;
			}

			public void setType(String type) {
				this.type = type;
			}

			@Override
			public String toString() {
				return "Address [address1=" + address1 + ", city=" + city + ", state=" + state + ", zip=" + zip
						+ ", type=" + type + "]";
			}
		}
	}
}
