<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<style>
.mb-md-0{
    margin-left: 1130px;
}
.font-italic{
font-weight:600;
}
</style>
</head>

<body style="background-color:teal;">
  <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Request For Blood </a>
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
                  <a class="nav-link px-3" href="index.jsp">Sign out</a>
                </div>
              </div>
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

<div id="page-container" style="margin-top:50px; position: relative;min-height: 84vh;">
  <div class="container">
  <div id="content-wrap" style="padding-bottom:50px;">
<div class="row">
    <div class="col-lg-6">
        <h1 class="mt-4 mb-3">Request Details</h1>
      </div>
</div>
<hr>
<form name="donor" action="requestForBloodAction.jsp" method="post">
<div class="row">
<div class="col-lg-4 mb-4">
<div class="font-italic">Full Name<span style="color:red">*</span></div>
<div><input type="text" name="fullname" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Mobile Number<span style="color:red">*</span></div>
<div><input type="text" name="mobile" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Email Id(Optional)</div>
<div><input type="email" name="email" class="form-control"></div>
</div>
</div>
<div class="row">
<div class="col-lg-4 mb-4">
<div class="font-italic">Age<span style="color:red">*</span></div>
<div><input type="text" name="age" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Aadhar Number<span style="color:red">*</span></div>
<div><input type="text" name="aadhar" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Required Blood Group<span style="color:red">*</span></div>
<div><select name="blood" class="form-control" required>
  <option value="">Select</option>
  <option value="A+">A+</option>
  <option value="B+">B+</option>
	<option value="O+">O+</option>
	<option value="AB+">AB+</option>
	<option value="A-">A-</option>
	<option value="B-">B-</option>
	<option value="O-">O-</option>
	<option value="AB-">AB-</option>
 
</select>
</div>
</div>
</div>

<div class="row">
<div class="col-lg-4 mb-4">
<div class="font-italic">Reason<span style="color:red">*</span></div>
<div><textarea class="form-control" name="reason" required></textarea></div></div>
</div>
<hr>
<div class="row">
  <div class="col-lg-4 mb-4">
  <div><input type="submit" name="submit" class="btn btn-primary" value="Submit" style="cursor:pointer"></div>
  </div>
</div>
</form>
</div>
</div>

</div>
</body>
</html>