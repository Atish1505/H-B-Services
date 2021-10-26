<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>H&B Services</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon">

  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
  <link href="assets/vendor/line-awesome/css/line-awesome.min.css" rel="stylesheet">
  <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
  <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">

</head>

<body>

<!-- ======= Header ======= -->
  <header id="header" class="fixed-top">
    <div class="container d-flex">

      <div class="logo mr-auto">
        <h1 class="text-light"><a href="index.jsp">H&B Services</a></h1>
        <!-- Uncomment below if you prefer to use an image logo -->
        <!-- <a href="index.html"><img src="assets/img/logo.png" alt="" class="img-fluid"></a>-->
      </div>

      <nav class="nav-menu d-none d-lg-block">
        <ul>
          <li class="active"><a href="index.jsp">Home</a></li>

          <li><a href="about.html">About</a>
           
          </li>

          <li><a href="service.jsp">Services</a></li>
          <li><a href="#">Blog</a></li>
          <li><a href="contact.jsp">Contact</a></li>
          <li><a href="#" style="font-size:28px; padding-top:0px;"><i class="las la-user"></i></a></li>

        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

<style>
#login{
padding-top:588px;
    background:url("assets/img/hotel4.jpg");
    background-size:cover;
    background-position:center;
    font-family:sans-serif;
}

.loginbox{
    width:320px;
    height:420px;
    background:#000;
    color:#fff;
    top:50%;
    left:50%;
    position:absolute;
    transform:translate(-50%,-50%);
    box-sizing:border-box;
    padding:70px 30px;
}

.admin{
    width:100px;
    height:100px;
    border-radius:50%;
    position:absolute;
    top:-50px;
    left:calc(50% - 50px);

}

h1{
    margin:0;
    padding:0 0 20px;
    text-align:center;
    font-size:22px;
}

.loginbox p{
    margin:0;
    padding:0;
    font-weight:bold;
}

.loginbox input{
    width:100%;
    margin-bottom:20px;
}

.loginbox input[type="text"], input[type="password"]{
    border:none;
    border-bottom:1px solid #fff;
    background:transparent;
    outline:none;
    height:40px;
    color:#fff;
    font-size:16px;
}

.loginbox input[type="submit"]{
    border:none;
    outline:none;
    height:40px;
    background:#28A828;
    color:#fff;
    font-size:18px;
    border-radius:20px;
}

.loginbox input[type="submit"]:hover{
    cursor:pointer;
    background:#FFFF28;
    color:#000;
}

.loginbox a{
    text-decoration:none;
    font-size:12px;
    line-height:20px;
    color:darkgrey;
}

.loginbox a:hover{
    color:#FFFF28;
}
</style>

  <main id="main">
  
  <section id="login">
  <div class="loginbox">
    <img src="assets/img/admin1.png" class="admin">
    <h1> Login Here </h1>
    <form>
    <p>Username</p>
    <input type="text" name="" placeholder="Enter Username">
    <p>Password</p>
    <input type="password" name="" placeholder="Enter Password">
    <input type="submit" name="" value="Login">
    <a href="#"> Forgotten password? </a><br>
    <a href="#"> Signup </a><br>
    </form>
    </div> 
  
  </section>
  </main><!-- End #main -->
 <!-- Vendor JS Files -->
  <script src="assets/vendor/jquery/jquery.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>
  <script src="assets/vendor/waypoints/jquery.waypoints.min.js"></script>
  <script src="assets/vendor/counterup/counterup.min.js"></script>
  <script src="assets/vendor/venobox/venobox.min.js"></script>
  <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>

</body>

</html>