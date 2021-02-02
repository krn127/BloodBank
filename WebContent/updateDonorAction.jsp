<%@page import="utils.DBUtils" %>
<%@page import="java.sql.*" %>
<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String mobilenumber=request.getParameter("mobilenumber");
String email=request.getParameter("email");
String address=request.getParameter("address");

try{
   Connection con=DBUtils.getDBConnection();
	PreparedStatement ps=con.prepareStatement("update donor set name=?,mobilenumber=?,email=?,address=? where id=?");
	ps.setString(1,name);
	ps.setString(2,mobilenumber);
	ps.setString(3,email);
	ps.setString(4,address);
	ps.setString(5,id);
	ps.executeUpdate();
	response.sendRedirect("editDeleteList.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("editDeleteList.jsp?msg=invalid");

	}
%>