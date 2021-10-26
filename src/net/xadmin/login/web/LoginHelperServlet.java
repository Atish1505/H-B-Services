package net.xadmin.login.web;

import java.io.IOException;
import java.io.PrintWriter;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import net.xadmin.login.Db.SignInHelperDao;
import net.xadmin.login.bean.SignInHelper;

/**
 * Servlet implementation class LoginHelperServlet
 */
@WebServlet("/SignInHelper")
public class LoginHelperServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginHelperServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String email=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		PrintWriter out = response.getWriter();
		SignInHelper sih=new SignInHelper();
		
		sih.setEmail(email);
		sih.setPwd(pwd);
		
		
		SignInHelperDao sihd=new SignInHelperDao();
		if(sihd.validate(sih)) {
			 out.println("<script type=\"text/javascript\">");
			
		       out.println("alert('Login Successful');");
		       
		       out.println("location='jsprofile.jsp';");
		       out.println("</script>");
			
		}
		else {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('User or password incorrect');");
		       out.println("location='LoginHelper.jsp';");
		       out.println("</script>");
		}
		
		
		
	}
}
