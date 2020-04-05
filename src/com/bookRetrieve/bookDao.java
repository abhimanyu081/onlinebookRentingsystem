package com.bookRetrieve;
import java.sql.*;
import java.util.*;
import com.bookRetrieve.*;
public class bookDao{
	public bookDao(){
		con = DbUtil.getConnection();
	}
	private Connection con;
	 public List<bookItem> getAllbookItems(String category) {//changed argument
		 	
	        List<bookItem> booksList= new ArrayList<bookItem>();
	        System.out.println("working control Dao");
	        try{
	        	String sqlQuery;
	        	System.out.println(category);
	        	if(category.equals("random")){
	        		 sqlQuery="select * from bookDB";
	        	}
	        	else{
	        		sqlQuery="select * from bookDB where category='"+category+"'";
	        	}
	        	Statement st = con.createStatement();
	        	System.out.println(sqlQuery);
	        	//ResultSet rs = st.executeQuery("select * from bookDB where category = "+category);
	        	ResultSet rs = st.executeQuery(sqlQuery);
	        	while(rs.next()){
	        		bookItem book = new bookItem();
	        		book.setProduct_id(rs.getInt(1));
	        		book.setName(rs.getString("name"));
	        		book.setAuthor(rs.getString("author"));
	        		book.setDesc(rs.getString("description"));
	        		book.setPrice(rs.getInt("price"));
	        		book.SetUrl(rs.getString("url"));
	        		booksList.add(book);
	        	}
	    }catch(Exception e){System.out.println(e);}
return booksList;
}

}