package com.bookRetrieve;
public class bookItem{
	int product_id=0;
	String name="";
	int price=0;
	String category="";
	String desc="";
	String url="";
	String author="";

public bookItem(){

}
public void setAuthor(String strAuthor){
	author=strAuthor;
}

public void setProduct_id(int n){
	product_id = n;
}
public void setName(String strName){
	name = strName;
}

public void setPrice(int strPrice){
	price= strPrice;
}
public void setDesc(String strDesc){
	desc=strDesc;
}
public void SetUrl(String strUrl){
	url=strUrl;
}
public void setCategory(String strCat){
	category=strCat;
}
public int getProduct_id(){
	return product_id;
}
public String getName(){
	return name;
}
public int getPrice(){
	return price;
}
public String getCategory(){
	return category;
}
public String getDesc(){
	return desc;
}
public String getUrl(){
	return url;
}
public String getAuthor(){
	return author;
}
@Override
public String toString(){
return product_id+ ""+name+""+price+""+category+""+desc+""+url+""+author;	

}


}
