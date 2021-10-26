package net.AdminPanel.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/adminLogout")
public class AdminLogout extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 

		PrintWriter out = resp.getWriter(); 
		HttpSession s = req.getSession();
		
		try {
			
			   AdminEntity admin =	(AdminEntity)s.getAttribute("adminObj");
			   
			   
			   if(admin != null) {
				   
				   s.removeAttribute("adminObj");
				   System.out.print("admin logOut");
				   resp.sendRedirect("admin/admin_login.jsp");
				   
				   
				   
			   }else {
				   
				   System.out.print(" ");
				   resp.sendRedirect("admin/admin_login.jsp");
			   }
			
			
			
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
	}
	
	  

}
