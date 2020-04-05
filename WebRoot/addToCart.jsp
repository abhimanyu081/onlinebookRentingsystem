<jsp:useBean id="cart" class="com.bookCart.bookCartController" scope="session" />
<jsp:useBean id="item" class="com.bookRetrieve.bookItem" scope="session" />
<jsp:setProperty name="item" property="*" />

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping Cart</title>
    </head>
    <body>
    	<%
    //
    // set the session's inactive interval
    //
     session.setMaxInactiveInterval(1800); // 30 minutes  
            
    //
    // now add the item to the cart
    //
    
    synchronized(session)  // lock the session
    { 
       cart.addBook(item);
      
        // cart uses ArrayList which is not thread safe so  locked
        
       //cart.display(out); // tell the cart to send its contents to the browser
       
     }
    %> 
    <jsp:forward page="cartDisplay.jsp" /> 
    </body>
</html>