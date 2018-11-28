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
		@Override
		public String toString() {
			return "Amount [amount=" + amount + ", currency=" + currency + "]";
		}
	}
	
	public static class Owner {
		String ownership;
		ArrayList<Address> address;

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
			@Override
			public String toString() {
				return "Address [address1=" + address1 + ", city=" + city + ", state=" + state + ", zip=" + zip
						+ ", type=" + type + "]";
			}
		}
	}
}
