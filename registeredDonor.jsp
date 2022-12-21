<%@page import="net.project.ConnectionProvider" %>
<%@page import="java.sql.*" %>

<html>
<head>
   <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="styleRequest.css" class="">
<style>
#customers {
  font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
  
}



#customers tr:hover {background-color: #ddd;}
#customers td{
color:yellow;
}

#customers th {
 
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color:dodgerblue;
  color: white;
}
table{
margin-top:32px;
}
body{
background-color:teal;
}
</style>
</head>
<body>
 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">REGISTERED DONOR </a>
          <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarCollapse">
            <ul class="navbar-nav me-auto mb-2 mb-md-0">
              <li class="nav-item">
                <a class="btn btn-primary" href="#" role="button">Home</a>
              </li>
            </ul>
            <div class="navbar-nav">
                <div class="nav-item text-nowrap">
                  <a class="nav-link px-3" href="adminIndex.jsp">Sign out</a>
                </div>
              </div>
          </div>
        </div>
      </nav>

<br>
<%
String msg=request.getParameter("msg");

%>
<%
if("invalid".equals(msg))
{
%>
<center><font color="red" size="5">Something went's wrong.</center>
<%
}
%>
<%
if("deleted".equals(msg))
{
%>
<center><font color="red" size="5">Successfully Deleted.</center>
<%
}
%>


<center>
<table id="customers">
<tr>
<th>ID</th>
<th>NAME</th>
<th>MOBILE NUMBER</th>
<th>EMAIL</th>
<th>DELETE</th>
</tr>
<tr>
<%
try
{
	Connection con=ConnectionProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select *from donor_register");
	while(rs.next())
	{
%>

<td><%=rs.getInt(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>

<td><a href="deleteRegisterDonorList.jsp?id=<%=rs.getString(1)%>" style="color:black;">Delete</a></td>
</tr>
<%
	}
	}
catch(Exception e)
{
	System.out.print(e);
}
%>
</table>
</center>
<br>
<br>
<br>
<br>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>