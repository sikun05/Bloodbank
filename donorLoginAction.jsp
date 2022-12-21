<%@page import="net.project.ConnectionProvider" %>
<%@page import="java.sql.* " %>

<%
String id=request.getParameter("id");
String name=request.getParameter("name");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String password=request.getParameter("password");
String confirm_password=request.getParameter("confirm_password");
try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into donor_register value(?,?,?,?,?,?)");
	
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3, mobile);
	ps.setString(4, email);
	ps.setString(5, password);
	ps.setString(6, confirm_password);
	ps.executeUpdate();
	
	response.sendRedirect("donorRegistration.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("donorRegistration.jsp?msg=invalid");
}

%>