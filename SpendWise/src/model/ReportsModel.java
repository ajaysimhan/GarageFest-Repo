package model;

import java.util.ArrayList;
import java.util.HashMap;

public class ReportsModel
{

    public ArrayList<String> categories = new ArrayList<String>();
    public ArrayList<Integer> expenses = new ArrayList<Integer>();
    
    public ReportsModel() {
        
    }
    
    public void buildWasteTransactionList(HashMap<String, Integer> transactionTypes) {
        
        for(HashMap.Entry<String, Integer> entry : transactionTypes.entrySet()) {
            categories.add(entry.getKey());
            expenses.add(entry.getValue());
        }
    }
    
    public ArrayList<String> getCategories(){

        return categories;
    }
    public ArrayList<Integer> getExpenses(){

        return expenses;
    }
}
