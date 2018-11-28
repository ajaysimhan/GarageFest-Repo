package transactionAPI;

import java.util.ArrayList;
import java.util.Random;

import transactionAPI.TransactionDTO;

public class TransactionDTOBuilder {
	public static ArrayList<TransactionDTO> getTransactionDTOs(int n, ArrayList<Integer> categoryIds) {
		ArrayList<TransactionDTO> dtos = new ArrayList<>(n);
		Random rand = new Random();
		for(int i = 0; i < n ; i++) {
			TransactionDTO dto = new TransactionDTO();
			int randInt = rand.nextInt(100000);
			float randFloat = rand.nextFloat();
			float amount=randInt + randFloat;
			int arrayIndex = rand.nextInt(categoryIds.size());
			dto.getAmount().setAmount(amount);
			dto.setCategoryId(categoryIds.get(arrayIndex));
			dtos.add(dto);
		}
		return dtos;
	}
}
