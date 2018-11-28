package model;

import dao.LoginDao;

public class LoginModel {

	public boolean validateUser(String username, String password) {
		LoginDao ld = new LoginDao();
		return ld.validateUser(username, password);
	}

}
