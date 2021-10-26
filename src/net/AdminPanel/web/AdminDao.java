package net.AdminPanel.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminDao {
	private String url="jdbc:mysql://localhost:3306/hb";
	private String user="root";
	private String pass="";
	private String driver="com.mysql.cj.jdbc.Driver";
	
	public void loaddriver(String driver) {
		try {
			Class.forName(driver);
		}catch(ClassNotFoundException e) {
			e.printStackTrace();
		}
		
	}
	
	public Connection getConnection() {
		Connection con=null;
		try {
			con=DriverManager.getConnection(url,user,pass);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return con;
		
	}
	
	public boolean insert(AdminEntity ae) {
		
		loaddriver(driver);
		Connection con=getConnection();
		//String result ="data entered success..!";
		boolean f =false;
		
		String sql ="insert into registeradmin(id,name,email,password,confirmpass) values(?,?,?,?,?) ";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			
			ps.setInt(1, ae.getId());
			ps.setString(2, ae.getName());
			ps.setString(3,ae.getEmail());
			ps.setString(4,ae.getPwd());
			ps.setString(5,ae.getConfpwd());
			
			ps.executeUpdate();
			f = true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			//result ="data not entered.!";
		} 
		return f;
		
	}
	
	
	
	public AdminEntity getAdmin(String mail, String pass) {
		
		AdminEntity a = null;
		
		loaddriver(driver);
		Connection con=getConnection();
		
		
		
       String sql ="select * from registeradmin where email=? and password=? ";
		  
		 
		try {
			
			PreparedStatement ps = null;
			ps = con.prepareStatement(sql);	   		 
			 
			ps.setString(1,mail);
			ps.setString(2,pass); 
			
			ResultSet set =  ps.executeQuery();
			
			while(set.next()) {
				
				a = new AdminEntity();
				
				a.setId(set.getInt(1));
				a.setName(set.getString(2));
				a.setEmail(set.getString(3));
				a.setPwd(set.getString(4));
				a.setConfpwd(set.getString(5));				
				 
				
			}
			
			 
		} catch (SQLException e) {
		 
			e.printStackTrace();
			//result ="data not entered.!";
		} 
		
		return a;
		
	}


}
