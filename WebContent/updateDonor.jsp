<%@include file="header.html"%>
<%@page import="utils.DBUtils" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="style.css" type="text/css" media="screen">
<style>
input[type="text"], input[type="password"], input[type="email"], select,input[type="number"]
{
    border: none;
    background:silver;
    height: 50px;
    font-size: 16px;
	padding:15px;
	width:60%;	
	border-radius: 25px;
	margin-left:20%;
}
h2,h1
{	
	margin-left:20%;
}
hr
{
width:60%;	
}
</style>
</head>
<body>
<%
String id=request.getParameter("id");
try{
	Connection con=DBUtils.getDBConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from donor where id='"+id+"' ");
	while(rs.next())
	{
%>
<div class="container">

<form action="updateDonorAction.jsp" method="post">

<input type="hidden" name="id" value="<%out.println(id); %>">
<h2>Name</h2>
<input type="text" value="<%=rs.getString(2)%>" name="name" required>
<hr>
<h2>Mobile Number</h2>
<input type="number" value="<%=rs.getString(4)%>" name="mobilenumber" required>
<hr>
<h2>Email</h2>
<input type="text" value="<%=rs.getString(5)%>" name="email" required>
<hr>
<h2>Address</h2>
<input type="text" value="<%=rs.getString(7)%>" name="address" required>
<br>
<center><button type="submit" class="button" >save</button></center>
</form>
</div>
<%
	}
}
catch(Exception e)
{
 System.out.println(e);	
}

%>





<br>
<br>
<br>
<br>
</body>
</html>