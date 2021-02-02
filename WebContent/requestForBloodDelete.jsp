<%@page import="utils.DBUtils"%>
<%@page import="java.sql.*"%>
<%
String mobilenumber=request.getParameter("mobilenumber");
try
{
	Connection con=DBUtils.getDBConnection();
Statement st=con.createStatement();
st.executeUpdate("delete from bloodrequest where mobilenumber='"+mobilenumber+"'");
response.sendRedirect("requestForBlood.jsp");
}
catch(Exception e)
{
response.sendRedirect("requestForBlood.jsp");
}
%>