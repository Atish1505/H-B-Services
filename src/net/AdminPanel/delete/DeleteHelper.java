package net.AdminPanel.delete;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class DeleteHelper
 */
@WebServlet("/DeleteHelper")
public class DeleteHelper extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteHelper() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession();
		
		try { 
			
			int helperid = Integer.parseInt(request.getParameter("helper_id"));
			
			DeleteHelperDao dao = new DeleteHelperDao();
			
			if(dao.deletehelper(helperid))
			{
				session.setAttribute("Helperdeletesuccessmsg", "Helper Deleted");
				System.out.println(helperid); 
				
			}else
			{
				session.setAttribute("Helperdeletefailmsg", "Something went wrong ,Please Try Again !!! ");				 
			}
		 
			 response.sendRedirect("/HB/WebContent/admin/datatable.jsp"); 
		
		}catch(Exception e)
		{
			e.printStackTrace();
		} 
	} 
	

}
