
<%@page import="com.bookCart.CartBean"%><!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title> Shopping Cart</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body>

<%--<%CartBean cart=(CartBean)session.getAttribute("cart"); --%>
<jsp:useBean id="cart" scope="session" class="com.bookCart.CartBean" />
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<p><font face="Verdana, Arial, Helvetica, sans-serif"><strong>Shopping Cart</strong></font></p>
<a href="checkoutServlet?checkOutMethod=rent" style="color:magenta ;  font-size:25px;  ">BORROW</a>
<a href="checkoutServlet?checkOutMethod=buy"  style="color:magenta ;  font-size:25px;  margin-left:250px;">BUY</a>
<a href="index.jsp" style="color:magenta ;  font-size:25px;  text-decoration:none; margin-left:500px;">Go Back</a>

<table width="75%" border="1">
  <tr bgcolor="#CCCCCC">
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
      BOOK_ID</font></strong></td>
      <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">name</font></strong></td>
      <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Image</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
  
<c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
   
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="servlet/CartController">
  <tr>
  	<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><img src='<c:out value="${cartItem.url}"/>' alt='<c:out value="${cartItem.name}"/>' height="180px" width="150" /></b><br/>
      </font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.partNumber}"/></b><br/>
      </font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.name}"/></b><br/>
      </font></td>
    
      
      
      
      
      
      
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">
 <br/>         <input type="submit" name="action" value="Delete"></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td><br><br></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: $<c:out value="${cart.orderTotal}"/></font></td>
  </tr> 
  
</table>
<a href="index.jsp" style="color:magenta ;  font-size:25px;  text-decoration:none; margin-left:500px;">HOME</a>
</body>
</html>