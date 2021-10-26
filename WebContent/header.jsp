<%@page import="net.AdminPanel.web.CustomerEntity"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<style>
	
.signin_model .nav-tabs .nav-link{
    border-radius: 0;
    font-weight: 600;
    border-color: #fff;
  }
  
  
  .signin_model .nav-tabs .nav-link.active{
    background-color:lightsteelblue;
  }
  
  .signin_model .nav-tabs .nav-item{
   margin-bottom: 2rem;
   text-align: center;
    width: 50%;
  }
  
  
  .signin_model .nav-tabs .nav-item a:hover{
   color: black;
   }
  
  .signin_model .nav-tabs{
    border-bottom: none;
  }
  
  .login-form{
    padding: 15px;
    margin: auto;
  }
  
  .login-form input.form-control{
    font-size: 15px;
    min-height: 48px;
    font-weight: 500;
  }
  
  .form-control:focus{
    border-color: #7fad39;
    -webkit-box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
  -moz-box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
  box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
  }
  
  .login-form a{
    text-decoration: none;
    color: #000;
  }
  
  .login-form a:hover{
    color: #7fad39;
  }
  
  .login-form .forgot-pass{
    padding-top: 10px;
  }
  
  .btn-custom{
    background: #7fad39;
    border-color: #7fad39;
    color: white;
    font-size: 15px;
    min-height: 48px;
  }
  
  .btn-custom:focus,.btn-custom:hover,
  .btn-custom:active,.btn-custom:active:focus{
      background-color: #7fad39;
      border-color: #7fad39;
      color: #fff;
  }
  
  .btn-custom:focus{
    -webkit-box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
    -moz-box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
    box-shadow: 0px 0px 2px 1px rgba(127,173,57,0.71);
  }
  
  
  
</style>


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
        <%--   <% 
          CustomerMember cm =  (CustomerMember)session.getAttribute("CustomerObj");
          
          System.out.print("obj    :"+cm); 
          
          %> --%>
          
          <%
          //Cookie[] ck = request.getCookies();
          
          CustomerEntity c = (CustomerEntity)session.getAttribute("customerData");
          
         if(c!=null){
        	 
        	 String name=c.getName(); 
        	 %>
          
        
            <li class="drop-down"><a href="#" ><i class="las la-user" style="font-size:21px;"></i> <%=name %></i></a>
                <ul>
                  <li><a href="customerLogout" > Logout </a></li>
                  
                </ul>
          </li>  
          
         <%}else{ %>
        	  
        	   
        	  
        	   <li class="drop-down"><a href="#" >Log In/ Signup</i></a>
                <ul>
                  <li><a href="LoginHelper.jsp"  ><i class="las la-user" style="font-size:21px;"></i> Looking For Job</a></li>
                  <li><a href="LoginCustomer.jsp" ><i class="las la-user" style="font-size:21px;"></i> Want to Hire</a></li>
                </ul>
          </li>  
        	  
        	<%} %>  
          
          
        </ul>
      </nav><!-- .nav-menu -->

    </div>
  </header><!-- End Header -->

<!--  -->
	
	


<script type="text/javascript">
function popupWindow() {
    window.open( "someLinkToBePoppedUp" )
}
</script>
</body>
</html>