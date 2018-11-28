package dao;

public class LoginDao {

	public boolean validateUser(String username, String password) {
		if (username.equals(password)) {
			return true;
		}
		return false;
	}

}
