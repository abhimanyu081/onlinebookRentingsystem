package com.bookCart;
import java.sql.*;
//import com.User.*;
import com.bookRetrieve.DbUtil;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.*;
import javax.sql.*;
public class showAccountServlet extends HttpServlet {
	private Connection conn;
	ArrayList<AccBookBean> rentBookList = new ArrayList<AccBookBean>();
	public void doGet(HttpServletRequest request, HttpServletResponse response){
		HttpSession session=request.getSession();
		String username=(String)session.getAttribute("username");
		conn=DbUtil.getConnection();
		try {
			Statement st = conn.createStatement();
			ResultSet resultset = 
                st.executeQuery("select * from rentingtable where borrower = '" + username + "'") ;
			while(resultset.next()){
				AccBookBean accBookObj = new AccBookBean();
				accBookObj.setStrPartNumber(resultset.getString(1));
				accBookObj.setName(resultset.getString(2));
				accBookObj.setUnitCost(resultset.getDouble(3));
				accBookObj.setAuthor(resultset.getString(4));
				accBookObj.setQuantity(resultset.getInt(5));
				
				java.sql.Date sqlDate = resultset.getDate(7);//get sql date from oracle
				    
			      
			        //converting java.sql.Date to java.util.Date back
			    java.util.Date utilDate = new java.util.Date(sqlDate.getTime());
			    //System.out.println("start");
			    //System.out.println("Converted value of java.util.Date : " + utilDate);
			    //System.out.println("start");
				accBookObj.setIssue_date(sqlDate);
				
				rentBookList.add(accBookObj);
				
				
			}
			
			request.setAttribute("accBookList", rentBookList);
			RequestDispatcher rd=getServletContext().getRequestDispatcher("/showAccount.jsp");
			rd.forward(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
}
}

