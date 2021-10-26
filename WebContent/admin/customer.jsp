<%@page import="net.AdminPanel.web.CustomerEntity"%>
<%@page import="java.util.List"%>
<%@page import="net.AdminPanel.web.CustomerDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>H&B Services | Admin</title>
  <!-- General CSS Files -->
  <link rel="stylesheet" href="assets/css/app.min.css">
  <!-- Template CSS -->
    <link rel="stylesheet" href="assets/bundles/datatables/datatables.min.css">
  <link rel="stylesheet" href="assets/bundles/datatables/DataTables-1.10.16/css/dataTables.bootstrap4.min.css">
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
   CustomerDao dao = new CustomerDao();
   List<CustomerEntity>   list = dao.getCustomerDetails();

%>




 <!-- Main Content -->
      <div class="main-content">
        <section class="section">
	<div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-header">
                    <h4>Customers</h4>
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-striped table-hover" id="tableExport" style="width:100%;">
                        <thead>
                          <tr>
                            <th>Name</th>
        
                            <th>Email</th>
                             <th>Contact</th>
        
                            <th>Password</th>
                             <th>Looking for</th>
        
                            
                          </tr>
                        </thead>
                        <tbody>
                        <%
                           for(CustomerEntity c : list){
                        %>
                        
                        
                        
                          <tr>
                            <td><%=c.getName() %></td>
                            <td><%=c.getEmail() %></td>
                            <td><%=c.getContact() %></td>
                            <td> <%=c.getPass() %>  </td>
                            <td> <%=c.getLooking() %>  </td>
                          </tr>
                          
                          <%} %>
                          <!-- <tr>
                            <td>Garrett Winters</td>
                            <td>+91 7843236732</td>
                            <td>example@hotmail.com</td>
                          </tr>
                          <tr>	
                            <td>Ashton Cox</td>
                            <td>+91 7843236732</td>
                            <td>example@hotmail.com</td>
                          </tr>
                          <tr>
                            <td>Cedric Kelly</td>
                            <td>+91 7843236732</td>
                            <td>example@hotmail.com</td>
                          </tr> -->
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
  <script src="assets/bundles/apexcharts/apexcharts.min.js"></script>
  <!-- Page Specific JS File -->
    <script src="assets/bundles/datatables/datatables.min.js"></script>
  <script src="assets/bundles/datatables/DataTables-1.10.16/js/dataTables.bootstrap4.min.js"></script>
  <script src="assets/bundles/datatables/export-tables/dataTables.buttons.min.js"></script>
  <script src="assets/bundles/datatables/export-tables/buttons.flash.min.js"></script>
  <script src="assets/bundles/datatables/export-tables/jszip.min.js"></script>
  <script src="assets/bundles/datatables/export-tables/pdfmake.min.js"></script>
  <script src="assets/bundles/datatables/export-tables/vfs_fonts.js"></script>
  <script src="assets/bundles/datatables/export-tables/buttons.print.min.js"></script>
  <script src="assets/js/page/datatables.js"></script>
  <script src="assets/js/page/index.js"></script>
  <!-- Template JS File -->
  <script src="assets/js/scripts.js"></script>
  <!-- Custom JS File -->
  <script src="assets/js/custom.js"></script>

</body>
</html>