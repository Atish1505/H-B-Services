 <%@page import="net.helper.profile.helperEntity"%>
<%@page import="java.util.List"%>
<%@page import="net.helper.profile.HelperDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>H&B Services | Helpers</title>
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

 <!-- Coomon header for all files -->
 <jsp:include page="/header.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Header end -->
  
<main id="main">

    <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="breadcrumb-hero">
        <div class="container">
          <div class="breadcrumb-hero">
            <h2>Helpers</h2>
            <p>Need job of Helper, Nanny, Cook, Patient Care, Delivery, Cleaning, Office Boy, Security Guard? FREE?</p>
          </div>
        </div>
      </div>
    </section><!-- End Breadcrumbs -->
  
  
    <!-- ======= Portfolio Section ======= -->
    <section id="portfolio" class="portfolio">
      <div class="container">
      
     <%  HelperDao dao = new HelperDao();
         List<helperEntity> list = dao.getCookhelperData();
         
         System.out.println("list data " + list); 
         
         for(helperEntity h : list){
        	 
        	 System.out.println("actual data " +h);      
        	 
         }
     
     
     %>

        <div class="row">
          <div class="col-lg-12 d-flex justify-content-center" data-aos="fade-up">
            <ul id="portfolio-flters">
              <li data-filter="*" class="filter-active"><a href="service.jsp">All</a></li>
              <li data-filter=".filter-app"><a href=Maids.jsp>Maids</a></li>
              <li data-filter=".filter-card"><a href="#">Cook</a></li>
              <li data-filter=".filter-web"><a href="Drivers.jsp">Drivers</a></li>
              <li data-filter=".filter-nanni"><a href = "Nannies.jsp">Nannies</a></li>
              <li data-filter=".filter-watchman"><a href="Watchmans.jsp">Watchman</a></li>
              <li data-filter=".filter-labour"><a href="Labours.jsp">Labours</a></li>
            </ul>
          </div>
        </div>

        <div class="row portfolio-container" data-aos="fade-up">
        
        <%
          for(helperEntity h : list){ %>
        	 
        	    
        	 <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
             <img src="photos/<%=h.getpPhoto() %>" class="img-fluid" alt="alt" />
              <div class="portfolio-data">
                <h4><%=h.getFname() %></h4>
                <p>Work For: <%=h.getWorkhours()%></p>
                <p>Category : <%=h.getCategory() %></p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp?id=<%=h.getHpid() %>.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
        	      
        	 
        	 
        	 
        	     
        	 
        <% }     
     
     %>
        

          <!-- <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Maids Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
 -->
<!--           <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Drivers</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 portfolio-item filter-nanni">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Nanni's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 portfolio-item filter-watchman">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Watchman's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
           <div class="col-lg-4 col-md-6 portfolio-item filter-labour">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-1.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Labor's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Maids Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-4.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Cook</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-5.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Driver</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
          <div class="col-lg-4 col-md-6 portfolio-item filter-nanni">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Nanni's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-3.jpg" data-gall="portfolioGallery" class="venobox" title="App 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-app">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-6.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Maids Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-7.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Cook</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
           <div class="col-lg-4 col-md-6 portfolio-item filter-watchman">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-3.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Watchman's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="assets/img/portfolio/portfolio-3.jpg" data-gall="portfolioGallery" class="venobox" title="App 2"><i class="bx bx-plus"></i></a>
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>
          
           <div class="col-lg-4 col-md-6 portfolio-item filter-labour">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-2.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Labor's Name</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-card">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-8.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Cook</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div>

          <div class="col-lg-4 col-md-6 portfolio-item filter-web">
            <div class="portfolio-wrap">
              <img src="assets/img/portfolio/portfolio-9.jpg" class="img-fluid" alt="">
              <div class="portfolio-data">
                <h4>Driver</h4>
                <p>Work For: Full Time/Part Time</p>
                <div class="portfolio-links">
                  <a href="portfolio-details.jsp" title="More Details"><button class="btn btn-outline-success btn-sm">Get More Details</button></a>
                </div>
              </div>
            </div>
          </div> -->

        </div>

      </div>
    </section><!-- End Portfolio Section -->
  
  
  </main><!-- End #main -->
  
<!-- Coomon footer for all files -->
 <jsp:include page="/footer.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Footer end -->
<script>
    document.getElementById("year").innerHTML = new Date().getFullYear();
</script>

<!-- Common floating_button for all files -->
 <jsp:include page="/floating_button.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- floating_button end -->  

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
 