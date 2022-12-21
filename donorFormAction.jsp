<%@page import="net.project.ConnectionProvider" %>
<%@page import="java.sql.* " %>

<%

String fullname=request.getParameter("fullname");
String mobileno=request.getParameter("mobileno");
String emailid=request.getParameter("emailid");
String age=request.getParameter("age");
String gender=request.getParameter("gender");
String blood=request.getParameter("blood");
String address=request.getParameter("address");


try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into donorform value(?,?,?,?,?,?,?)");
	

	ps.setString(1, fullname);
	ps.setString(2, mobileno);
	ps.setString(3, emailid);
	ps.setString(4, age);
	ps.setString(5, gender);
	ps.setString(6, blood);
	ps.setString(7, address);

	ps.executeUpdate();
	
	response.sendRedirect("donorForm1.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("donorForm1.jsp?msg=invalid");
}

%>