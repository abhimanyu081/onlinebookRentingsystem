<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    
    <title>My JSP 'showbooks.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<link href="css/bookSection.css" rel="stylesheet" type="text/css" />



  </head>
  
  <body> 
    out.println("hrll");
    
    <div class="bookSectionOuter">
    <c:forEach items="${books}" var="book" >
    	<form action="addToCart.jsp" method="post">
    	<div  class="bookWrapper">
    	<div class="bookImages"><a href=""><img src='<c:out value="${book.url}" />' alt="book" height=200px width="150px"/></a></div>
    	<div class="name"><c:out value="${book.name}" /></div>
    	<div class="price"><c:out value="${book.price}" /></div>
    	<div class="addToCart"><a href="addTocart.jsp">Add To Cart</a></div>
    	<div class="view"><a href="">View</a></div>
    	<input type="hidden" value="<c:out value="${book.name }"></c:out>" />
    	<input type="hidden" value="<c:out value="${book.price }"></c:out>" />
    	<input type="hidden" value="<c:out value="${book.product_id }"></c:out>" />
    	<input type="hidden" value="<c:out value="${book.price }"></c:out>" />
    	<input type="submit" value="add" />
    	</div>
    	</form>
    </c:forEach>
    </div>
     <!-- <table border="1">
    
    	<thead>
    		<tr>
    		<th>image</th>
    		<th>price</th>
    		<th>name</th>
    		<th>author</th>
    		<th>desc</th>
    		<th>add</th>
    		<th>view</th>
    		</tr>
    	</thead>
    	<tbody>
    		<c:forEach items="${books}" var="book" >
    			<tr>
    			<td><img src=' <c:out  value="${book.url}"/>'/></td>
    			<td><c:out value="${book.name}" /></td>
    			<td><c:out value="${book.price}" /></td>
    			<td><c:out value="${book.author}" /></td>
    			<td>0<c:out value="${book.desc}" /></td>
    			<td><a href="">Add</a></td>
    			<td><a href="">View</a></td>
    		</tr>
    		
    	</c:forEach>
    	</tbody>
    	</table>
   	-->
  </body>
</html>
