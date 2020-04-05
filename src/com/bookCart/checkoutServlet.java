package com.bookCart;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.*;
import java.io.*;

import javax.mail.Session;
import javax.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.*;
import com.User.*;
import com.bookRetrieve.DbUtil;
public class checkoutServlet extends HttpServlet {
	private Connection conn;
	PrintWriter out;
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		try{
		HttpSession session = request.getSession();
		System.out.println("start");
		String username =(String) session.getAttribute("username");
		System.out.println("end");
		System.out.println(username);
		String method= request.getParameter("checkOutMethod");
			if(method.equals("rent")){
				//if(username.equals(null)||username.equals("")||(username==null)){
				if(username==null){
					RequestDispatcher view = getServletContext().getRequestDispatcher("/loginfailed.jsp");
					view.forward(request, response);
			
				}
			else{
				Date currentDatetime = new Date(System.currentTimeMillis());  
				java.sql.Date sqlDate = new java.sql.Date(currentDatetime.getTime());
				conn=DbUtil.getConnection();
				PreparedStatement ps = conn.prepareStatement("insert into rentingtable values(?,?,?,?,?,?,?,?)"); 
			
				CartBean cartObj = (CartBean)session.getAttribute("cart");
				//	String username = (String)session.getAttribute("username");
				System.out.println(username);
				ArrayList<CartItemBean> rentCart = cartObj.getCartItems();
		
				for(int i=0;i<rentCart.size();i++){
					ps.setString(1, rentCart.get(i).getPartNumber());
					ps.setString(2, rentCart.get(i).getName());
					ps.setDouble(3, rentCart.get(i).getUnitCost());
					ps.setString(4, rentCart.get(i).getAuthor());
					ps.setInt(5,rentCart.get(i).getQuantity());
					ps.setString(6,username);
					ps.setDate(7, sqlDate);
					ps.setDate(8, null);
					ps.addBatch();
			
					rentCart.get(i).getName();
					rentCart.get(i).getPartNumber();
					//System.out.println(rentCart.get(i).getPartNumber());
					//System.out.println(rentCart.get(i).getUrl());
					//System.out.println("***************8");
		
					ps.executeBatch();
					//ps.close();
					//conn.close();
					session.removeAttribute("cart");
					RequestDispatcher view = getServletContext().getRequestDispatcher("/rentbooks.jsp");
					view.forward(request, response);
				}
				}//end of for loop
		} //end of if
				if(method.equals("buy")){
					RequestDispatcher view = getServletContext().getRequestDispatcher("/buybooks.jsp");
					view.forward(request, response);
				}
		}catch(Exception e){System.out.println(e);}
		
		}
	}
