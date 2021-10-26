<%@page import="net.AdminPanel.web.CustomerEntity"%>
<%@page import="net.helper.profile.helperEntity"%>
<%@page import="net.helper.profile.HelperDao"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
       <%
        CustomerEntity c = (CustomerEntity)session.getAttribute("customerData");
          
          if(c==null){
        	 
        	 //String name=ck[0].getValue();  
        	 
        	//response.sendRedirect("login.jsp"); 
        	
        	 out.println("<script type=\"text/javascript\">");
			  
			  out.println("alert('Please Login First..!');");
			  
			  out.println("location ='LoginCustomer.jsp';"); out.println("</script>");
        	
        	// request.getRequestDispatcher("LoginCustomer.jsp").include(request, response);
         }
         
        %>
    
    
   
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>H&B Services | Helper Details</title>
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


<% int hid = Integer.parseInt(request.getParameter("id")); 
     HelperDao dao = new HelperDao();
     helperEntity h =  dao.getHelperDatabyID(hid);
     
     System.out.println(h);

%>

 <%  HelperDao dao1 = new HelperDao();
         List<helperEntity> list = dao1.getAllhelperData();
         
         
         helperEntity help = new helperEntity();
        // System.out.println("img   :"+help.getpPhoto());   
         
         System.out.println("list data " + list); 
         
         for(helperEntity h1 : list){
        	 
        	 System.out.println("actual data " +h1);      
        	 
         }
     
     
     %>
    


  
<main id="main">

  <!-- ======= Breadcrumbs ======= -->
    <section id="breadcrumbs" class="breadcrumbs">
      <div class="breadcrumb-hero">
        <div class="container">
          <div class="breadcrumb-hero">
            <h3><%=h.getFname() %></h3>
          </div>
        </div>
      </div>
    </section><!-- End Breadcrumbs -->

