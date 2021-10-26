

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RegHelperSevelet
 */
@WebServlet("/SignUpHelper")
public class RegHelperSevelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegHelperSevelet() {
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
		String name= request.getParameter("name");
		String phoneno= request.getParameter("phoneno");
		String email= request.getParameter("email");
		String pwd= request.getParameter("pwd");
		
		PrintWriter out=response.getWriter();
		
		HelperMember hm =new HelperMember(name,phoneno,email,pwd);
		HelperRegDao sd = new 	HelperRegDao();
		String result=sd.insert(hm);
		response.getWriter().print(result);
		if(result!=null) {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Register Successful,"
		       		+ "Company will contact Soon');");
		       out.println("location='LoginHelper.jsp';");
		       out.println("</script>");
			
		}
		else {
			 out.println("<script type=\"text/javascript\">");
		       out.println("alert('Not Registered');");
		       out.println("location='RegHelper.jsp';");
		       out.println("</script>");
			
		}
	}

}
