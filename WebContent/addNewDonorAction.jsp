<%@page import="utils.DBUtils"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String gender=request.getParameter("gender");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String bloodgroup=request.getParameter("bloodgroup");
String address=request.getParameter("address");
try
{
	Connection con=DBUtils.getDBConnection();
	PreparedStatement ps=con.prepareStatement("insert into donor values(?,?,?,?,?,?,?)");
ps.setString(1,id);
ps.setString(2,name);
ps.setString(3,gender);
ps.setString(4,mobilenumber);
ps.setString(5,email);
ps.setString(6,bloodgroup);
ps.setString(7,address);
ps.executeUpdate();
response.sendRedirect("addNewDonor.jsp?msg=valid");
}
catch(Exception e)
{
response.sendRedirect("addNewDonor.jsp?msg=invalid");	
}
%>