<!-- ======= Portfolio Details Section ======= -->
    <section id="portfolio-details" class="portfolio-details" style="padding-top: 30px;">
      <div class="container">

        <div class="portfolio-details-container">
        <div class="img-detail">
            <img src="assets/img/portfolio-details-1.jpg" alt="">
          </div>
          <div style="padding:20px">
        			<h3><b>Details</b></h3>
        		</div>
        <div class="row" >
        		
        	<div class="col-lg-1 col-md-0">
        	
        	</div>
        	<div class="col-lg-5 col-md-6">
        		
	          <div class="portfolio-info">
	           
            <ul style="list-style-type: none; text-align:left;margin:auto;">
              <li><strong>Name</strong>: <%=h.getFname() %></li>
              <li><strong>Contact No.</strong>: +91 <%=h.getPhone() %></li>
              <li><strong>Email ID</strong>: <a href="<%=h.getEmail() %>"><%=h.getEmail() %></a></li>
           	  <li><strong>Birth Date</strong>: <%=h.getBdaymonth() %> </li>
           	  <li><strong>Gender</strong>:<%=h.getGender() %> </li>
           	  <li><strong>About Me</strong>: Autem ipsum nam porro corporis rerum.</li>
           	  <li><strong>Address</strong style="padding-left:5px;">: <%=h.getAddr1() %>,<%=h.getAddr2() %></li>	
            </ul>
	        </div>
        	</div>
        	<div class="col-lg-5 col-md-6">
        		          <div class="portfolio-info">
            <ul style="list-style-type: none; text-align:left;margin:auto;">
              <li><strong>Hobbie</strong>: <%=h.getHobbies() %></li>
              <li><strong>Job Role</strong>: <%=h.getCategory() %></li>
              <li><strong>Qualification</strong>: <%=h.getEducation()%></li>
              <li><strong>Other Qualification</strong>: <%=h.getQualification()%></li>
              <li><strong>Languages I Speek </strong>: <%=h.getLanguage() %></li>
              <li><strong>Other SKills</strong>: <%=h.getSkills() %></li>
              <li><strong>Work For</strong>: <%=h.getWorkfortime() %></li>
              <li><strong>Working Hrs</strong>:<%=h.getWorkhours() %>.</li>
            </ul>
          </div>
        	</div>
        	<div class="col-lg-1 col-md-0">
        	
        	</div>
        </div>
        </div>
      </div>

    </section><!-- End Portfolio Details Section -->
    
    <style>
    	
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
	
	.card-footer .product-btns {
    margin: auto;
}
    </style>
    
        <section>
    		  <div class="container mt-4 d-none d-md-block">
	      	<div class="section-title">
				<h2>Professional in There Skills</h2>
			</div>
		<div class="row">
				<div class="product__discount__slider owl-carousel">
		
		  <%
                    for(helperEntity he : list){ %>		
				
		<div class="col-lg-3 indexcard">
				<div class="card border-dark bg-light mb-3" id="creativecard">
				 
	 							<div class="card-header bg-transparent border-dark"><a href="#"><%=he.getFname() %></a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="photos/<%=he.getpPhoto() %>" alt=""></a></h5>

	 								<a href="#"><p class="card-text"><%=he.getCategory() %>
	 								<p class="card-text time"><%=he.getWorkhours() %>/<%=he.getWorkfortime() %></p>
	 							</div>
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 									
	 								<div class="product-btns">
	 									<a href="" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
	 						
		</div>
		
		<%} %>
		<div class="col-lg-3 indexcard">
					<div class="card border-dark bg-light mb-3" id="creativecard">
	 							<div class="card-header bg-transparent border-dark"><a href="#">Helper Name</a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="assets/img/blog-author.jpg" alt=""></a></h5>

	 								<a href="#"><p class="card-text">Helper Designation</p></a>
	 								<p class="card-text time">Full Time (Max 10 hrs)</p>
	 							</div>
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 									
	 								<div class="product-btns">
	 									<a href="" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
		</div>
		<div class="col-lg-3 indexcard">
					<div class="card border-dark bg-light mb-3" id="creativecard">
	 							<div class="card-header bg-transparent border-dark"><a href="#">Helper Name</a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="assets/img/blog-author.jpg" alt=""></a></h5>

	 								<a href="#"><p class="card-text">Helper Designation</p></a>
	 								<p class="card-text time">Full Time (Max 10 hrs)</p>
	 							</div>
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 									
	 								<div class="product-btns">
	 									<a href="" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
		</div>
		<div class="col-lg-3 indexcard">
					<div class="card border-dark bg-light mb-3" id="creativecard">
	 							<div class="card-header bg-transparent border-dark">
	 							<a href="#">Helper Name</a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="assets/img/blog-author.jpg" alt=""></a></h5>

	 								<a href="#"><p class="card-text">Helper Designation</p></a>
	 								<p class="card-text time">Full Time (Max 10 hrs)</p>
	 							</div>
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 								<div class="product-btns">
	 									<a href="" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
		</div>
		<div class="col-lg-3 indexcard">
				<div class="card border-dark bg-light mb-3" id="creativecard">
	 							<div class="card-header bg-transparent border-dark"><a href="#">Helper Name</a></div>
	 							<div class="card-body text-dark">
	 								<h5 class="card-title"> <a href="#">
	 								<img class="proimg" src="assets/img/blog-author.jpg" alt=""></a></h5>
	 								<a href="#"><p class="card-text">Helper Designation</p></a>
	 								<p class="card-text time">Full Time (Max 10 hrs)</p>
	 							</div>
	 							
	 							
	 							<div class="card-footer bg-transparent border-dark d-flex">
	 								
	 								<div class="product-btns">
	 									<a href="" class="btn-small">Contact <i class="fa fa-phone" aria-hidden="true"></i></a>
	 								</div>
	 							</div>
	 						</div>
		</div>

</div>
		</div>
	</div>
    </section>
    
    
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
