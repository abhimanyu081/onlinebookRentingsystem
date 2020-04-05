package com.bookCart;
public class CartItemBean {
	private String author;
	private String url;
	private String name;
    private String strPartNumber;
    private String strModelDescription;
    private double dblUnitCost;
    private int iQuantity;
    private double dblTotalCost;
    public void setAuthor(String author){
    	this.author=author;
    }
    public String getAuthor(){
    	return author;
    }
    public String getUrl(){
    	return url;
    }
    public void setUrl(String url){
    	this.url=url;
    }
    public String getName(){
    	return name;
    }
    public void setName(String name){
    	this.name=name;
    }
    public String getPartNumber() {
        return strPartNumber;
    }
    public void setPartNumber(String strPartNumber) {
        this.strPartNumber = strPartNumber;
    }
    public String getModelDescription() {
        return strModelDescription;
    }
    public void setModelDescription(String strModelDescription) {
        this.strModelDescription = strModelDescription;
    }
    public double getUnitCost() {
        return dblUnitCost;
    }
    public void setUnitCost(double dblUnitCost) {
        this.dblUnitCost = dblUnitCost;
    }
    public int getQuantity() {
        return iQuantity;
    }
    public void setQuantity(int quantity) {
        iQuantity = quantity;
    }
    public double getTotalCost() {
        return dblTotalCost;
    }
    public void setTotalCost(double dblTotalCost) {
        this.dblTotalCost = dblTotalCost;
    }
}


