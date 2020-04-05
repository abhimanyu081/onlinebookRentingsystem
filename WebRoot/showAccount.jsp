<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ page import="java.sql.*" %>
<%@ page import="com.bookCart.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>show user account</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
  </head>
  
  <body> 
   <br><br>
     </body>
     <%--
     <c:forEach items="${accBookList}" var="accBook" >
     	<c:out value="${accBook.name}" />
     	<c:out value="${accBook.author}" />
     	<c:out value="${accBook.strPartNumber}" />
     	<c:out value="${accBook.issue_date}" />
     	<c:out value="${accBook.unitCost}" />
     	<c:out value="${accBook.quantity}" />
     	<br/>
     </c:forEach>
     --%>
     <h2>books in ur account</h2>
     <table width="75%" border="1">
  <tr bgcolor="#CCCCCC">
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">
      BOOK_ID</font></strong></td>
      <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">name</font></strong></td>
      <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Author</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Book
      Price</font></strong></td>
     <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Issue_date</font></strong></td>
     <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">return_date</font></strong></td>
     <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">return book</font></strong></td>
    <td><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></td>
  </tr>
  
<c:if test="${cart.lineItemCount==0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- No books in ur account -<br/>
  </tr>
  </c:if>
   
  <c:forEach items="${accBookList}" var="accBook" >
  <form name="item" method="POST" action="servlet/CartController">
  <tr>
  	<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${accBook.strPartNumber}"/><c:out value="${cartItem.name}"/></b><br/>
      </font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${accBook.name}"/></b><br/>
      </font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${accBook.author}"/></b><br/>
      </font></td>
    
      
      
      
      
      
      
    
 	<td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><c:out value="${accBook.quantity}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${accBook.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><c:out value="${accBook.issue_date}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><c:out value="${accBook.return_date}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type="submit" name="action" value="Return">
    
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${accBook.totalCost}"/></font></td>
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td><br><br></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: $</font></td>
  </tr> 
  
</table>
</html>
