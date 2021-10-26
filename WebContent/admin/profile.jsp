<%@page import="net.AdminPanel.web.AdminEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>H&B Services | Admin</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/css/app.min.css">
  <!-- Template CSS -->
      <link rel="stylesheet" href="assets/css/app.min.css">
  <link rel="stylesheet" href="assets/bundles/bootstrap-social/bootstrap-social.css">
  <link rel="stylesheet" href="assets/bundles/summernote/summernote-bs4.css">
  <link rel="stylesheet" href="assets/css/style.css">
  <link rel="stylesheet" href="assets/css/components.css">
  <!-- Custom style CSS -->
  <link rel="stylesheet" href="assets/css/custom.css">
  <link rel='shortcut icon' type='image/x-icon' href='assets/img/favicon.ico' />
</head>

<body>

<!-- Coomon header for all files -->
 <jsp:include page="/admin/header.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Header end -->

<!-- Coomon Sidebar for all files -->
 <jsp:include page="/admin/sidebar.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Sidebar end -->

<%
    AdminEntity admin =(AdminEntity)session.getAttribute("adminObj");
    System.out.print(admin); 
   
%>


  <!-- Main Content -->
      <div class="main-content">
        <section class="section">
          <div class="section-body">
            <div class="row mt-sm-4">
              <div class="col-12 col-md-12 col-lg-4">
                <div class="card author-box">
                  <div class="card-body">
                    <div class="author-box-center">
                      <img alt="image" src="assets/img/user.png" class="rounded-circle author-box-picture">
                      <div class="clearfix"></div>
                      <div class="author-box-name">
                        <a href="#"><%=admin.getName() %></a>
                      </div>
                      <div class="author-box-job">Web Developer</div>
                    </div>
                    <div class="text-center">
                      <div class="author-box-description">
                          <p class="clearfix">
                        <span class="float-left">
                          Phone
                        </span>
                        <span class="float-right text-muted">
                          +91 1234567890
                        </span>
                      </p>
                      <p class="clearfix">
                        <span class="float-left">
                           Email 
                        </span>
                        <span class="float-right text-muted">
                          <%=admin.getEmail() %>
                        </span>
                      </p>
                      </div>
                     
                      <div class="w-100 d-sm-none"></div>
                    </div>
                  </div>
                </div>
                </div>
                </div>
                </div>
              
 <!-- Coomon footer for all files -->
 <jsp:include page="/admin/footer.jsp">
        <jsp:param name="firstName" value="Enter First Name" />
        <jsp:param name="lastName" value="Enter Last Name" />
    </jsp:include>

<!-- Footer end -->

<!-- General JS Scripts -->
  <script src="assets/js/app.min.js"></script>
  <!-- JS Libraies -->
  <script src="assets/bundles/apexcharts/apexcharts.min.js"></script>
  <!-- Page Specific JS File -->

  <script src="assets/js/page/index.js"></script>
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="assets/js/custom.js"></script>

</body>
</html>