<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>

    
    <title>My JSP 'Registration.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
	  
  <body>
<br>

    <%  try{
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("pass1");
		String uname = request.getParameter("uname");
		String mobile = request.getParameter("mobile");
		
		String address = request.getParameter("address");
		String college = request.getParameter("college");
		int flag=1;
		
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "system", "oracle");
		
		PreparedStatement ps=con.prepareStatement("insert into login_users values(?,?,?,?,?,?,?)");
		
		/*ResultSet rs=ps.executeQuery("select * from login_users");
		while(rs.next()){
			if(email.equals(rs.getString("email"))){
			out.println("email already reistered.....please provide another email");
			flag=0;
			break;
			}
			if(uname.equals(rs.getString("uname"))){
			out.println("username already exists.....please choose another");
			flag=0;
			break;
			}
			if(mobile.equals(rs.getString("mobile"))){
			out.println("username already Registered.....please choose another");
			flag=0;
			break;
			}
			
		}
		if(flag==1){*/
		ps.setString(1,name);
		ps.setString(2,email);
		ps.setString(3,password);
		ps.setString(4,uname);
		ps.setString(5,mobile);
		ps.setString(6,address);
		ps.setString(7,college);
		int x = ps.executeUpdate();
		if(x!=0)
		out.println("<span style='color:red'>congrats u have been registered</span>");
		
		
	 }catch(Exception e){out.println(e);}
	 %>
	
  </body>
</html>
