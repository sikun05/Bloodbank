<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<%@page import="java.sql.* " %>
<%@page import="net.project.ConnectionProvider"%>

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
    <title>Donor Registration Form</title>
</head>
<body style="background-color:teal;">

	  <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container-fluid">
        <a class="navbar-brand" href="#">BLOOD BANK</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavDarkDropdown" aria-controls="navbarNavDarkDropdown" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
     
      <div class="navbar-nav">
        <div class="nav-item text-nowrap">
          <a class="nav-link px-3" href="donorLogin.jsp">Sign out</a>
        </div>
      </div>
    </nav>
    
    	  <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
	<center>
		<font id="message" style="color:red;" size="5">You are registered successfully.</font>
	</center>
	<%
  }
  %>
	<%
   if("invalid".equals(msg))
  {
  %>
	<center>
		<font id="message1" color="red" size="5">Somethings went's wrong ! Try Again.</font>
	</center>
	<%
  }
  %>
    
    <div id="logreg-forms">
        <form class="form-signin" action="donorLoginAction.jsp" method="post">
            <h1 class="h3 mb-3 font-weight-normal" style="text-align: center"> Sign up</h1>
          
                <input type="text" id="name"  name="name" class="form-control" placeholder="Full name" required autofocus="">
                <input type="text" id="mobile"  name="mobile" class="form-control" placeholder="Mobile number" maxlength="10" required autofocus="">
                <input type="email" id="email" name="email" class="form-control" placeholder="Email address" required autofocus="">
                <input type="password" id="password" name="password" class="form-control" placeholder="Password" onkeyup='check();' required autofocus="">
                <input type="password" id="confirm_password" name="confirm_password" class="form-control" placeholder="Confirm Password" onkeyup='check();' required autofocus="">
                <span id="message"></span>         
                <button class="btn btn-primary btn-block" type="submit"><i class="fas fa-user-plus"></i> Sign Up</button>
            <hr>
              <div class="social-login">
                    <a class="btn google-btn social-btn" href="mailto:lorem@ipsum.com"><span><i class="fab fa-google-plus-g"></i> Sign up with Google+</span> </a>
                </div>
      
    <p style="text-align:center">
        <a href="http://bit.ly/2RjWFMfunction toggleResetPswd(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle() // display:block or none
    $('#logreg-forms .form-reset').toggle() // display:block or none
}

function toggleSignUp(e){
    e.preventDefault();
    $('#logreg-forms .form-signin').toggle(); // display:block or none
    $('#logreg-forms .form-signup').toggle(); // display:block or none
}

$(()=>{
    // Login Register Form
    $('#logreg-forms #forgot_pswd').click(toggleResetPswd);
    $('#logreg-forms #cancel_reset').click(toggleResetPswd);
    $('#logreg-forms #btn-signup').click(toggleSignUp);
    $('#logreg-forms #cancel_signup').click(toggleSignUp);
})g" target="_blank" style="color:black"></a>
    </p>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <script src="script1.js"></script>
</body>
</html>