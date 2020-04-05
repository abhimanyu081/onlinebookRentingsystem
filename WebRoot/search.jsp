

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
	<%-- --%>
		 <div class="bookSectionOuter">
    <div class="book_heading">Random</div>
    <c:forEach items="${bookList1}" var="book" >
    	
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
    
  
	<%-- --%>
    </div>
    
    <div class="clear"></div>
    <div id="foooter_outer">
    <%@include file="footer.jsp" %>
    </div>
   </div>
  </body>
</html>
