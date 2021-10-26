package net.helper.profile;

import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.*;

import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;

import net.AdminPanel.web.AdminDao;
import net.AdminPanel.web.AdminEntity;

public class HelperDao {
	
	
	//DB CONNECTIVITY
	Connection con=null;			
	 
	public boolean saveHelper(helperEntity h) {
		
		boolean f= false;
		
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			
			String sql="insert into helperprofile(id,name,contact,email,DOB,gender,houseno,streetdetails,city,state,zip,Education,Qualification,category,hobbies,langauges,skill,idcard,photo,workfor,workhrs) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
			PreparedStatement stmt;
			stmt=con.prepareStatement(sql);
			
			stmt.setInt(1, h.getHpid());
			
			stmt.setString(2,h.getFname());
			stmt.setString(3,h.getPhone()); 
			stmt.setString(4,h.getEmail());
			stmt.setString(5,h.getBdaymonth());
			stmt.setString(6,h.getGender());
			stmt.setString(7,h.getAddr1());
			stmt.setString(8,h.getAddr2());
			stmt.setString(9,h.getCity());
			stmt.setString(10,h.getState());
			stmt.setString(11,h.getPin());
			stmt.setString(12,h.getEducation());
			stmt.setString(13,h.getQualification());
			stmt.setString(14,h.getCategory());
			stmt.setString(15,h.getHobbies());
			stmt.setString(16,h.getLanguage());
			stmt.setString(17,h.getSkills());
			stmt.setString(18,h.getIcard());
			stmt.setString(19,h.getpPhoto());
			stmt.setString(20,h.getWorkhours());
			stmt.setString(21,h.getWorkfortime());
			//PrintWriter out=response.getWriter();
			
			stmt.executeUpdate();
			
			/*
			 * if(row>0) {
			 * 
			 * out.println("<script type=\"text/javascript\">");
			 * out.println("alert('Profile Updated..Company will Contact Soon..!!');");
			 * out.println("location='jsprofile.jsp';"); out.println("</script>");
			 * 
			 * } else{ System.out.print("failed"); }
			 */
			f= true;
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
			
		}
		
			
		 
		return f;
		
		
	}
	
	
	public List<helperEntity> getCookhelperData(){
		
		
		List<helperEntity> list = new ArrayList<>();
		
		helperEntity he = null ;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			
			
			String query = "select * from helperprofile where category=? ";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			stmt.setString(1, "Cook" );
			
			ResultSet set = stmt.executeQuery();
			
			while(set.next()) {
				
				he = new helperEntity();
				
				he.setHpid(set.getInt(1));
				
				he.setFname(set.getString(2));
				he.setPhone(set.getString(3));
				he.setEmail(set.getString(4));
				he.setBdaymonth(set.getString(5));
				he.setGender(set.getString(6));
				 
				
				he.setAddr1(set.getString(7));
				he.setAddr2(set.getString(8));
				he.setCity(set.getString(9));
				he.setState(set.getString(10));
				he.setPin(set.getString(11)); 
				
				he.setEducation(set.getString(12));
				he.setQualification(set.getString(13));
				he.setCategory(set.getString(14));
				he.setHobbies(set.getString(15));
				he.setLanguage(set.getString(16));
				he.setSkills(set.getString(17));
				
				
				he.setIcard(set.getString(18));
				he.setpPhoto(set.getString(19));
				he.setWorkhours(set.getString(21));
				he.setWorkfortime(set.getString(20));
				 
				list.add(he);  
				
				
				
			} 
			
		}catch(Exception e){
			e.printStackTrace();
		} 
		
		
		return list;
		
	}
	
	
	
	// Maids
	
    public List<helperEntity> getMaidhelperData(){
		
		List<helperEntity> list = new ArrayList<>();
		
		helperEntity he = null ;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			
			
			String query = "select * from helperprofile where category=? ";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			stmt.setString(1, "Maid" );
			
			ResultSet set = stmt.executeQuery();
			
			while(set.next()) {
				
				he = new helperEntity();
				
                he.setHpid(set.getInt(1));
				
				he.setFname(set.getString(2));
				he.setPhone(set.getString(3));
				he.setEmail(set.getString(4));
				he.setBdaymonth(set.getString(5));
				he.setGender(set.getString(6));
				
				
				
				he.setAddr1(set.getString(7));
				he.setAddr2(set.getString(8));
				he.setCity(set.getString(9));
				he.setState(set.getString(10));
				he.setPin(set.getString(11));
				
				
				he.setEducation(set.getString(12));
				he.setQualification(set.getString(13));
				he.setCategory(set.getString(14));
				he.setHobbies(set.getString(15));
				he.setLanguage(set.getString(16));
				he.setSkills(set.getString(17));
				
				
				he.setIcard(set.getString(18));
				he.setpPhoto(set.getString(19));
				he.setWorkhours(set.getString(21));
				he.setWorkfortime(set.getString(20));
				 
				list.add(he);  
						
			
			 
				
			} 
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		
		return list;
		
	}
	
	//Drivers
