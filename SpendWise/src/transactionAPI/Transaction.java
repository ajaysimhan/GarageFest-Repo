package transactionAPI;

import java.io.FileInputStream;
import java.util.ArrayList;
import java.util.HashMap;

import categoriesAPI.TransactionCategory;
import categoriesAPI.TransactionType;
import model.BasicInfoModel;

public class Transaction {
	public static HashMap<Integer, ArrayList<TransactionDTO>> getCategories(int accNo) {
		HashMap<Integer, ArrayList<TransactionDTO>> map = new HashMap<>();
		TransactionDetails td = TransactionDetails.getTransactionDetails(accNo);
		ArrayList<TransactionDTO> dtos = td.getDtos();
		for (TransactionDTO d : dtos) {
			if (!map.containsKey(d.categoryId)) {
				map.put(d.categoryId, new ArrayList<TransactionDTO>());
			}
			map.get(d.categoryId).add(d);
		}
		return map;
	}

	public static HashMap<String, Double> getBennysData(int accNo) {
		HashMap<String, Double> map = new HashMap<>();
		TransactionDetails td = TransactionDetails.getTransactionDetails(accNo);
		ArrayList<TransactionDTO> dtos = td.getDtos();

		FileInputStream fStream = new FileInputStream(BasicInfoModel.FILE_PATH + "/Categories.xlsx");
		TransactionCategory transactionCategory = new TransactionCategory();
		ArrayList<TransactionType> transactionTypes = transactionCategory.getData(fStream);

		for (TransactionDTO d : dtos) {
			if (!map.containsKey(d.categoryId)) {
				map.put(d.categoryId, new ArrayList<TransactionDTO>());
			}
			map.get(d.categoryId).add(d);
		}
		return map;
	}
}
