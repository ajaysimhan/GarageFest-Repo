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
        
        transactionTypes = new HashMap<String, Integer>();
        transactionTypes.put("Medical", 1245);
        transactionTypes.put("Education", 2546);
        transactionTypes.put("Entertainment", 784);
        transactionTypes.put("Travel", 400);
        transactionTypes.put("Food", 9547);
        transactionTypes.put("Shopping", 7445);
        
        
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
    
    public ArrayList<String> getChartStyling(int size){
        ArrayList<String> chartStyles = new ArrayList<String>();
        
        return chartStyles;
    }
}
