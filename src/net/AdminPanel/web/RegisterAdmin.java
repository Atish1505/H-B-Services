package net.AdminPanel.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@MultipartConfig
@WebServlet("/RegisterAdmin") 
public class RegisterAdmin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 
		PrintWriter out = response.getWriter(); 
		HttpSession s = request.getSession();
		
		String name= request.getParameter("name");
		String email= request.getParameter("email");
		String pwd= request.getParameter("password");
		String Confpwd= request.getParameter("confirm-password");

		AdminEntity ae =new AdminEntity(name,email,pwd,Confpwd);
		AdminDao ad = new AdminDao();
		//boolean f=ad.insert(ae);
	
		
	if(ad.insert(ae) == true) {
			
			 //  out.println("<script type=\"text/javascript\">");
		      // out.println("alert('Register Succesful..);");
		       //out.println("location='admin/admin_login.jsp';");
		      // out.println("</script>");
		       
		      response.sendRedirect("admin/admin_login.jsp");
			  System.out.print("data saved");
			//  s.setAttribute("adminObj", ae);
			  
			  System.out.print(ae);
		}
		else{
			//out.println("<script type=\"text/javascript\">");
		    //   out.println("alert('Register failed..);");
		      // out.println("location='admin/admin_login.jsp';");
		       //out.println("</script>");	
		       System.out.print("data saved");
		}

		
	}
	
	
	

}
