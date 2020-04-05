<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>



<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
    
    
    <title>My JSP 'showbooks.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bookSection.css" rel="stylesheet" type="text/css" />



  </head>
  
  
    
    
    <div class="bookSectionOuter">
    <div class="book_heading">Random</div>
    <c:forEach items="${books}" var="book" >
    	
    	<div  class="bookWrapper">
    	
    	<div class="bookImages"><a href=""><img src='<c:out value="${book.url}" />' alt="book" height=200px width="150px"/></a></div>
    	<div class="name"><c:out value="${book.name}" /></div>
    	<div class="price"><c:out value="${book.price}" />Rs.</div>
    	
    	<%--<a href="<c:url value="addToCart.jsp"><c:param name="product_id" value="${book.product_id }" /></c:url>"> 
    	 
    	 <input type="button" value="add to cart" class="addToCart"></a>
    	    --%>
    	  <form  method="post" action="servlet/CartController">
    	  <input name="name" type="hidden" value="<c:out value="${book.name }"></c:out>">
    	  <input name="author" type="hidden" value="<c:out value="${book.author }"></c:out>">
    	  <input name="url" type="hidden" value="<c:out value="${book.url }"></c:out>">
    	  <input name="modelNo" type="hidden" value="<c:out value="${book.product_id }"></c:out>">
    	  <input name="description" type="hidden" value="<c:out value="${book.desc }"></c:out>">
    	  <input name="price" type="hidden" value="<c:out value="${book.price }"></c:out>">
    	  <input name="quantity" type="hidden" value="1" >
    	  <input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
    	  </form>
    	  
    	</div>
    	
    </c:forEach>
    </div>
    
  