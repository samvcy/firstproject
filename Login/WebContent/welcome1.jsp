<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome_Page</title>
</head>
<style>
.wel center{
color: #FFFFFF;
font-size:30px;
margin: 0 0 15px;
padding: 15px;
font-family:Courier;

}


  .well button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 25%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}

.well button:hover,.well button:active,.well button:focus {
  background: #43A047;
  }
</style>
<body background="head.jpg">
	<div class = "wel">
	<%
	
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");
	if(session.getAttribute("username")==null)
	{
		response.sendRedirect("login1.jsp");
	}
	
	%>
	
	<center> Welcome ${username}.! </center>
	</div>
    <form action = "Logout">
	<div class = "well">
   <center><button>Logout</button></center>

</div>
</form>
</body>
</html>