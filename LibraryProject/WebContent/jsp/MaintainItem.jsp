<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="../css/loginstyle.css" type="text/css">
<title>Insert title here</title>
</head>
<body>
<div class="container" >
  <div class="header"><a href="#"><img src="../img/BigLogo.png" alt="Insert Logo Here" name="Insert_logo" width="180" height="90" id="Insert_logo" style="background-color: lightgrey; display:block;" /></a> 
    <!-- end .header --></div>
  <div class="sidebar1">
    <ul class="nav">
     <li><a href="http://localhost:8080/library/jsp/libsearch.jsp">Search Item</a></li>
      <li><a href="librariantransaction.html">Transaction History</a></li>
      <li><a href="librarianreturn.html">Return Item</a></li>
      <li><a href="http://localhost:8080/library/jsp/MaintainItem.jsp">Maintain Item</a>
      <li><a href="/library/user/maintainstudent">Maintain Student</a></li>
    </ul>
    <!-- end .sidebar1 --></div>
  <div class="content">
 <div style="margin:10px;">
 	<form class="searchbar" action="/library/items/maintainsearch" method="post">
    <table>
    <tr>
    	<td>Item Number</td>
        <td><input type="text" name="itemNumber" style="width: 200px; "/></td>
    </tr>     
     <tr >
    	<td>Item Status</td>
        <td> 
        <select name="itemstatus" style="width: 200px; ">
        	<option value="-1" selected="selected">All</option>
        	<option value="1">Available</option>
        </select>
        </td>
    </tr>
    <tr >
    	<td colspan="3" align="right"><button type="submit">Search</button></td>
    </tr>
      </table>
    </form>
   <form>
   <div style="height:740px;">
   	<label></label>
  	<label>Student List</label>
        <table  class="stable">
            <tr >                
                <th>SN</th>
                <th>ItemID</th>
            	<th>Title</th>
            	<th>Author</th>
            	<th>Status</th>
                <th>Edit</th>
            </tr>
            <c:forEach items="${itmlist}" var="items" varStatus="i">
            <tr>
            	<td>${i.index+1}</td>
            	<td>${items.itemNumber}</td>
            	<td>${items.title}</td>
            	<td>${items.author}</td>
            	<c:choose>
            		<c:when test="${items.itemstatus != 0}">
            			<td>available</td>
            		</c:when>
            		<c:otherwise>
            			<td>unavailable</td>
            		</c:otherwise>
            	</c:choose>
            	<td> 
				   <c:url var="edt" value="/items/edit">
				      <c:param name="itemNumber" value="${items.itemNumber}"/>
				   </c:url>
				   <a href="${edt}">Edit</a>
				</td>
            </tr>            	
            </c:forEach>            
        </table>
    </div>
    </form>
  </div>
  </div>
  <div class="footer">
    <p>People Who Like Books, Like Sun Rise In the World.</p>
    <p>Sun Rise Library</p>
    <!-- end .footer --></div>
  <!-- end .container --></div>
</body>
</html>