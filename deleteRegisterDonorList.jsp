<%@page import="net.project.ConnectionProvider"%>
<%@page import="java.sql.*"%>
<%
String id=request.getParameter("id");
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	st.executeUpdate("delete from donor_register where id='"+id+"'");
	response.sendRedirect("registeredDonor.jsp?msg=deleted");
}
catch(Exception e)
{
	response.sendRedirect("registeredDonor.jsp?msg=invalid");
}




%>