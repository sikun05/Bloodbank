<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="style.css" class="">
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <title>Home Page</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-light" style="background-color: teal;">
        <img src="logo.png" alt="" class="">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#myNavbarToggler4"
            aria-controls="myNavbarToggler4" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="myNavbarToggler4">
            <ul class="navbar-nav">
                <li class="nav-item">
                    <a class="nav-link" href="#" id="active">Home</a>
                </li> 
    
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                        Login
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown" >
                        <a class="dropdown-item" href="adminLogin.jsp">Admin Login</a>
                        <a class="dropdown-item" href="donorLogin.jsp">Donor Login</a>
                        <a class="dropdown-item" href="donorRegistration.jsp">Donor Registration</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">About</a>
                    </div>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown"
                        aria-haspopup="true" aria-expanded="false">
                         User Request
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="requestForBlood.jsp">Request for Blood</a>
                        <a class="dropdown-item" href="bookAppointment.jsp">Book an Appointment</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#"></a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#" id="navbarDropdown">Contact</a>
                </li>
            </ul>
        </div>
    </nav>
    <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="3" aria-label="Slide 4"></button>
          <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="4" aria-label="Slide 5"></button>
        </div>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img src="img1.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="img2.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="img3.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="img4.jpg" class="d-block w-100" alt="...">
          </div>
          <div class="carousel-item">
            <img src="img5.jpg" class="d-block w-100" alt="...">
          </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="visually-hidden">Next</span>
        </button>
      </div>

      <nav class="box">
        <div class="container-fluid">
          <p>
            <a class="btn btn-primary"  href="donorForm1.jsp" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Donate Blood</a>
            <a class="btn btn-primary"  href="bookAppointment.jsp" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">Book an Appointment</a>
            <a class="btn btn-primary" data-bs-toggle="collapse" href="#multiCollapseExample1" role="button" aria-expanded="false" aria-controls="multiCollapseExample1">About</a>
          </p>
        </div>
      </nav>
      <table id="customers">
        <tr>
          <th>Blood Type</th>
          <th>Donate Blood To</th>
          <th>Receive Blood From</th>
      </tr>
      <tr>
          <td>A+</td>
          <td>A+ AB+</td>
          <td>A+ A- O+ O-</td>
      </tr>
      <tr>
          <td>B+</td>
          <td>B+ AB+</td>
          <td>B+ B- O+ O-</td>
      </tr>
      <tr>
          <td>AB+</td>
          <td>AB+</td>
          <td>Everyone</td>
      </tr>
      <tr>
          <td>O+</td>
          <td>O+ A+ B+ AB+</td>
          <td>O+ O-</td>
      </tr>
      <tr>
          <td>A-</td>
          <td>A+ A- AB+ AB-</td>
          <td>A- O-</td>
      </tr>
      <tr>
          <td>B-</td>
          <td>B+ B- AB+ AB-</td>
          <td>B- O-</td>
      </tr>
      <tr>
          <td>AB-</td>
          <td>AB+ AB-</td>
          <td>AB- A- B- O-</td>
      </tr>
      <tr>
          <td>O-</td>
          <td>Everyone</td>
          <td>O-</td>
      </tr>
      </table>
      <div class="backimg">
        <img src="back.jpg">
    </div>

    <div class="container">
      <footer class="py-3 my-4">
        <ul class="nav justify-content-center border-bottom pb-3 mb-3">
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Home</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Features</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">Pricing</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">FAQs</a></li>
          <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">About</a></li>
        </ul>
        <p class="text-center text-muted">© 2022 DAC,Bloodbank Management</p>
      </footer>
    </div>
      
    
 

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    
  </body>
</html>