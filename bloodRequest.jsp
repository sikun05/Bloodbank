<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
   
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="styleRequest.css" class="">
    <script src="script.js"></script>
    <title>Blood Request</title>
  </head>
  <body>
  
    <%
  String msg=request.getParameter("msg");
  if("valid".equals(msg))
  {
  %>
	<center>
		<font id="message" style="color:green;" size="4">You are registered successfully.</font>
	</center>
	<%
  }
  %>
	<%
   if("invalid".equals(msg))
  {
  %>
	<center>
		<font id="message1" color="red" size="4">Somethings went's wrong ! Try Again.</font>
	</center>
	<%
  }
  %>

    <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
        <div class="container-fluid">
          <a class="navbar-brand" href="#">Request For Blood</a>
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
                  <a class="nav-link px-3" href="#">Sign out</a>
                </div>
              </div>
          </div>
        </div>
      </nav>


    <div class="container card-0 justify-content-center ">
        <div class="card-body px-sm-4 px-0">
            <div class="row justify-content-center mb-5">
            <div class="col-md-10 col"> 
            <h3 class="font-weight-bold ml-md-0 mx-auto text-center text-sm-left"> REQUEST FORM</h3>
            <p class="mt-md-4 ml-md-0 ml-2 text-center text-sm-left"> All the fields are *mandatory so filled it and check carefully then submit.</p> 
            </div>
            </div>
            <div class="row justify-content-center round"> 
            <div class="col-lg-10 col-md-12 "> 
            <div class="card shadow-lg card-1"> 
            <div class="card-body inner-card"> 
            <div class="row justify-content-center">
            <div class="col-lg-5 col-md-6 col-sm-12"> 
            <div class="form-group">
                <label for="first-name">*First Name</label>
                <input type="text" class="form-control" id="first_name" name="first_name" placeholder="Enter first name" required> 
            </div>
            <div class="form-group">
                <label for="father">*Father Name</label>
                <input type="text" class="form-control" id="father" name="father" placeholder="Enter father name" required> 
            </div>
            <div class="form-group"> 
                <label for="mobile_number">*Mobile Number</label> 
                <input type="text" class="form-control" id="mobile" name="mobile" max-length="10" placeholder="Enter mobile number" required>
            </div>
            <div class="form-group"> 
                <label for="dob">*Date Of Birth</label> 
                <input type="date" class="form-control" id="dob" name="dob" required>
            </div>
            <div class="form-group">
                <label for="inputEmail4">*Gender</label> 
                <select class="form-control" name="gender"> 
                <option >Select your gender</option>
                <option>Male</option>
                <option>Female</option>
                <option>Transgender</option> 
                </select>
            </div>
            <div class="form-group"> 
                <label for="inputEmail4">*State</label>
                <select  name="state" id="state" onchange="print_city('dist',selectedIndex);" class="form-control" >
                </select>
            </div>    
            <div class="form-group"> 
                <label for="mobile_number">*Pincode</label> 
                <input type="text" class="form-control" id="pincode" name="pincode" max-length="6" placeholder="Enter pincode" required>
            </div>
            <div class="form-group">
                <label for="Address">*Id No.</label> 
                <input type="text" class="form-control" id="id_no" name="id_no" placeholder="Enter id no." required> 
            </div>
         
            <div class="form-group">
                <label for="phone">*Quantity</label> 
                <input type="email" class="form-control" id="quantity" name="quantity" placeholder="Enter the quantity" required> 
            </div>
            </div>
            <div class="col-lg-5 col-md-6 col-sm-12">
            <div class="form-group"> 
                <label for="last-name">*Last Name</label>
                <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Enter last name" required>
            </div>
            <div class="form-group"> 
                <label for="mother">*Mother Name</label>
                <input type="text" class="form-control" id="mother" name="mother" placeholder="Enter mother name" required>
            </div>
            <div class="form-group">
                <label for="phone">*Email</label> 
                <input type="email" class="form-control" id="email" name="email" placeholder="Enter email address" required> 
            </div> 
            <div class="form-group"> 
                <label for="blood">*Blood Group</label>
                <select class="form-control" name="bloodgroup">
                <option>select the bloodgroup</option>
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
            <div class="form-group">
                <label for="Address">*Address</label> 
                <input type="text" class="form-control" id="address" name="address" placeholder="At/Po" required> 
            </div>  
         
       
            <div class="form-group"> 
                <label for="inputEmail4">*District</label>
                <select name="dist" id="dist" class="form-control" >
                <option>Select the district</option>
                </select>
            </div>
            <script language="javascript">print_dist("state");</script>

            <div class="form-group"> 
                <label for="inputEmail4">*Identity Proof</label>
                <select class="form-control" name="id_proof">
                <option>Select the Id</option>
                <option value="passport">Passport</option>
                <option value="dl">Driving Licence</option> 
                <option value="pan">Pan Card</option>
                <option value="aadhar">Aadhar Number</option>
                <option value="vid">Voter Id</option> 
                </select>
            </div>
            
            <div class="form-group"> 
                <label for="blood">*Required Blood Group</label>
                <select class="form-control" name="req_bg">
                <option>select the bloodgroup</option>
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
            <div class="row justify-content-center">
                <div class="col-md-12 col-lg-10 col-12">
                <div class="form-group files">
                    <label class="my-auto">*Upload Your Photo </label>
                    <input id="file" type="file" class="form-control" required/>
                </div> 
                </div>
                </div>
            <div class="row justify-content-center">
            <div class="col-md-12 col-lg-10 col-12">
            <div class="form-group files">
                <label class="my-auto">*Upload Your Document </label>
                <input id="file" type="file" class="form-control" required/>
            </div> 
            </div>
            </div>
            <div class="row justify-content-center"> 
            <div class="col-md-12 col-lg-10 col-12">
            <div class="form-group">
                <label for="exampleFormControlTextarea2">Message</label>
                <textarea class="form-cont rounded-0" id="exampleFormControlTextarea2" name="message" rows="5" placeholder="Write the details why you need blood......"></textarea>
            </div> 
            <div class="mb-2 mt-4"> 
            <div class="text-right">
            <button type="button" class="btn btn-primary btn-block">
            <small class="font-weight-bold">Request For Blood</small>
            </button>
            </div>
            </div>
            </div>
            </div>
            </div>
            </div>
        </div> 
    </div>
</div>
</div>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>

  </body>
</html>