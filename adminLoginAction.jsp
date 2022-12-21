<%
String username=request.getParameter("username");
String password=request.getParameter("password");

if("admin".equals(username) && "Password".equals(password))
{
	response.sendRedirect("adminIndex.jsp");
}
else
{
	response.sendRedirect("adminLogin.jsp?msg=invalid");
}

%>