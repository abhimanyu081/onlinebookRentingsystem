package com.bookRetrieve;
import java.io.*;
import com.bookRetrieve.*;
import javax.servlet.*;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import com.bookRetrieve.*;
public class bookController extends HttpServlet {
	private bookDao dao =null;
	private Connection con;
	public bookController(){
		super();
		con=DbUtil.getConnection();
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
	
		String category=request.getParameter("action");
		System.out.println("working control");
		System.out.println(category);
		
			dao = new bookDao();
		
			//System.out.println("in try block");
			request.setAttribute("books", dao.getAllbookItems(category));//passed arg
			//RequestDispatcher view = request.getRequestDispatcher("/MyJsp.jsp");
			//System.out.println("in try block 2");
	        //view.forward(request, response);
	
		RequestDispatcher view = getServletContext().getRequestDispatcher("/home.jsp");
		view.forward(request, response);
		
		
	}

}
