package accounts;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParser;

public class Account {

	public static AccountDTO getAccount(int accNo) {
		String accountDetails = null;
		try {
			accountDetails = FileUtils.readFileToString(new File("resources/accounts/" + accNo + ".txt")).trim();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ArrayList<AccountDTO> dtos = bulidAccountDTO(accountDetails);
		return dtos.get(0);
	}
	
	private static ArrayList<AccountDTO> bulidAccountDTO(String accountDetails) {
		ArrayList<AccountDTO> dtos = new ArrayList<>();
		JsonParser parser = new JsonParser();
		JsonElement element = parser.parse(accountDetails);
		JsonObject json = (JsonObject) element;
		JsonArray jsonArray = json.getAsJsonArray("account");
		for(JsonElement j : jsonArray) {
			AccountDTO accountDTO = new Gson().fromJson(j.toString(), AccountDTO.class);
        	dtos.add(accountDTO);
        }
		return dtos;
	}

}
