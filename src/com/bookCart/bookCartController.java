package com.bookCart;
import com.bookRetrieve.bookItem;
import java.util.*;
import javax.servlet.*;
public class bookCartController {
	ArrayList<bookItem> bookList = new ArrayList<bookItem>();
	
	bookItem item;
	public void bookCart(){
		
	}
	public void empty(){
		bookList.clear();
	}
	public ArrayList<bookItem> getCartItems(){
		
		return bookList;
	}
	public void addBook(bookItem anItem){
		for(int i=0;i<bookList.size();i++){
			 item=bookList.get(i);
			
		
		if(anItem.getProduct_id()!=item.getProduct_id()){
			bookList.add(anItem);
		}
		else{
			System.out.println("book already exist");
			
		}
		return ;
		}

	}
	void remove(bookItem anItem){
		for(int i=0;i<bookList.size();i++){
			if(bookList.get(i).getProduct_id()==anItem.getProduct_id()){
				bookList.remove(i);
			}
		}
	}
	
}
