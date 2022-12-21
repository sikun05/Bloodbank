<%@page import="net.project.ConnectionProvider" %>
<%@page import="java.sql.* " %>

<%

String fullname=request.getParameter("fullname");
String date=request.getParameter("date");
String time=request.getParameter("time");
String bldbank_name=request.getParameter("bldbank_name");


try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into slotbook value(?,?,?,?)");
	

	ps.setString(1, fullname);
	ps.setString(2, date);
	ps.setString(3, time);
	ps.setString(4, bldbank_name);
	

	ps.executeUpdate();
	
	response.sendRedirect("bookAppointment.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("bookAppointment.jsp?msg=invalid");
}

%>