public List<helperEntity> getDriverhelperData(){
	
	List<helperEntity> list = new ArrayList<>();
	
	helperEntity he = null ;
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
		
		
		String query = "select * from helperprofile where category=? ";
		PreparedStatement stmt;
		stmt=con.prepareStatement(query);
		stmt.setString(1, "Driver" );
		
		ResultSet set = stmt.executeQuery();
		
		while(set.next()) {
			
			he = new helperEntity();
			
			he.setHpid(set.getInt(1));
			
			he.setFname(set.getString(2));
			he.setPhone(set.getString(3));
			he.setEmail(set.getString(4));
			he.setBdaymonth(set.getString(5));
			he.setGender(set.getString(6));
			
			
			
			he.setAddr1(set.getString(7));
			he.setAddr2(set.getString(8));
			he.setCity(set.getString(9));
			he.setState(set.getString(10));
			he.setPin(set.getString(11));
			
			
			he.setEducation(set.getString(12));
			he.setQualification(set.getString(13));
			he.setCategory(set.getString(14));
			he.setHobbies(set.getString(15));
			he.setLanguage(set.getString(16));
			he.setSkills(set.getString(17));
			
			
			he.setIcard(set.getString(18));
			he.setpPhoto(set.getString(19));
			he.setWorkhours(set.getString(21));
			he.setWorkfortime(set.getString(20));
			 
			list.add(he);  
				
			
			
		}
		
		
		
		
		
		
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	
	return list;
	
}


//Nannies
public List<helperEntity> getNannieshelperData(){
	
	List<helperEntity> list = new ArrayList<>();
	
	helperEntity he = null ;
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
		
		
		String query = "select * from helperprofile where category=? ";
		PreparedStatement stmt;
		stmt=con.prepareStatement(query);
		stmt.setString(1, "Nanni" );
		
		ResultSet set = stmt.executeQuery();
		
		while(set.next()) {
			
			he = new helperEntity();
			
			he.setHpid(set.getInt(1));
			
			he.setFname(set.getString(2));
			he.setPhone(set.getString(3));
			he.setEmail(set.getString(4));
			he.setBdaymonth(set.getString(5));
			he.setGender(set.getString(6));
			
			
			
			he.setAddr1(set.getString(7));
			he.setAddr2(set.getString(8));
			he.setCity(set.getString(9));
			he.setState(set.getString(10));
			he.setPin(set.getString(11));
			
			
			he.setEducation(set.getString(12));
			he.setQualification(set.getString(13));
			he.setCategory(set.getString(14));
			he.setHobbies(set.getString(15));
			he.setLanguage(set.getString(16));
			he.setSkills(set.getString(17));
			
			
			he.setIcard(set.getString(18));
			he.setpPhoto(set.getString(19));
			he.setWorkhours(set.getString(21));
			he.setWorkfortime(set.getString(20));
			 
			list.add(he);  
				
			
		}
		
		
		
		
		
		
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	
	return list;
	
}

//Watchman

public List<helperEntity> getWatchmanhelperData(){
	
	List<helperEntity> list = new ArrayList<>();
	
	helperEntity he = null ;
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
		
		
		String query = "select * from helperprofile where category=? ";
		PreparedStatement stmt;
		stmt=con.prepareStatement(query);
		stmt.setString(1, "Watchman" );
		
		ResultSet set = stmt.executeQuery();
		
		while(set.next()) {
			
			he = new helperEntity();
			
			he.setHpid(set.getInt(1));
			
			he.setFname(set.getString(2));
			he.setPhone(set.getString(3));
			he.setEmail(set.getString(4));
			he.setBdaymonth(set.getString(5));
			he.setGender(set.getString(6));
			
			
			
			he.setAddr1(set.getString(7));
			he.setAddr2(set.getString(8));
			he.setCity(set.getString(9));
			he.setState(set.getString(10));
			he.setPin(set.getString(11));
			
			
			he.setEducation(set.getString(12));
			he.setQualification(set.getString(13));
			he.setCategory(set.getString(14));
			he.setHobbies(set.getString(15));
			he.setLanguage(set.getString(16));
			he.setSkills(set.getString(17));
			
			
			he.setIcard(set.getString(18));
			he.setpPhoto(set.getString(19));
			he.setWorkhours(set.getString(21));
			he.setWorkfortime(set.getString(20));
			 
			list.add(he);  
				
			
			
		}
		
		
		
		
		
		
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	
	return list;
	
}


//Labours

