<!DOCTYPE html>
<%@page import="net.helper.profile.helperEntity"%>
<%@page import="java.util.List"%>
<%@page import="net.helper.profile.HelperDao"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>H&B Services</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
  <link href="assets/img/favicon.pn" rel="icon">

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

 <%  HelperDao dao = new HelperDao();
         List<helperEntity> list = dao.getAllhelperData();
         
         
         helperEntity help = new helperEntity();
        // System.out.println("img   :"+help.getpPhoto());   
         
         System.out.println("list data " + list); 
         
         for(helperEntity h : list){
        	 
        	 System.out.println("actual data " +h);      
        	 
         }
     
     
     %>
     
<style>
.owl-carousel .owl-item img{
height:210px;
}

</style>     

<!-- Coomon header for all files -->
 <jsp:include page="/header.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Header end -->


  <!-- ======= Hero Section ======= -->
  <section id="hero">
    <div class="hero-container" data-aos="fade-up">
      <h1>Maid Service in Pune</h1>
      <h2>We make it easy to hire the right professional</h2>
      <a href="#about" class="btn-get-started scrollto">Get Started</a>
    </div>
  </section><!-- End Hero -->

  <main id="main">

    <!-- ======= About Section ======= -->
    <section id="about" class="about">
      <div class="container" data-aos="fade-up">

        <div class="row justify-content-end">
          <div class="col-lg-11">
            <div class="row justify-content-end">

              <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box py-5">
                  <i class="icofont-simple-smile"></i>
                  <span data-toggle="counter-up">65</span>
                  <p>Happy Clients</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box py-5">
                  <i class="icofont-document-folder"></i>
                  <span data-toggle="counter-up">85</span>
                  <p>Job Seekers</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box pb-5 pt-0 pt-lg-5">
                  <i class="icofont-clock-time"></i>
                  <span data-toggle="counter-up">1</span>
                  <p>Years of experience</p>
                </div>
              </div>

              <div class="col-lg-3 col-md-5 col-6 d-md-flex align-items-md-stretch">
                <div class="count-box pb-5 pt-0 pt-lg-5">
                  <i class="icofont-award"></i>
                  <span data-toggle="counter-up">15</span>
                  <p>Awards</p>
                </div>
              </div>

            </div>
          </div>
        </div>

        <div class="row">

          <div class="col-lg-6 video-box align-self-baseline">
            <img src="assets/img/work-process-2.png" class="img-fluid" alt="">
          </div>

          <div class="col-lg-6 pt-3 pt-lg-0 content">
            <h3><i><u>Home & Beyond Services</u></i> Hire Local Helpers & Workers across Pune</h3>
            <p class="font-italic">
              <b>H&B Services</b> has been widely recognised as an innovative platform connecting the Helpers with employers.
            </p>
            <ul>
              <li><i class="bx bx-check-double"></i> A professional corporate company with reliability</li>
              <li><i class="bx bx-check-double"></i> No advance payment. Pay only after the maid joins</li>
              <li><i class="bx bx-check-double"></i> We are ethical. Client satisfaction is most important</li>
            </ul>
            <p>
              You have probably never worked with anyone like us before. We are a young bunch of techies enthusiastic about building a technology platform that helps home owners to connect to certified, top rated professionals and assists businesses to grow through in-built work management and billing systems.
               We love what we do every day and we believe that the best company is only as great as the team behind it.
            </p>
          </div>

        </div>

      </div>
    </section><!-- End About Section -->



    <!-- ======= Services Section ======= -->
    <section id="services" class="services  section-bg ">
      <div class="container">

        <div class="section-title pt-5" data-aos="fade-up">
          <h2>Our Services</h2>
        </div>

        <div class="row">
          <div class="col-md-6">
            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="las la-basketball-ball" style="color: #ff689b;"></i></div>
              <h4 class="title"><a href="">Maids</a></h4>
              <p class="description">Voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident</p>
            </div>
          </div>
          <div class="col-md-6">
            <div class="icon-box" data-aos="fade-up">
              <div class="icon"><i class="las la-book" style="color: #e9bf06;"></i></div>
              <h4 class="title"><a href="">Cooks</a></h4>
              <p class="description">Minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat tarad limino ata</p>
            </div>
          </div>

          <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="las la-file-alt" style="color: #3fcdc7;"></i></div>
              <h4 class="title"><a href="">Drivers</a></h4>
              <p class="description">Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</p>
            </div>
          </div>
          <div class="col-md-6" data-aos="fade-up" data-aos-delay="100">
            <div class="icon-box">
              <div class="icon"><i class="las la-tachometer-alt" style="color:#41cf2e;"></i></div>
              <h4 class="title"><a href="">Nannies (baby day care)</a></h4>
              <p class="description">Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</p>
            </div>
          </div>

          <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="las la-globe-americas" style="color: #d6ff22;"></i></div>
              <h4 class="title"><a href="">Watchman</a></h4>
              <p class="description">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque</p>
            </div>
          </div>
          <div class="col-md-6" data-aos="fade-up" data-aos-delay="200">
            <div class="icon-box">
              <div class="icon"><i class="las la-clock" style="color: #4680ff;"></i></div>
              <h4 class="title"><a href="">Labours</a></h4>
              <p class="description">Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi</p>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Services Section -->
     
     
    
    
    <section>
    		  <div class="container mt-4 d-none d-md-block">
	      	<div class="section-title">
				<h2>Professional in There Skills</h2>
			</div>
			
			
                         
        	 
		<div class="row">
				<div class="product__discount__slider owl-carousel">
		
		  <%
                    for(helperEntity h : list){ %>		
				
		<div class="col-lg-3 indexcard">
				<div class="card border-dark bg-light mb-3" id="creativecard">
				 
	 							<div class="card-header bg-transparent border-dark"><a href="#"><%=h.getFname() %></a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="photos/<%=h.getpPhoto() %>" alt=""></a></h5>

	 								<a href="#"><p class="card-text"><%=h.getCategory() %>
	 								<p class="card-text time"><%=h.getWorkhours() %>/<%=h.getWorkfortime() %></p>
	 							</div>
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 									
	 								<div class="product-btns">
	 									<a href="portfolio-details.jsp?id=<%=h.getHpid() %>" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
	 						
		</div>
		
		<%} %>
		 
				</div>
	</div>
    </section>
    
    <style>
    /*customer styling index page*/

	#creativecard{
	text-align:center;
	}
	
	#creativecard .card-header{
	font-weight:bold;
	}
	
	#creativecard .card-body .time{
	border:1px solid grey;
	background:whitesmoke;
	padding:2px;
	margin-top:5px;
	}
	
	.card-footer .product-btns{
	margin:auto;
	}
	
    .customer-card{
      border: #aaa solid 2px;
      background-color:#e5e5e5;
      padding: 20px 15px 20px 15px;
      font-size: 0.8rem;
      height: 250px;
      border-radius: 50px;
      box-shadow: 0 0 5px 0 #bbb;
      margin-bottom: 50px;
    }

    .customer-card h6{
      text-align: center!important;
    }
    .customer-card:hover{
      box-shadow: 0 0 15px 0 #bbb;
    }
    .customer-image{
      width: 40%;
      padding: 10px;
      float: left;
    }
    .customer-image img{
      margin-top: 30px;
      width: 90%;
    }
    .customer-body{
      width: 60%;
      padding: 10px;
      margin: auto;
      float: right;
    }
    .customer-body .starfill{
      color:#80b435;
    }
    .customer-body .starempty{
      color:#999;
    }
    /*customer styling index page end*/

    </style>
    
        <!-- ======= customers Section ======= -->
   <section style="background-image:url(assets/img/cust-rev-bg.jpg);padding-bottom:0px;padding-top:40px;">
    <div class="container">

      <div class="section-title">
        <h2>Testimonials</h2>
      </div>

      <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
          <li data-target="#demo" data-slide-to="0" class="active"></li>
          <li data-target="#demo" data-slide-to="1"></li>
          <!-- <li data-target="#demo" data-slide-to="2"></li> -->
        </ul>

        <!-- The slideshow -->
      <div class="carousel-inner container">
      <div class="carousel-item active">

      <div class="row mb-4">
          <div class="col-lg-4 col-sm-6 col-xs-12">
              <div class="customer-card">
                  <div class="customer-image my-auto">
                      <img src="assets/img/User.png">
                  </div>
                  <div class="customer-body my-auto">
                      <h6><b>Nisar Shaikh</b></h6><br>
                      <p>Second helper I have hired through H & B. Both the times the service was very professional, enough candidates were available and the process was smooth. </p>
                      <i class="fa fa-star starfill"></i>
                      <i class="fa fa-star starfill"></i>
                      <i class="fa fa-star starfill"></i>
                      <i class="fa fa-star starfill"></i>
                      <i class="fa fa-star starempty"></i>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-sm-6 col-xs-12 d-none d-md-block">
              <div class="customer-card">
                  <div class="customer-image my-auto">
                      <img src="assets/img/User.png">
                  </div>
                  <div class="customer-body my-auto">
                      <h6><b>Amol Mundhe</b></h6><br>
                      <p>It is priced just right and the criminal verification is quite thorough. Highly recommended.</p>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starempty"></i>
                  </div>
              </div>
          </div>
          <div class="col-lg-4 col-sm-6 col-xs-12 d-none d-lg-block">
              <div class="customer-card">
                  <div class="customer-image my-auto">
                      <img src="assets/img/User.png">
                  </div>
                  <div class="customer-body my-auto">
                      <h6><b>Arjun Waghmare</b></h6><br>
                      <p>I hired some and H & B helped me verify them, get a contract with them, as well as train them in basic etiquette. All at far less cost, time & effort than any manpower agency.</p>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starfill"></i>
                          <i class="fa fa-star starempty"></i>
                  </div>
              </div>
          </div>
      </div>
      </div>

      <div class="carousel-item ">

        <div class="row mb-4">
            <div class="col-lg-4 col-sm-6 col-xs-12">
                <div class="customer-card">
                    <div class="customer-image my-auto">
                        <img src="assets/img/User.png">
                    </div>
                    <div class="customer-body my-auto">
                        <h6><b>Aditya Mundhe</b></h6><br>
                        <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out
                            print, graphic or web designs.</p>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starempty"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-xs-12 d-none d-md-block">
                <div class="customer-card">
                    <div class="customer-image my-auto">
                        <img src="assets/img/User.png">
                    </div>
                    <div class="customer-body my-auto">
                        <h6><b>Shivani Dayma</b></h6><br>
                        <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out
                            print, graphic or web designs.</p>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starfill"></i>
                            <i class="fa fa-star starempty"></i>
                    </div>
                </div>
            </div>
            <div class="col-lg-4 col-sm-6 col-xs-12 d-none d-lg-block">
                <div class="customer-card">
                    <div class="customer-image my-auto">
                        <img src="assets/img/User.png">
                    </div>
                    <div class="customer-body my-auto">
                        <h6><b>Abhishek Agrawal</b></h6><br>
                        <p>Lorem ipsum, or lipsum as it is sometimes known, is dummy text used in laying out
                            print, graphic or web designs.</p>
                        <i class="fa fa-star starfill"></i>
                        <i class="fa fa-star starfill"></i>
                        <i class="fa fa-star starfill"></i>
                        <i class="fa fa-star starfill"></i>
                        <i class="fa fa-star starempty"></i>
                    </div>
                </div>
            </div>
        </div>
        </div>

    </div>
    </div>
    </div>
  </section>
  <!-- End Our Customers Section -->

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
