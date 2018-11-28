package model;
import dao.SaveKittyDao;

public class SaveKittyModel {

	public boolean getKittyMood() {
		SaveKittyDao sd = new SaveKittyDao();
		return sd.isHappyKitty(101);
	}

}
