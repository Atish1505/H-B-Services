<%@page import="net.helper.profile.helperEntity"%>
<%@page import="java.util.List"%>
<%@page import="net.helper.profile.HelperDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>H&B Services | Admin</title>
    <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/css/app.min.css">
  <link rel="stylesheet" href="assets/bundles/datatables/datatables.min.css">
  <link rel="stylesheet" href="assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css">
  <!-- Template CSS -->
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


    <%  HelperDao dao = new HelperDao();
         List<helperEntity> list = dao.getAllhelperData();
         
         
         helperEntity help = new helperEntity();
        // System.out.println("img   :"+help.getpPhoto());   
         
         System.out.println("list data " + list); 
         
         for(helperEntity h : list){
        	 
        	 System.out.println("actual data " +h);      
        	 
         }
     
     
     %>
  

      <!-- Main Content -->
      <div class="main-content">
        <section class="section">
      <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Helpers</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped" id="table-1">
                        <thead>
                          <tr>
                            <th class="text-center">
                              #
                            </th>
                            <th>Name</th>
                            <th style="width:70px;">Profile Image</th>
                            <th>Gov. ID</th>
                            <th>Contact No.</th>
                            <th>Email</th>
                            <th>Birth Date</th>
                            <th>Gender</th>
                            <th>Working Area</th>
                            <th>Qualifications</th>
                            <th>Profession</th>
                            <th>Languages</th>
                            <th>Working Hrs.</th>
                            <th>Action</th>
                          </tr>
                        </thead>
                        <tbody>
                         <tr>
                         
                           <%
                    for(helperEntity h : list){ %>
        	 
      
                          <td><%=h.getHpid() %></td>
                          <td><%=h.getFname() %></td>
                           <td>
                              <img alt="image" src="../photos/<%=h.getpPhoto() %>" width="85">
                              </a>
                            </td>
                            <td>
                            <a href="assets/img/users/user-1.png" target="_blank"  data-sub-html="Demo Description">
                              <img alt="image" src="../idcard/<%=h.getIcard() %>" width="105">
                              </a>
                            </td>
                            <td class="align-middle">
                             <%=h.getPhone() %>
                            </td>
                            <td><%=h.getEmail() %></td>
                            <td><%=h.getBdaymonth() %></td>
                            <td><%=h.getGender() %></td>
                            <td><%=h.getAddr2() %></td>
                            <td><%=h.getEducation() %></td>
                            <td><%=h.getCategory() %></td>
                            <td><%=h.getLanguage() %></td>
                            <td><%=h.getWorkhours() %></td>
                         
                            <td>
                            <div class="d-flex">
                              <a href="../DeleteHelper?helper_id=<%=h.getHpid() %>" class="btn btn-icon btn-danger btn-sm" style="margin-right:5px;"><i class="fas fa-times"></i></a>
            		          <a href="#" class="btn btn-icon btn-success btn-sm"><i class="fas fa-check"></i></a>
							</div>
                         </tr>
                        <%} %>
                                                   
                        </tbody>
                      </table>
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
  <script src="assets/bundles/datatables/datatables.min.js"></script>
  <script src="assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <script src="assets/bundles/jquery-ui/jquery-ui.min.js"></script>
  <script src="assets/bundles/apexcharts/apexcharts.min.js"></script>
  <!-- Page Specific JS File -->
  <script src="assets/js/page/index.js"></script>
    <!-- Page Specific JS File -->
    <script src="assets/js/page/datatables.js"></script>
  <script src="assets/js/page/light-gallery.js"></script>
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="assets/js/custom.js"></script>

</body>
</html>