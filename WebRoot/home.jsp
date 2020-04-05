

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <link href="css/main.css" rel="stylesheet" type="text/css">
    	
    <title>My JSP 'home.jsp' starting page</title>
    
	
	
  </head>
  
  <body>
  <div id="body_wrapper">
  <div id="fixednav_wrapper">
  <%@include file="fixedNav.jsp" %>
  
    </div>
    <div class="clear"></div>
    <div id="sidebar_wrapper">
    <%@include file="sidebar.jsp"  %>
    
    </div>
    <div id="nav_wrapper">
    <%@include file="nav.jsp"  %>
    </div>
	<div id="banner_logo"><img src="images/storeImages/logoBanner.jpg" height="400px" width=900px; ></div>    
    <div id="home_product_wrapper">
	<%@include file="showbooks.jsp" %>

    </div>
    
    <div class="clear"></div>
    <div id="foooter_outer">
    <%@include file="footer.jsp" %>
    </div>
   </div>
  </body>
</html>
