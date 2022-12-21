<%@page import="net.project.ConnectionProvider" %>
<%@page import="java.sql.* " %>

<%
String id=request.getParameter("id");
String fullname=request.getParameter("fullname");
String mobile=request.getParameter("mobile");
String email=request.getParameter("email");
String age=request.getParameter("age");
String aadhar=request.getParameter("aadhar");
String blood=request.getParameter("blood");
String reason=request.getParameter("reason");


try
{
	Connection con = ConnectionProvider.getCon();
	PreparedStatement ps = con.prepareStatement("insert into request_blood value(?,?,?,?,?,?,?,?)");
	
	ps.setString(1, id);
	ps.setString(2, fullname);
	ps.setString(3, mobile);
	ps.setString(4, email);
	ps.setString(5, age);
	ps.setString(6, aadhar);
	ps.setString(7, blood);
	ps.setString(8, reason);

	ps.executeUpdate();
	
	response.sendRedirect("requestForBlood.jsp?msg=valid");

}
catch(Exception e)
{
	response.sendRedirect("requestForBlood.jsp?msg=invalid");
}

%>