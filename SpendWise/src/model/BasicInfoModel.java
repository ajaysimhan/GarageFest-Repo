package model;

import java.io.File;
import java.io.FileOutputStream;
import java.io.OutputStream;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;

import dao.BasicInfoDTO;

public class BasicInfoModel {
	
	public static final String FILE_PATH = BasicInfoModel.class.getProtectionDomain().getCodeSource().getLocation().getFile() ;
	
	private BasicInfoDTO basicInfoDTO = null;
	
	public BasicInfoModel(HttpServletRequest request) throws Exception {
		
		basicInfoDTO = new BasicInfoDTO();
		basicInfoDTO.setAge(Double.valueOf(request.getParameter("age")));
		basicInfoDTO.setAnnualIncome(Double.valueOf(request.getParameter("annualIncome")));
		basicInfoDTO.setNetWorth(Double.valueOf(request.getParameter("netWorth")));
		basicInfoDTO.setTotaldebt(Double.valueOf(request.getParameter("totaldebt")));
		basicInfoDTO.setDebtInterestRate(Double.valueOf(request.getParameter("debtInterestRate")));
	}
	
	public void saveBasicInfo() throws Exception {
		
		String basicInfoJson = new Gson().toJson(basicInfoDTO);
		File file = new File(FILE_PATH + "/resources/transactions123.txt");
		FileUtils.writeStringToFile(file, basicInfoJson);  
	}
	
	public BasicInfoDTO getBasicInfo() throws Exception {
		
		String basicInfoJson = FileUtils.readFileToString(new File(FILE_PATH));
		BasicInfoDTO basicInfoDAO = (BasicInfoDTO) new Gson().fromJson(basicInfoJson, BasicInfoDTO.class);
		return basicInfoDAO;
	}
}
