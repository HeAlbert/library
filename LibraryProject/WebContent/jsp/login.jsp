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
 <div class="header">
 <img src="../img/BigLogo.png" alt="Insert Logo Here" name="Insert_logo" width="180" height="90" id="Insert_logo" style="background-color: lightgrey; float:left" />

   <div style="clear:both; height:10px;"></div>
    <!-- end .header --></div>
  
  <div style="clear:both; height:10px;"></div>
  <div id="mainview" style="height:1000px; background:white;">
  	<div id="logindiv">
      <form id="searchform" action="/library/user/login" method="post">
            <label class="logintable">Log In</label>
            <table class="logintable" >
            <tr>
                <td class="logintable" ><label >UserID:</label></td>
                <td class="logintable"><input type="text" name="userid" ></td>
            <tr>
            <tr>
                <td class="logintable"> <label >PassWord:</label></td>
                <td class="logintable"><input type="password" name="pwd"  ></td>
            </tr>
            <tr>
                <td colspan="2" align="center" class="logintable">
                    <button type="submit" >Log in</button>
                </td>
            </tr>
            </table>
            
            <label style="color:red;"> 
	            <c:if test="${correctlogin==false}">
	            	UserID or Password is incorrect!
	            </c:if>
             </label>
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