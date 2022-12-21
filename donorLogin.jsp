<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="net.project.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.* " %>

<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <link rel="stylesheet" href="styleLoginReg.css">
      <script src="script3.js"></script>
    <title>Donor Login Form</title>
</head>
<body style="background-color:teal;">
  <%
  	try
  	{
  		Connection con= ConnectionProvider.getCon();
  		Statement st=con.createStatement();
  		ResultSet rs=st.executeQuery("select *from donor_register where email=? and password=?");
  		
  		if(rs.next())
  		{
  			System.out.print("Successfully Sign in.");
  			
  		}
  		  
  	}
  	catch(Exception e)
  	{
  		
  	}
  	%>
  	
	    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">BLOOD BANK</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        
      <div class="navbar-nav">
        <div class="nav-item text-nowrap">
          <a class="nav-link px-3" href="index.jsp">Sign out</a>
        </div>
      </div>
    </nav>
    
      <%
  String msg=request.getParameter("msg");
  if("invalid".equals(msg))
  {
  %>
	<center>
		<font id="message" style="color:red;" size="5">Sorry email or password are invalid...</font>
	</center>
  <%
  }
  %>
    
    <div id="logreg-forms">
        <form class="form-signin" action="Login" method="POST">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign in</h1>
          
            <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus="">
            <input type="password" id="password" name="password" class="form-control" placeholder="Password" required>
            
            <button class="btn btn-success btn-block" type="submit"><i class="fas fa-sign-in-alt"></i> Sign in</button>
            <a href="#" id="forgot_pswd">Forgot password?</a>
            <hr>
       
            <button class="btn btn-primary btn-block" type="button" id="btn-signup"  onclick="clickedButton()"><i class="fas fa-user-plus"></i>Sign up here</button>
            </form>

            

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="script1.js"></script>
</body>
</html>
