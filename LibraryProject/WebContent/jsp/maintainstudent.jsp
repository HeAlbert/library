<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
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
     <li><a href="#">Serach Item</a></li>
      <li><a href="#">Transaction History</a></li>
      <li><a href="#">Return Item</a></li>
      <li><a href="#">Maintain Item</a>
      <li><a href="#">Maintain Student</a></li>
    </ul>
    <!-- end .sidebar1 --></div>
  <div class="content">
 <div style="margin:10px;">

 	<form class="searchbar">
    	<label >Student ID</label>
        <input type="text" name="studentid"  />
        <button type="submit">Search</button>
    </form>
   <form>
   <div style="height:740px;">
        <table class="stable">
       	<a href ="../jsp/newstudent.jsp">Create New Student</a>
       
            <tr >
            	<th>SN</th>
                <th>StudentID</th>
                <th>StudentName</th>
                <th>ContactNumber</th>
                <th>Status</th>
                <th>Edit</th>
            </tr>
            <c:forEach items="${stulist}" var="stu" varStatus="i">
            
            <tr>
            	<td>${i.index+1}</td>
                <td>${stu.userId}</td>
                <td>${stu.userName}</td>
                <td>${stu.phoneNumber}</td>
                <c:choose> 
                <c:when test='${stu.userStatus =="1"}'><td>Active</td></c:when>
                <c:when test='${stu.userStatus =="0"}'><td>Unactive</td></c:when>
                </c:choose>
				<td>
					<%-- <c:url var="edit" value="/lbrary/user/studetail">
						<c:param name="userid" value="${stu.userId}"/>
					</c:url> --%>
					<a href="studetail?userid=${stu.userId}">Edit</a>
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