package com.bookRetrieve;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class searchBooks extends HttpServlet {
	
	public searchBooks(){
		conn=DbUtil.getConnection();
	}
	private Connection conn;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		String query = (String)request.getParameter("search");
		
		List<bookItem> booksList1= new ArrayList<bookItem>();
	        
	        if(!(query.equals(null)||query.equals(""))){
	        	try{
	        	Statement st = conn.createStatement();
	        	ResultSet rs = st.executeQuery("select * from BookDB");
	        	while(rs.next()){
	        		if(rs.getString(2).equalsIgnoreCase(query)||rs.getString(3).equalsIgnoreCase(query)||rs.getString(4).equalsIgnoreCase(query)||rs.getString(6).equalsIgnoreCase(query)){
	        			bookItem book = new bookItem();
	        			
		        		book.setProduct_id(rs.getInt(1));
		        		book.setName(rs.getString("name"));
		        		book.setAuthor(rs.getString("author"));
		        		book.setDesc(rs.getString("description"));
		        		book.setPrice(rs.getInt("price"));
		        		book.SetUrl(rs.getString("url"));
		        		booksList1.add(book);
	        		}
	        		else{
	        			System.out.println("no results found");
	        		}
	        	}
	        	
	        
	        request.setAttribute("bookSearchList", booksList1);
	        RequestDispatcher view1 = getServletContext().getRequestDispatcher("/search.jsp");
			view1.forward(request, response);
	        }catch(Exception e){}
}
	}
}