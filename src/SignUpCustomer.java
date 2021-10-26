

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class SignUpCustomer
 */
@WebServlet("/SignUpCustomer")
public class SignUpCustomer extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignUpCustomer() {
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
		
		HttpSession s = request.getSession();
		
		String fname= request.getParameter("fname");
		String email= request.getParameter("email");
		String phoneno= request.getParameter("phoneno");
		String password= request.getParameter("pwd");
		String Lookfor=request.getParameter("Lookfor");
		PrintWriter out=response.getWriter();
		
		CustomerMember cm =new CustomerMember(fname,email,phoneno,password,Lookfor);
		SignUpCustomerDao sd = new SignUpCustomerDao();
		String result=sd.insert(cm);
		if(result!=null) {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Register Successful,"
		       		+ "Company will contact Soon');");
		       out.println("location='LoginCustomer.jsp';");
		       out.println("</script>");
		       
		       s.setAttribute("CustomerObj", cm);
			
		}
		else {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Not Registered');");
		       out.println("location='RegCustomer.jsp';");
		       out.println("</script>");
			
		}
	}

}
