<%@page import="net.AdminPanel.web.AdminEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>



<div class="loader"></div>
<div id="app">
  <div class="main-wrapper main-wrapper-1">
    <div class="navbar-bg"></div>

<nav class="navbar navbar-expand-lg main-navbar sticky">
  <div class="form-inline mr-auto">
    <ul class="navbar-nav mr-3">
      <li><a href="#" data-toggle="sidebar" class="nav-link nav-link-lg
            collapse-btn"> <i data-feather="align-justify"></i></a></li>
      <li><a href="#" class="nav-link nav-link-lg fullscreen-btn">
          <i data-feather="maximize"></i>
        </a></li>
      <li>
        
      </li>
    </ul>
  </div>
  <ul class="navbar-nav navbar-right">
  
  <%AdminEntity admin =(AdminEntity)session.getAttribute("adminObj");
  System.out.print(admin);  %>
 
    <li class="dropdown"><a href="#" data-toggle="dropdown"
        class="nav-link dropdown-toggle nav-link-lg nav-link-user"> <img alt="image" src="assets/img/user.png"
          class="user-img-radious-style"> <span class="d-sm-none d-lg-inline-block"></span></a>
      <div class="dropdown-menu dropdown-menu-right pullDown">
        <div class="dropdown-title">Hello <%=admin.getName() %></div> 
        <a href="profile.jsp" class="dropdown-item has-icon"> <i class="far
              fa-user"></i> Profile
        </a> 
        <a href="../index.jsp" class="dropdown-item has-icon"> <i class="fas fa-cog"></i>
          Back To SIte
        </a>
        <div class="dropdown-divider"></div>
        <a href="../adminLogout" class="dropdown-item has-icon text-danger"> <i class="fas fa-sign-out-alt"></i>
          Logout
        </a>
      </div>
    </li>
  </ul>  
</nav>


</body>
</html>