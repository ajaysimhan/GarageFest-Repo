package transactions;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.io.FileUtils;

import com.google.gson.Gson;

import model.BasicInfoModel;

public class TransactionClassifier {
    
    ArrayList<Integer> usefulCategories = null;
    ArrayList<Integer> nonUsefulCategories = null;
    
    ArrayList<TransactionDTO> transactions = null;
    ArrayList<CategoryDTO> categories = null;

    HashMap<Integer, TransactionDTO> usefultransactions;
    HashMap<Integer, TransactionDTO> nonUsefultransactions;
    
    public TransactionClassifier()
    {
        init(); 
    }
    
    private void init() 
    {
        loadAllTransactions();
        loadAllCategories();
        
        classifyCategories();
        classifyTransactions();
        
        System.out.println("useful" + getUsefulTransactionAmount());
        System.out.println("non useful" + getNonUsefulTransactionAmount());
    }
    
    public void loadAllTransactions() 
    {
        String allTransactions = null;
        try {
            allTransactions = FileUtils
                    .readFileToString(new File(BasicInfoModel.FILE_PATH + "/transactions/transactions.txt")).trim();
        } catch (IOException e) {
            e.printStackTrace();
        }
        transactions = bulidTransactionDTO(allTransactions);
    }
    
    public void loadAllCategories() 
    {
        String allCategories = null;
        try {
            allCategories = FileUtils
                    .readFileToString(new File(BasicInfoModel.FILE_PATH + "/transactions/categories.txt")).trim();
        } catch (IOException e) {
            e.printStackTrace();
        }
        categories = bulidCategoryDTO(allCategories);
    }
    
    public void classifyCategories() 
    {
        usefulCategories = new ArrayList<Integer>();
        nonUsefulCategories = new ArrayList<Integer>();
        for (CategoryDTO c : categories) {
            if (c.getIndicator().equals("U")) {
                usefulCategories.add(c.getCategoryId());
            }
            else if (c.getIndicator().equals("N")) {
                nonUsefulCategories.add(c.getCategoryId());
            }
        }       
    }
    
    public void classifyTransactions() 
    {
        usefultransactions = new HashMap<Integer, TransactionDTO>();
        nonUsefultransactions = new HashMap<Integer, TransactionDTO>();
        for (TransactionDTO t: transactions) {
            for (CategoryDTO c : categories) {
                if(t.getCategoryId() == c.getCategoryId()) {
                    if (c.getIndicator().equals("U")) {
                        usefultransactions.put(c.getCategoryId(), t);
                    }
                    else if (c.getIndicator().equals("N")) {
                        nonUsefultransactions.put(c.getCategoryId(), t);
                    }
                }
            }
        }
    }
    
    private static ArrayList<TransactionDTO> bulidTransactionDTO(String allTransactions)
    {
        Transactions transactions = new Gson().fromJson(allTransactions, Transactions.class);
        return transactions.getTransactions();
    }
    
    private static ArrayList<CategoryDTO> bulidCategoryDTO(String allCategories)
    {
        Categories categories = new Gson().fromJson(allCategories, Categories.class);
        return categories.getCategories();
    }
    
    public double getTotalTransactionAmount(){
        double totalAmount= 0;
        for (TransactionDTO t : transactions) {
            totalAmount += t.getAmount().getAmount();
        }
        return totalAmount;
    }
    
    public double getUsefulTransactionAmount(){
                
        double usefulTransactionAmount= 0;
        for (TransactionDTO t: usefultransactions.values()) {
                usefulTransactionAmount += t.getAmount().getAmount();
        }
        return usefulTransactionAmount;
    }
    
    public double getNonUsefulTransactionAmount(){
        double nonUsefulTransactionAmount= 0;
        for (TransactionDTO t: nonUsefultransactions.values()) {
                nonUsefulTransactionAmount += t.getAmount().getAmount();
        }
        return nonUsefulTransactionAmount;
    }
    
    public HashMap<String, Integer> getTransactionsForChart(){
        HashMap<String, Integer> chartTransactions = new HashMap<String, Integer>();
        int amount;
        for (TransactionDTO t: nonUsefultransactions.values()) {
            for (CategoryDTO c : categories) {
                if(t.getCategoryId() == c.getCategoryId()) {
                    amount = (int) t.getAmount().getAmount();
                    chartTransactions.put(c.getDescription(), amount);
                }
            }
        }
        System.out.println(chartTransactions.toString());
        return chartTransactions;
    }
}
