package transactions;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;

import model.BasicInfoModel;

public class TransactionClassifier {

	ArrayList<Integer> usefulCategories = null;
	ArrayList<Integer> nonUsefulCategories = null;
	ArrayList<TransactionDTO> transactions = null;

	public TransactionClassifier() {
		init();
	}

	private void init() {
		loadAllTransactions();
		loadUsefulCategories();
		loadNonUsefulCategories();
	}

	public void loadAllTransactions() {
		String allTransactions = null;
		try {
			allTransactions = FileUtils
					.readFileToString(new File(BasicInfoModel.FILE_PATH + "/transactions/transactions.txt")).trim();
		} catch (IOException e) {
			e.printStackTrace();
		}
		transactions = bulidTransactionDTO(allTransactions);
	}

	public void loadUsefulCategories() {
		usefulCategories = new ArrayList<Integer>();
		usefulCategories.add(17);
		usefulCategories.add(45);
	}

	public void loadNonUsefulCategories() {
		nonUsefulCategories = new ArrayList<Integer>();
		nonUsefulCategories.add(32);
	}

	private static ArrayList<TransactionDTO> bulidTransactionDTO(String allTransactions) {
		ArrayList<TransactionDTO> dtos = new ArrayList<>();
		Transactions transactions = new Gson().fromJson(allTransactions, Transactions.class);
		return transactions.getTransactions();
	}

	public double getTotalTransactionAmount() {
		double totalAmount = 0;
		for (TransactionDTO t : transactions) {
			totalAmount += t.getAmount().getAmount();
		}
		return totalAmount;
	}

	public double getUsefulTransactionAmount() {
		double usefulTransactionAmount = 0;
		for (TransactionDTO t : transactions) {
			if (usefulCategories.contains(t.getCategoryId())) {
				usefulTransactionAmount += t.getAmount().getAmount();
			}
		}
		return usefulTransactionAmount;
	}

	public double getNonUsefulTransactionAmount() {
		double nonUsefulTransactionAmount = 0;
		for (TransactionDTO t : transactions) {
			if (nonUsefulCategories.contains(t.getCategoryId())) {
				nonUsefulTransactionAmount += t.getAmount().getAmount();
			}
		}
		return nonUsefulTransactionAmount;
	}
}
