package net.helper.profile;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 * Servlet implementation class HelperProfile
 * 
 */
@MultipartConfig
@WebServlet("/HelperProfile")
public class HelperProfile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelperProfile() {
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
	
		System.out.println("in Do post");
		
		PrintWriter out=response.getWriter();
		
		String fname= request.getParameter("fname");
		String phone= request.getParameter("phone");
		String email= request.getParameter("email");
		String bdaymonth= request.getParameter("bdaymonth");
		String gender= request.getParameter("gender");
		String addr1= request.getParameter("addr1");
		String addr2= request.getParameter("addr2");
		String city= request.getParameter("city");
		String state= request.getParameter("state");
		String pin= request.getParameter("pin");
		String education= request.getParameter("education");
		String qualification= request.getParameter("qualification");
		String category= request.getParameter("category");
		String hobbies= request.getParameter("hobbies");
		String langauge= request.getParameter("langauge");
		String skill= request.getParameter("skill");
		String workfor= request.getParameter("workfor");
		String workhrs= request.getParameter("workhrs");
		
		
		Part file1 = request.getPart("idcard");
		String imageFilename1=file1.getSubmittedFileName();
		
		
		/*
		 * System.out.println("selected image :"+imageFilename1); String
		 * UploadPath1="D:/HB/idcards/"+imageFilename1;
		 * System.out.println("Upload Path :"+UploadPath1);
		 */
		
		String path = request.getRealPath("")+"idcard"+File.separator+file1.getSubmittedFileName();
		

		try
		{    
		FileOutputStream fos1=new FileOutputStream(path);
		InputStream is1=file1.getInputStream();  
		byte[] data1 =new byte[is1.available()];
		is1.read(data1);
		fos1.write(data1);
		fos1.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		// second image 
		
		Part file2 = request.getPart("photo");
		String imageFilename2=file2.getSubmittedFileName();
		System.out.println("selected image :"+imageFilename2);
		//String UploadPath2="D:/HB/photos/"+imageFilename2;
		//System.out.println("Upload Path :"+UploadPath2);   
	
		@SuppressWarnings("deprecation")
		String path2 = request.getRealPath("")+"photos"+File.separator+file2.getSubmittedFileName();
		
		
		try
		{
		FileOutputStream fos2=new FileOutputStream(path2);
		InputStream is2=file2.getInputStream();
		byte[] data2 =new byte[is2.available()];
		is2.read(data2);
		fos2.write(data2);
		fos2.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
		
		//System.out.println(request.getServletContext().getRealPath(""));  
		
		
		
		helperEntity h = new helperEntity(fname, phone, email, bdaymonth, gender, addr1, addr2, city, state, pin, education, qualification, category, hobbies, langauge,skill,  file1.getSubmittedFileName(),file2.getSubmittedFileName(),workfor,workhrs);
		 
		  
		
		  
		
		
		//DB CONNECTIVITY
		/* Connection con=null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			String sql="insert into helperprofile(name,contact,email,DOB,gender,houseno,streetdetails,city,state,zip,Education,Qualification,category,hobbies,langauges,skill,idcard,photo,workfor,workhrs) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt;
			stmt=con.prepareStatement(sql);
			stmt.setString(1,fname);
			stmt.setString(2,phone);
			stmt.setString(3,email);
			stmt.setString(4,bdaymonth);
			stmt.setString(5,gender);
			stmt.setString(6,addr1);
			stmt.setString(7,addr2);
			stmt.setString(8,city);
			stmt.setString(9,state);
			stmt.setString(10,pin);
			stmt.setString(11,education);
			stmt.setString(12,qualification);
			stmt.setString(13,category);
			stmt.setString(14,hobbies);
			stmt.setString(15,langauge);
			stmt.setString(16,skill);
			stmt.setString(17,imageFilename1);
			stmt.setString(18,imageFilename2);
			stmt.setString(19,workfor);
			stmt.setString(20,workhrs);
			PrintWriter out=response.getWriter();
			
			int row=stmt.executeUpdate();
			
			if(row>0) {
			
				out.println("<script type=\"text/javascript\">");
			       out.println("alert('Profile Updated..Company will Contact Soon..!!');");
			       out.println("location='jsprofile.jsp';");
			       out.println("</script>");		
				
			}
			else{
				System.out.print("failed");
			}
			
			
			
		}catch(Exception e) {
			System.out.println(e);
			
		}
		
		
		
		
		*/
		
		
		
		HelperDao dao = new HelperDao();
		boolean t = dao.saveHelper(h);
		
		if(t == true) {
			
			out.println("<script type=\"text/javascript\">");
		       out.println("alert('Profile Updated..Company will Contact Soon..!!');");
		       out.println("location='jsprofile.jsp';");
		       out.println("</script>");		
			
		}
		else{
			System.out.print("failed");
		}
		
				
		
		// selecting worker
		
		 
	}

}
