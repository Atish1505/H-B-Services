package net.xadmin.login.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import net.AdminPanel.web.CustomerEntity;
import net.xadmin.login.Db.SignInCustomerDao;
import net.xadmin.login.Db.SignInHelperDao;
import net.xadmin.login.bean.SignInCustomer;
import net.xadmin.login.bean.SignInHelper;

/**
 * Servlet implementation class LoginCustomerServlet
 */
@WebServlet("/SignInCustomer")
public class LoginCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginCustomerServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		
		//SignInCustomer sih = new SignInCustomer();
		CustomerEntity sih =new CustomerEntity();

		sih.setEmail(email);
		sih.setPass(pwd);

		SignInCustomerDao sihd = new SignInCustomerDao();
		CustomerEntity c = sihd.validate(sih);
		
		if (c!=null) {

			
			  out.println("<script type=\"text/javascript\">");
			  
			  out.println("alert('Login Successful');");
			  
			  out.println("location ='index.jsp';"); out.println("</script>");
			  
			  System.out.print("Cookie data 2 "+c);
			  
			  //Cookie ck=new Cookie("customer","c");//creating cookie object
			  //System.out.print("Cookie data "+ck);
			  //response.addCookie(ck);
			  HttpSession s = request.getSession();
			  s.setAttribute("customerData", c);
			
		} else {
			out.println("<script type=\"text/javascript\">");
			out.println("alert('User or password incorrect');");
			out.println("location='LoginHelper.jsp';");
			out.println("</script>");
		}

	}

}
