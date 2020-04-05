<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<head>
<link href="css/fixedNav.css" rel="stylesheet" type="text/css" />

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>

<div id="fixedMenu">
	<div id="logo"><img src="images/storeImages/LOGONEW.png" alt="book store logo" height=					    	 "60" width="191" />
    </div>
	<div id="searchFormOuter">
    	<form class="formWrapper">
        	<input id="search" type="text" placeholder="search books...." required="required" />
            <input id="submit" type="submit" value="search" />
        </form>
    </div>
    <div id="navBarRight">
    	<a href="">
        	<div class="navBtns" id="home">
            <i class="icon-support"><img src="images/storeImages/appbar.home.png" alt="home" height="30px" width=	 		"40"></i>
            <label class="support-lan" />Home</label>
         </div>

        </a>
		<a href="#"><div class="navBtns" id="showCart">
        <i class="icon-support"><img src="images/storeImages/appbar.cart_2.png" alt="cart" width="40px" height="30px" /></i>
        <label class="support-lan">Show Cart</label>
        </div>
        </a>
        <a href="contactus.jsp"><div id="contactus" class="navBtns">
        <i class="icon-support"><img src="images/storeImages/appbar.message.smiley_2.png" width="40" height="30"></i>
		<label class="support-lang">Contact us</label>
        </div>
        </a>
        <!-- TO SHOW USER NAME OF CURRENT LOGGED USER  -->
        <%if(session.getAttribute("user")!=null){
        %>
        
        <a href="logout.jsp"><div id="my_account" class="navBtns">
		<i class="icon-support" id="user"><img src="images/storeImages/appbar.user.tie_2.png" width="40" height="30"></i>		
        <label class="support-lang"> Hi ! <c:out value="${user }" /></label>
        
        </div>
        </a> 
        <a href="logout.jsp"><div id="account_outer">
	<%--drop down starts here --%>
			<div id="drop">
				<a href="#" ><div id="login" class="navBtns">
		
        <label class="support-lang">See Account</label>
        </div>
        </a>
        <a href="contactus.jsp"><div id="contactus" class="navBtns">
        
		<label class="support-lang">Edit Profile</label>
        </div>
        </a>
        <a href="logout.jsp"><div id="my_account" class="navBtns">
        
		<label class="support-lang">Logout</label>
        </div>
        </a>
		</div>
	<%--drop down starts here --%>		
        <label class="support-lang" class="navBtns">Account</label>
        <i class="icon-support"><img src="images/storeImages/appbar.list.check.png" width="40" height="30"></i>
        
        </div>
        </a> 
        
        <%	
        }else{
        %>
        <a href="#" onclick="lightbox_open();"><div id="login" class="navBtns">
		<i class="icon-support"><img src="images/storeImages/appbar.key.png" alt="login" width="40" height="30"></i>
        <label class="support-lang">Login</label>
        </div>
        </a> 
        <%
        }
         %>
        
        
    </div>
    
</div>


<div id="light">
		<div  id="login_lightbox">
		<form method="post" action='UserController' name="loginfrm">
        <h1>Can I See Some ID?</h1>
	    	
           <label> Username:</label><br><input class="formInput" type="text" name="uname" placeholder="enter username" id="uname" />
            <label>Password:</label><br><input class="formInput"  type="password" name="password" id="password" placeholder="enter password" />
			<input type="checkbox" id="frmchk"><label>Remember Me</label><br>
            <input type="submit" value="LOGIN" class="frmBtn" />
            <input type="button" value="Register" class="frmBtn" />
            <div class="clear"></div>
		</form>
		<div id="forgot"><a href="">	Forget Password?</a></div>
        </div>
</div>
<div id="fade" onClick="lightbox_close();"></div> 
<script>
	 // JavaScript Document
window.document.onkeydown = function (e)
{
    if (!e){
        e = event;
    }
    if (e.keyCode == 27){
        lightbox_close();
    }
}
function lightbox_open(){
    window.scrollTo(0,0);
    document.getElementById('light').style.display='block';
    document.getElementById('fade').style.display='block';  
}

function lightbox_close(){
    document.getElementById('light').style.display='none';
    document.getElementById('fade').style.display='none';
}
</script>