public List<helperEntity> getLabourhelperData(){
	
	List<helperEntity> list = new ArrayList<>();
	
	helperEntity he = null ;
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
		
		
		String query = "select * from helperprofile where category=? ";
		PreparedStatement stmt;
		stmt=con.prepareStatement(query);
		stmt.setString(1, "Labour" );
		
		ResultSet set = stmt.executeQuery();
		
		while(set.next()) {
			
			he = new helperEntity();
			
			he.setHpid(set.getInt(1));
			
			he.setFname(set.getString(2));
			he.setPhone(set.getString(3));
			he.setEmail(set.getString(4));
			he.setBdaymonth(set.getString(5));
			he.setGender(set.getString(6));
			
			
			
			he.setAddr1(set.getString(7));
			he.setAddr2(set.getString(8));
			he.setCity(set.getString(9));
			he.setState(set.getString(10));
			he.setPin(set.getString(11));
			
			
			he.setEducation(set.getString(12));
			he.setQualification(set.getString(13));
			he.setCategory(set.getString(14));
			he.setHobbies(set.getString(15));
			he.setLanguage(set.getString(16));
			he.setSkills(set.getString(17));
			
			
			he.setIcard(set.getString(18));
			he.setpPhoto(set.getString(19));
			he.setWorkhours(set.getString(21));
			he.setWorkfortime(set.getString(20));
			 
			list.add(he);  
				
			
			
		}
		
		
		
		
		
		
		
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	
	return list;
	
}











	// all
	
public List<helperEntity> getAllhelperData(){
		
		List<helperEntity> list = new ArrayList<>();
		
		helperEntity he = null ;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			
			
			String query = "select * from helperprofile";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			//stmt.setString(1, "Cook" );
			
			ResultSet set = stmt.executeQuery();
			
			while(set.next()) {
				
				he = new helperEntity();
			 
				
				//
				
                he.setHpid(set.getInt(1));
				
				he.setFname(set.getString(2));
				he.setPhone(set.getString(3));
				he.setEmail(set.getString(4));
				he.setBdaymonth(set.getString(5));
				he.setGender(set.getString(6));
				
				
				
				he.setAddr1(set.getString(7));
				he.setAddr2(set.getString(8));
				he.setCity(set.getString(9));
				he.setState(set.getString(10));
				he.setPin(set.getString(11));
				
				
				he.setEducation(set.getString(12));
				he.setQualification(set.getString(13));
				he.setCategory(set.getString(14));
				he.setHobbies(set.getString(15));
				he.setLanguage(set.getString(16));
				he.setSkills(set.getString(17));
				
				
				he.setIcard(set.getString(18));
				he.setpPhoto(set.getString(19));
				he.setWorkhours(set.getString(21));
				he.setWorkfortime(set.getString(20));
				 
				list.add(he);  
					
				
				
			}
			
			
			
			
			
			
			
			
		}catch(Exception e){
			e.printStackTrace();
		}
		
		
		
		return list;
		
	}

/* @MultipartConfig
@WebServlet("/HelperProfile")
String name= request.getParameter("name");
String email= request.getParameter("email");
String pwd= request.getParameter("pwd");
String Confpwd= request.getParameter("Confpwd");

AdminEntity ae =new AdminEntity(name,email,pwd,Confpwd);
AdminDao ad = new AdminDao();
String result=ad.insert(ae);
response.getWriter().print(result); */



// get helper data by id

   public helperEntity getHelperDatabyID(int hid){
	
	//List<helperEntity> list = new ArrayList<>();
	
	helperEntity he = null ;
	
	try
	{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
		
		
		String query = "select * from helperprofile where id=?";
		PreparedStatement stmt;
		stmt=con.prepareStatement(query);
		stmt.setInt(1, hid);
		
		ResultSet set = stmt.executeQuery();
		
		while(set.next()) {
			
			he = new helperEntity();
		 
			
			//
			
            he.setHpid(set.getInt(1));
			
			he.setFname(set.getString(2));
			he.setPhone(set.getString(3));
			he.setEmail(set.getString(4));
			he.setBdaymonth(set.getString(5));
			he.setGender(set.getString(6));
			
			
			
			he.setAddr1(set.getString(7));
			he.setAddr2(set.getString(8));
			he.setCity(set.getString(9));
			he.setState(set.getString(10));
			he.setPin(set.getString(11));
			
			
			he.setEducation(set.getString(12));
			he.setQualification(set.getString(13));
			he.setCategory(set.getString(14));
			he.setHobbies(set.getString(15));
			he.setLanguage(set.getString(16));
			he.setSkills(set.getString(17));
			
			
			he.setIcard(set.getString(18));
			he.setpPhoto(set.getString(19));
			he.setWorkhours(set.getString(21));
			he.setWorkfortime(set.getString(20));
			  
			
			
		} 
		
		
	}catch(Exception e){
		e.printStackTrace();
	}
	
	
	
	return he;
	
}
 

}
