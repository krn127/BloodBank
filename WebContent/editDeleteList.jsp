
<%@include file="header.html"%>
<%@page import="utils.DBUtils" %>
<%@page import="java.sql.*" %>
<html>
<head>
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 95%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #4CAF50;
  color: white;
}
</style>
</head>
<body>
<br>
<%
String msg=request.getParameter("msg");
if("valid".equals(msg))
{
 %>
 <center>  <font color="red" size="7">Updated Successfully </font></center>
 <%	
}
%>
<%
if("invalid".equals(msg))
{
 %>
 <center>  <font color="red" size="7">Something went wrong!! Try Again</font></center>
 <%	
}
%>
<%
if("deleted".equals(msg))
{
 %>
 <center>  <font color="red" size="7">Deleted Successfully!!</font></center>
 <%	
}
%>
<center>
<table id="customers">
<tr>
<th>ID</th>
<th>Name</th>
<th>Gender</th>
<th>Mobile Number</th>
<th>Email</th>
<th>Blood Group</th>
<th>Address</th>
<th>Edit</th>
<th>Delete</th>
</tr>
<tr>
<%
try
{
	Connection con=DBUtils.getDBConnection();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from donor");
	while(rs.next())
	{
%> 
<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(5) %></td>
<td><%=rs.getString(6) %></td>
<td><%=rs.getString(7)%></td>
<td><a href="updateDonor.jsp?id=<%=rs.getString(1)%>">Edit</a></td>
<td><a href="deleteDonor.jsp?id=<%=rs.getString(1)%>">Delete</a></td>
</tr>
<%
      }
   }
catch(Exception e)
{
	System.out.println(e);
	}
%>
</table>
</center>
<br>
<br>
<br>
<br>
</body>
</html>