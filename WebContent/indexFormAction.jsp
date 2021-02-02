<%@page import="utils.DBUtils"%>
<%@page import="java.sql.*"%>
<%
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String password=request.getParameter("password");
String location=request.getParameter("location");
String bloodgroup=request.getParameter("bloodgroup");
String units=request.getParameter("units");
String status="pending";
try{
	Connection con=DBUtils.getDBConnection();
	PreparedStatement ps=con.prepareStatement("insert into bloodrequest values(?,?,?,?,?,?,?,?)");
	ps.setString(1,name);
	ps.setString(2,mobilenumber);
	ps.setString(3,email);
	ps.setString(4,password);
	ps.setString(5,location);
	ps.setString(6, bloodgroup);
	ps.setString(7,units);
	ps.setString(8,status);
	ps.executeUpdate();
	response.sendRedirect("index.jsp?msg=valid");
	}catch(Exception e)
{
	response.sendRedirect("index.jsp?msg=invalid");
	}
%>