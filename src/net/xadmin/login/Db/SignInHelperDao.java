package net.xadmin.login.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.xadmin.login.bean.SignInHelper;

public class SignInHelperDao {
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

	public boolean validate (SignInHelper sih) {
		loaddriver(driver);
		Connection con=getConnection();
		boolean status=false;
		String sql="select *from helperreg where email=? and pwd=?";
		PreparedStatement ps;
		try {
			ps=con.prepareStatement(sql);
			
			ps.setString(1,sih.getEmail());
			ps.setString(2, sih.getPwd() );
			ResultSet rs=ps.executeQuery();
			
			status=rs.next();
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return status;
		
	}
		
		

		
	
	

}




