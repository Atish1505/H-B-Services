<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<meta content="" name="description">
<meta content="" name="keywords">

<!-- Favicons -->
<link href="assets/img/favicon.png" rel="icon">

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Raleway:300,300i,400,400i,500,500i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
	rel="stylesheet">

<!-- Vendor CSS Files -->
<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">
<link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
<link href="assets/vendor/line-awesome/css/line-awesome.min.css"
	rel="stylesheet">
<link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css"
	rel="stylesheet">
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

<style>
.bg-common {
	position: fixed;
	background: rgba(34, 44, 51, 0.6);
}

.aa {
	padding: 10px 0 10px 30px;
	transition: all .2s;
	color: whitesmoke;
}

.aa:hover {
	color: #fff !important;
}

#profilesec .card .card-body .nav i {
	font-size: 25px;
	padding-right: 10px;
}
</style>

		<section id="profilesec">
			<div class="container mt-5 mb-5">
				<div class="row">
					<div class="col-lg-3 col-md-4 d-md-block">
						<div class="card bg-common card-left">
							<div class="card-body">
								<nav class="nav d-md-block d-none">
									<a data-toggle="tab" style="font-weight: normal;"
										class="nav-link active aa" href="#profile"><i
										class="las la-user mr-2" aria-hidden="true"></i>${email.fullname} (${email.email})</a> <a
										data-toggle="tab" style="font-weight: normal;"
										class="nav-link aa" href="#account"><i
										class="las la-cogs mr-1" aria-hidden="true"></i>Account
										setting</a>
										<a  style="font-weight: normal;" class="nav-link aa" href="/logout">
										<i class="las la-sign-out-alt" ></i>Logout</a>
									<!-- <a data-toggle="tab" style="font-weight: normal;"
										class="nav-link aa" href="#address"><i
										class="las la-map-marker mr-2" aria-hidden="true"></i>Addresses</a> -->
								</nav>
							</div>
						</div>
					</div>

					<div class="col-lg-9 col-md-8">
						<div class="card">
							<div class="card-header border-bottom mb-3 d-md-none">
								<ul class="nav nav-tabs card-header-tabs nav-fill">
									<li class="nav-item"><a data-toggle="tab"
										class="nav-link active aaa" href="#profile"><i
											class="fa fa-user mr-1"></i></a></li>
									<li class="nav-item"><a data-toggle="tab"
										class="nav-link aaa" href="#account"><i
											class="fa fa-cogs mr-1"></i></a></li>
									<li class="nav-item"><a data-toggle="tab"
										class="nav-link aaa" href="#address"><i
											class="fa fa-map-marker mr-1"></i></a></li>
									<li class="nav-item"><a data-toggle="tab"
										class="nav-link aaa" href="#card"><i
											class="fa fa-credit-card mr-1"></i></a></li>
								</ul>
							</div>

							<!--user profile-->
							<div class="card-body tab-content border-0">
								<!-- //actual profile start -->
								<div class="tab-pane active" id="profile">
									<h6 style="font-size: 20px; font-weight: bold;">Your
										Profile Information</h6>
									<hr>
									<form  action="HelperProfile" method="post" enctype='multipart/form-data' >
										
												<div class="form-group">
													<label for="exampleInputEmail1">Full Name</label> <input
														type="text" class="form-control" name="fname"
														aria-describedby="firstname" value=""
														placeholder="Enter Full Name"> <small
														class="form-text text-muted">Please enter your
														Full Name</small>
												</div>
											
											
										<div class="row">
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label for="exampleInputEmail1">Contact no</label> <input
														type="text" class="form-control" name="phone"
														id="exampleInputPhone" value="" placeholder="+91">
													<small class="form-text text-muted">Please enter
														your contact no</small>
												</div>
											</div>
											
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label for="exampleInputEmail1">Email</label> <input
														type="email" name="email" class="form-control" id="exampleInputEmail1"
														value="" aria-describedby="emailHelp"
														placeholder="Your Email"> <small
														class="form-text text-muted">Please enter your
														email</small>
												</div>
											</div>
										</div>
										<div class="row" style="margin: 10px 0px;">
											<div class="col-lg-6 col-md-12">
												<div class="form-group" style="margin-bottom: 0px;">
													<label for="exampleInputEmail1">Enter Birth month
														and year:</label> <input type="month" name="bdaymonth">
												</div>
											</div>
											<div class="col-lg-6 col-md-12">
												
												<div class="form-check form-check-inline">
													
							                      <label>Select Gender</label>
							                      <select class="form-control selectric" name="gender" style="padding-top:0px;">
							                        <option>Male</option>
							                        <option>Female</option>
							                        <option>Other</option>
							                        
							                      </select>
							                    </div>
							                    </div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="inputhouse">House No.</label> <input
													name="addr1" type="text" class="form-control" value=""
													id="inputhouse">
											</div>
											<div class="form-group col-md-6">
												<label for="inputstreet">Street Details to Locate
													You</label> <input name="addr2" type="text" class="form-control"
													value="" id="inputstreet">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="inputCity">City</label> <input name="city"
													type="text" class="form-control" value="" id="inputCity">
											</div>
											<div class="form-group col-md-4">
												<label for="inputState">State</label> <select name="state"
													id="inputState" class="form-control">
													<option selected></option>
													<option>Maharastra</option>
												</select>
											</div>
											<div class="form-group col-md-2">
												<label for="inputZip">Zip</label> <input type="text"
													name="pin" value="" class="form-control" id="inputZip">
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Enter Education
														Details</label> <input type="text" class="form-control"
														name="education" aria-describedby="firstname" value=""
														placeholder="Enter Your Qualifications"> <small
														class="form-text text-muted">Please Enter
														Qualifications</small>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Other
														Qualifications</label> <input type="text" class="form-control"
														name="qualification" aria-describedby="firstname" value=""
														placeholder="Enter Your Qualifications" > <small
														class="form-text text-muted">Please Enter
														Qualifications</small>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
							                      <label>Looking For Job</label>
							                      <select class="form-control selectric" name="category" style="padding-top:0px;">
							                        <option>Maid</option>
							                        <option>Cook</option>
							                        <option>Driver</option>
							                        <option>Nanni</option>
							                        <option>Watchman</option>
							                        <option>Labour</option>
							                      </select>
							                    </div>
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label for="exampleInputEmail1">What are Your
														Hobbies</label> <input type="text" class="form-control"
														name="hobbies" aria-describedby="firstname" value=""
														placeholder="Eg. Singing/Drawing..."> <small
														class="form-text text-muted"></small>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Which Languages Do
														you Know</label> <input type="text" class="form-control"
														name="langauge" aria-describedby="firstname" value=""
														placeholder="Eg. Marathi/Hindi..."> <small
														class="form-text text-muted"></small>
												</div>
											</div>
											<div class="col-lg-6">
												<div class="form-group">
													<label for="exampleInputEmail1">Any another your
														skill</label> <input type="text" class="form-control" name="skill"
														aria-describedby="firstname" value=""
														placeholder="Eg. Singing/Drawing..."> <small
														class="form-text text-muted"></small>
												</div>
											</div>
										</div>
										<div class="row">
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="formFileSm" class="form-label">Goverment
														Approved ID</label>
														 <input class="form-control form-control-sm"
														id="formFileSm" type="file"name="idcard" style="height: auto; ">
												</div>
											</div>
											<div class="col-lg-6">
												<div class="mb-3">
													<label for="formFileSm" class="form-label">Select
														Your Photo</label> <input class="form-control form-control-sm"
														id="formFileSm" type="file" name="photo" style="height: auto;">
												</div>
											</div>
										</div>
										

									<div class="row" style="margin: 10px 0px;">
											<div class="col-lg-6 col-md-12">
											
							                      <label>Work for</label>
							                      <select class="form-control selectric" name="workfor" style="padding-top:0px;">
							                       <option>Work for</option>
							                        <option>Part-Time</option>
							                        <option>Full-Time</option>
							                        
							                      </select>
							                    </div>
											</div>
											<div class="col-lg-6 col-md-12">
												<div class="form-group">
													<label for="exampleInputEmail1">Working Hrs.</label> <input
														type="text" class="form-control" name="workhrs"
														id="exampleInputPhone" value="" placeholder="Eg. 8hrs">
													<small class="form-text text-muted">Please enter
														your Working Hrs.</small>
												</div>
											</div>
										
										<button name="update-profile" class="btn btn-outline-info"
											type="submit" value="submit">Update Profile</button>
										<!--<button class="btn btn-outline-info" type="button">Reset Changes</button>-->
								</form>	
								</div>
								
								<!-- //actual profile end -->

								<!-- account setting start -->
								<div class="tab-pane " id="account">
									<h6 style="font-size: 20px; font-weight: bold;">Edit
										Profile</h6>
									<hr>
									<form>
										<!--<div class="mb-3">-->
										<!--  <label for="exampleInputEmail1" class="form-label">User Name</label>-->
										<!--  <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Rahul kumar">-->
										<!--  <small class="form-text text-muted">After changing your username, your old username becomes available for anyone else to claim</small>-->
										<!--</div>-->
										<!--<div class="mb-3">-->
										<!--    <label for="exampleInputEmail1">Contact no</label>-->
										<!--    <input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="999999999">-->
										<!--    <small class="form-text text-muted">Please enter your contact no</small>-->
										<!--</div>-->
									</form>
									<!--<hr>-->
									<form method="post" action="admin/web-script.php">
										<div class="mb-3">
											<label for="exampleInputEmail1" class="form-label">Delete
												account</label>
											<p class="text-muted">Once you delete your account, there
												is no going back, Please be certain.</p>
										</div>
										<button name="delete-account" class="btn btn-danger"
											type="submit">Delete account</button>
									</form>
								</div>
								<!-- account setting end -->

								<!-- address details start 

								<div class="tab-pane" id="address">
									<h6 style="font-size: 20px; font-weight: bold;">Add
										Address</h6>
									<hr>
									<form method="post" action="admin/web-script.php">
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="inputhouse">House No.</label> <input
													name="addr1" type="text" class="form-control" value=""
													id="inputhouse">
											</div>
											<div class="form-group col-md-6">
												<label for="inputstreet">Street Details to Locate
													You</label> <input name="addr2" type="text" class="form-control"
													value="" id="inputstreet">
											</div>
										</div>
										<div class="form-row">
											<div class="form-group col-md-6">
												<label for="inputCity">City</label> <input name="city"
													type="text" class="form-control" value="" id="inputCity">
											</div>
											<div class="form-group col-md-4">
												<label for="inputState">State</label> <select name="state"
													id="inputState" class="form-control">
													<option selected></option>
													<option>Maharastra</option>
												</select>
											</div>
											<div class="form-group col-md-2">
												<label for="inputZip">Zip</label> <input type="text"
													name="pin" value="" class="form-control" id="inputZip">
											</div>
										</div>
										<button name="update-profile" type="submit"
											class="btn btn-primary">Update Address</button>
									</form>
								</div>
								 address details end -->


								<!-- wallet start -->
								<div class="tab-pane" id="card">
									<h6 style="font-size: 20px; font-weight: bold;">Wallets</h6>
									<hr>
									<div class="container demo">


										<div class="panel-group" id="accordion" role="tablist"
											aria-multiselectable="true">

											<div class="panel panel-default">
												<div class="panel-heading" role="tab" id="headingOne">
													<h4 class="panel-title">
														<a role="button" data-toggle="collapse"
															data-parent="#accordion" href="#collapseOne"
															aria-expanded="true" aria-controls="collapseOne"> <i
															class="more-less glyphicon fa fa-plus"></i> <img
															style="width: 40px; height: 40px;" src="img/paytm.png">
														</a>
													</h4>
												</div>
												<div id="collapseOne" class="panel-collapse collapse"
													role="tabpanel" aria-labelledby="headingOne">
													<div class="panel-body">
														<form>
															<div class="form-row">
																<div class="form-group col-lg-6 col-md-10 col-12">
																	<label for="inputno">Phone no</label> <input
																		type="number" class="form-control" id="inputno">
																</div>
															</div>
															<button type="submit" class="btn btn-success">Send
																Otp</button>
														</form>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								<!-- wallet end -->
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

	</main>
	<!-- End #main -->

	<script>
		function toggleIcon(e) {
			$(e.target).prev('.panel-heading').find(".more-less").toggleClass(
					'fa fa-plus fa fa-minus');
		}
		$('.panel-group').on('hidden.bs.collapse', toggleIcon);
		$('.panel-group').on('shown.bs.collapse', toggleIcon);
	</script>


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
