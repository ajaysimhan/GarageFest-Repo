package transactionAPI;

import java.util.ArrayList;
import java.util.HashMap;

public class Transaction {
	public static HashMap<Integer, ArrayList<TransactionDTO>> getCategoriesedMap(int accNo) {
		HashMap<Integer, ArrayList<TransactionDTO>> map = new HashMap<>();
		TransactionDetails td = TransactionDetails.getTransactionDetails(accNo);
		ArrayList<TransactionDTO> dtos = td.getDtos();
		for(TransactionDTO d : dtos) {
			if(!map.containsKey(d.categoryId)) {
				map.put(d.categoryId, new ArrayList<TransactionDTO>());
			}
			map.get(d.categoryId).add(d);
		}
		return map;
	}
}
