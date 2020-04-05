package com.bookCart;

import java.sql.Date;

public class AccBookBean {
	private String author;
	
	private String name;
    private String strPartNumber;
    
    //private double dblUnitCost;
    private double unitCost;
    private int quantity;
    private double totalCost;
    private Date issue_date;
    private Date return_date=null;
    public void setIssue_date(Date issue_date){
    	this.issue_date=issue_date;
    }
    public Date getIssue_date(){
    	return issue_date;
    }
    public void setReturn_date(Date return_date){
    	this.return_date=return_date;
    }
    public Date getReturn_date(){
    	return return_date;
    }
    public void setAuthor(String author){
    	this.author=author;
    }
    public String getAuthor(){
    	return author;
    }
    
    public String getName(){
    	return name;
    }
    public void setName(String name){
    	this.name=name;
    }
    public String getStrPartNumber() {
        return strPartNumber;
    }
    public void setStrPartNumber(String strPartNumber) {
        this.strPartNumber = strPartNumber;
    }
    
    public double getUnitCost() {
        return unitCost;
    }
    public void setUnitCost(double dblUnitCost) {
        this.unitCost = dblUnitCost;
    }
    public int getQuantity() {
        return quantity;
    }
    public void setQuantity(int quantity) {
        this.quantity= quantity;
    }
    public double getTotalCost() {
        return totalCost;
    }
    public void setTotalCost(double totalCost) {
        this.totalCost = totalCost;
    }
}


