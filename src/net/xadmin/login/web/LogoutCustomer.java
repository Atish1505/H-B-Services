package net.xadmin.login.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/customerLogout")
public class LogoutCustomer extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 
		PrintWriter out = resp.getWriter();
		
		 HttpSession s = req.getSession();
		 s.removeAttribute("customerData");
		
		  out.println("<script type=\"text/javascript\">");
		  
		  out.println("alert('Logout Successful');");
		  
		  out.println("location ='index.jsp';"); out.println("</script>");
		
	} 
	
	

}
