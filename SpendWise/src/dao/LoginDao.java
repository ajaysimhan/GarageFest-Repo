package dao;

public class LoginDao {

	public boolean validateUser(String username, String password) {
		if (username.equals("spendwise") && password.equals("spendwise")) {
			return true;
		}
		return false;
	}

}
