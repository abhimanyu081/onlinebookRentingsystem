package com.User;



import java.io.IOException;
import java.io.*;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.http.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bookRetrieve.*;
import com.User.*;
public class UserController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private static String login_success;
    private static String login_error;
    private UserDao dao;

    public UserController() {
        super();
        dao = new UserDao();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String forward="";
        /*
        String action = request.getParameter("action");
        if (action.equalsIgnoreCase("delete")){
            int userId = Integer.parseInt(request.getParameter("userId"));
            dao.deleteUser(userId);
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());    
        } else if (action.equalsIgnoreCase("edit")){
            forward = INSERT_OR_EDIT;
            int userId = Integer.parseInt(request.getParameter("userId"));
            User user = dao.getUserById(userId);
            request.setAttribute("user", user);
        } else if (action.equalsIgnoreCase("listUser")){
            forward = LIST_USER;
            request.setAttribute("users", dao.getAllUsers());
        } else {
            forward = INSERT_OR_EDIT;
        }

        RequestDispatcher view = request.getRequestDispatcher(forward);
        view.forward(request, response);
        */
        
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)  {
    	try{
    	int status=0;
    	String action = request.getParameter("action");
    	if(action.equals("login")){
        String username=request.getParameter("uname");
        String password=request.getParameter("password");
        System.out.println(username);
        System.out.println(password);
        User user1=dao.getUserById(username);
        String name=user1.getName();
        if((user1.getUname().equals(username))&&(user1.getPassword().equals(password))){
        	HttpSession session=request.getSession();
        	session.setAttribute("user", name);
        	session.setAttribute("username", username);//added this line
        	//session.setMaxInactiveInterval(30*60);
        	
        	//Cookie userName= new Cookie("user",username);
        	//userName.setMaxAge(30*60);
        	//response.addCookie(userName);
        	response.sendRedirect("index.jsp");
        }
        else{
        	
        RequestDispatcher rd=getServletContext().getRequestDispatcher("/index.jsp");
        PrintWriter out=response.getWriter();
        //out.println("<h2>either userName or password is wrong</h2>");
        rd.include(request, response);
        }
        	//HttpSession session = request.getSession();
        	 
        	//session.setAttribute("currentUser", user1);
           
           
           
        
        	
        	
       
        	
        	
        	
        	
        System.out.println("working fine if bloxk");
        /*user.setFirstName(request.getParameter("firstName"));
        user.setLastName(request.getParameter("lastName"));
        try {
            Date dob = new SimpleDateFormat("MM/dd/yyyy").parse(request.getParameter("dob"));
            user.setDob(dob);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        user.setEmail(request.getParameter("email"));
        String userid = request.getParameter("userid");
        if(userid == null || userid.isEmpty())
        {
            dao.addUser(user);
        }
        else
        {
            user.setUserid(Integer.parseInt(userid));
            dao.updateUser(user);
}        }*/
    	}
    	if(action.equals("register")){
    		
    		User newUser = new User();
    		String uname = request.getParameter("uname");
    		String name = request.getParameter("name");
    		String email = request.getParameter("email");
    		String password = request.getParameter("pass1");
    		String mobile = request.getParameter("mobile");
    		String college = request.getParameter("college");
    		String address = request.getParameter("address");
    		System.out.println("hello");
    		newUser.setUname(uname);
    		newUser.setName(name);
    		newUser.setEmail(email);
    		newUser.setPassword(password);
    		newUser.setMobile(mobile);
    		newUser.setCollege(college);
    		newUser.setAddress(address);
    		dao.Register(newUser);
    		System.out.println("hello");
    		System.out.println(uname);
    		
    		response.sendRedirect("registrationSuccess.jsp");
    		
    	}
}catch(Exception e){System.out.println(e);}
    	}   

}