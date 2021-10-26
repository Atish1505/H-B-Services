<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<!-- ======= Footer ======= -->
  <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6 footer-info">
            <h3>H&B Services</h3>
            <p>H & B is not just a database, but a tech platform for hiring Maid, Nanny, Cook, Driver, Caregiver, Delivery Boy, Office Helper, Factory Worker near you, using automated processes with human support as needed. </p>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><a href="index.jsp">Home</a></li>
              <li><a href="#">About</a></li>
              <li><a href="service.jsp">Helper Listing</a></li>
              <li><a href="#">Policies</a></li>
              <li><a href="contact.jsp">Contact</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-contact">
            <h4>Contact Us</h4>
            <p>
              Indira Shankar Nagari,<br>
              Bhusari Colony, Kothrud,<br>
               Pune, Maharashtra 411038 <br>
               <br>
              <strong>Phone:</strong> +91 12 345 67890<br><br>
              <strong>Email:</strong> support@handbservices.me<br>
            </p>

            

          </div>

          <div class="col-lg-3 col-md-6 footer-newsletter">
            <h4>Our Newsletter</h4>
            <p>Tamen quem nulla quae legam multos aute sint culpa legam noster magna veniam enim veniam illum dolore legam minim quorum culpa amet magna export quem marada parida nodela caramase seza.</p>
            <form action="" method="post">
              <input type="email" name="email"><input type="submit" value="Subscribe">
            </form>
          </div>

        </div>
      </div>
    </div>

    <div class="container">
    <div class="footer-bottom clearfix">
    <div class="pull-left">
      <div class="copyright">
        &copy; <span id="year"></span> Copyright . All Rights Reserved |
      Designed by <a href="./admin/admin_login.jsp" style="color:#94c045;"><strong><i class="las la-home" id="copyicon"></i> <span>H&B Services</span></strong></a>
      </div>
      </div>
      <div class="pull-right">
      <div class="social-links">
              <a href="#" class="twitter"><i class="icofont-twitter"></i></a>
              <a href="#" class="facebook"><i class="icofont-facebook"></i></a>
              <a href="#" class="instagram"><i class="icofont-instagram"></i></a>
              <a href="#" class="google-plus"><i class="icofont-skype"></i></a>
              <a href="#" class="linkedin"><i class="icofont-linkedin"></i></a>
            </div>
            </div>
            </div>
    </div>
  </footer><!-- End Footer -->
  
  <script>
    document.getElementById("year").innerHTML = new Date().getFullYear();
</script>
  
</body>
</html>