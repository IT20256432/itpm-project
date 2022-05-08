<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <!-- Required meta tags-->
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Colorlib Templates">
    <meta name="author" content="Colorlib">
    <meta name="keywords" content="Colorlib Templates">

    <!-- Title Page-->
    <title>Add Vehicle maintain details</title>

    <!-- Icons font CSS-->
    <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">
    <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
    <!-- Font special for pages-->
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,100i,300,300i,400,400i,500,500i,700,700i,900,900i" rel="stylesheet">

    <!-- Vendor CSS-->
    <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
    <link href="vendor/datepicker/daterangepicker.css" rel="stylesheet" media="all">

    <!-- Main CSS-->
    <link href="/RentalService/main.css" rel="stylesheet" media="all">
    
    <link rel="stylesheet" href="/RentalService/style.css" type="text/css">
    
    <link href="/RentalService/footer.css" rel="stylesheet" media="all">
    
    <link href="/RentalService/header.css" rel="stylesheet" media="all">
    

</head>

<body>

<script>  
function validate(){  
var mfee=document.f1.mfee.value;  
if (isNaN(mfee)){  
  document.getElementById("numloc").innerHTML="Enter Numeric value only";  
  return false;  
}else{  
  return true;  
  }  
}  
</script>

<style type="text/css">
* {
  padding: 0;
  margin: 0;
  box-sizing: border-box;
}
body {
  min-height: 400vh;
  flex-direction: column;
  align-items: center;
  justify-content: center;
  background-color:#333;
}
  
.button {
  text-decoration: none;
  color: rgba(255, 255, 255, 0.8);
  background:#8f4068; /*rgb(145, 92, 182);*/
  padding: 15px 40px;
  border:none;
  border-radius: 16px;
  font-weight: normal;
  text-transform: uppercase;
  transition: all 0.2s ease-in-out;
}

.button:hover {
  color: rgba(255, 255, 255, 1);
  box-shadow: 0 5px 25px rgba(145, 102, 182, .4);
}

</style>

<header>
	<nav>
  <div class="logo">  <img border="0" src="images/logo.jpg"
     alt="Pulpit rock" width="20" height="75" align="left" >
  <h1> SKY Rental Service  </h1>  <br><br>
  
  <h6>Turning miles Into Smiles.......</h6></div>

  <div class="navbar">
    <ul class="nav-menu">
      <li class="nav-item"><a href="#" class="nav-link">Home</a></li>
      <li class="nav-item"><a href="#" class="nav-link">About</a></li>
      <li class="nav-item"><a href="#" class="nav-link">Services</a></li>
      <li class="nav-item"><a href="#" class="nav-link">Contact</a></li>
      
    </ul>
  </div>

  <div class="hamburger">
    <span class="bar"></span>
    <span class="bar"></span>
    <span class="bar"></span>
  </div>
</nav>
	</header>

	<section class="full-width-img">
		
		</section>
		
		<br><br><br><br><br>
  <center>
 
    <a href="vminsert.jsp" type="button" class="button">Insert Maintain Details</a>
  <br>
  <br><br><br><br><br><br><br>
  
     <a href="login.jsp" type="button" class="button">Edit Existing Maintain Details</a>
  <br>
     </center>
     
     <br><br><br><br><br>
		 <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Enjoy the efficient and specialized services of SKY rent a car, Sri Lanka's leading rent-a-car company.        <br>        
        	
           </p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
	<script src="validateinsert.js"></script>
    <script src="header.js"></script>
	<script src="vendor/jquery/jquery.min.js"></script>
    <!-- Vendor JS-->
    <script src="vendor/select2/select2.min.js"></script>
    <script src="vendor/datepicker/moment.min.js"></script>
    <script src="vendor/datepicker/daterangepicker.js"></script>
    	
	<script src="global.js"></script>	
	<script src="validateinsert.js"></script>
</body>

</html>