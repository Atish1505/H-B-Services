package net.AdminPanel.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/LoginAdmin")

public class AdminLogin extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		PrintWriter out = resp.getWriter(); 
		HttpSession s = req.getSession();
		
		 		
		try {
			
			//String name= request.getParameter("name");
			String email= req.getParameter("email");
			String pwd= req.getParameter("password");
			//String Confpwd= request.getParameter("confirm-password");

			AdminEntity ae =new AdminEntity();
			ae.setEmail(email);
			ae.setPwd(pwd);
			AdminDao ad = new AdminDao();
			
		   AdminEntity admin =	ad.getAdmin(email, pwd);
		   
		   
		   if(admin != null) {
			   
			   System.out.print("admin loggedin");
			   resp.sendRedirect("admin/index.jsp");
			   
			   s.setAttribute("adminObj", admin);
			   
			   
		   }else {
			   
			   System.out.print("login failed");
			   resp.sendRedirect("admin/admin_login.jsp");
		   }

		}catch(Exception e) {
			e.printStackTrace();
		}
		 
		 
	} 
}
