package accounts;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;

import model.BasicInfoModel;

public class Account {

	public static AccountDTO getAccount(int accNo) {
		String accountDetails = null;
		try {
			accountDetails = FileUtils
					.readFileToString(new File(BasicInfoModel.FILE_PATH + "/accounts/" + accNo + ".txt")).trim();
		} catch (IOException e) {
			e.printStackTrace();
		}
		ArrayList<AccountDTO> dtos = bulidAccountDTO(accountDetails);
		return dtos.get(0);
	}

	private static ArrayList<AccountDTO> bulidAccountDTO(String accountDetails) {
		ArrayList<AccountDTO> dtos = new ArrayList<>();

		Accounts accounts = new Gson().fromJson(accountDetails, Accounts.class);
		return accounts.getAccounts();
	}

}
