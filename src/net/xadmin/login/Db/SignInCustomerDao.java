package net.xadmin.login.Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import net.AdminPanel.web.CustomerEntity;
import net.xadmin.login.bean.SignInCustomer;
import net.xadmin.login.bean.SignInHelper;

public class SignInCustomerDao {
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

	public CustomerEntity validate (CustomerEntity sih) {
		
		loaddriver(driver);
		Connection con=getConnection();
		//boolean status=false;
		 
		CustomerEntity c = null;
		
		String sql="select *from signupcustomer where email=? and password=?";
		PreparedStatement ps;
		try {
			
			ps=con.prepareStatement(sql);
			
			ps.setString(1,sih.getEmail());
			ps.setString(2, sih.getPass() );
			ResultSet set=ps.executeQuery();
			
			//status=rs.next();
			
			while(set.next()) {
				
				c = new CustomerEntity();

				//c.setId(set.getInt(1)); 
				c.setName(set.getString(1));
				c.setEmail(set.getString(2));
				c.setContact(set.getString(3));
				c.setLooking(set.getString(5));
				c.setPass(set.getString(4));
				 	
			}
			
			
		}catch(SQLException e) {
			e.printStackTrace();
		}
		
		
		return c;
		
	} 

}




