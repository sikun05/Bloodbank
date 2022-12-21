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
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="" class="">
</head>
<style>
.mb-md-0{
    margin-left: 1130px;
}
.font-italic{
font-weight:600;
}
</style>

<body style="background-color:teal;">
 <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Book An Appointment </a>
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


<div id="page-container" style="margin-top:50px; position: relative;min-height: 84vh;">
  <div class="container">
  <div id="content-wrap" style="padding-bottom:50px;">
<div class="row">
    <div class="col-lg-6">
        <h1 class="mt-4 mb-3">Slot Book </h1>
      </div>
</div>
<hr>
<form name="donor" action="bookAppointmentAction.jsp" method="post">
<div class="row">
<div class="col-lg-4 mb-4">
<div class="font-italic">Full Name<span style="color:red">*</span></div>
<div><input type="text" name="fullname" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Date<span style="color:red">*</span></div>
<div><input type="date" name="date" class="form-control" required></div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Slot Time<span style="color:red">*</span></div>
<div><select name="time" class="form-control" required>
  <option value="">Select</option>
  <option value="9AM-10AM">9AM-10AM</option>
  <option value="10AM-11AM">10AM-11AM</option>
	<option value="11AM-12AM">11AM-12AM</option>
	<option value="12PM-1PM">12PM-1PM</option>
	<option value="2PM-3PM">2PM-3PM</option>
	<option value="3PM-4PM">3PM-4PM</option>
	<option value="4PM-5PM">4PM-5PM</option>
	<option value="5PM-6PM">5PM-6PM</option>
 
</select>
</div>
</div>
<div class="col-lg-4 mb-4">
<div class="font-italic">Bloodbank Name<span style="color:red">*</span></div>
<div><input type="text" name="bldbank_name" class="form-control" required></div>
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
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

</body>
</html>