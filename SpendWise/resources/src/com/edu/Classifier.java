package com.edu;

import java.util.ArrayList;

import categoriesAPI.TransactionCategory;
import transactionAPI.TransactionDTO;

public class Classifier {
	ArrayList<TransactionDTO> waste = new ArrayList<>();
	ArrayList<TransactionDTO> useful = new ArrayList<>();
	double wasteTotal;
	double usefulTotal;
	
	public ArrayList<TransactionDTO> getWaste() {
		return waste;
	}

	public void setWaste(ArrayList<TransactionDTO> waste) {
		this.waste = waste;
	}

	public ArrayList<TransactionDTO> getUseful() {
		return useful;
	}

	public void setUseful(ArrayList<TransactionDTO> useful) {
		this.useful = useful;
	}

	public double getWasteTotal() {
		return wasteTotal;
	}

	public void setWasteTotal(double wasteTotal) {
		this.wasteTotal = wasteTotal;
	}

	public double getUsefulTotal() {
		return usefulTotal;
	}

	public void setUsefulTotal(double usefulTotal) {
		this.usefulTotal = usefulTotal;
	}

	public void load(ArrayList<TransactionDTO> transactionList, TransactionCategory transactionCategory) {
		for(TransactionDTO t : transactionList) {
			if(transactionCategory.getWaste().contains(t.getCategoryId())) {
				waste.add(t);
				wasteTotal += t.getAmount().getAmount();
			} else {
				useful.add(t);
				usefulTotal += t.getAmount().getAmount();
			}
			
		}
		
	}

}
