package net.AdminPanel.delete;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

public class DeleteHelperDao {
	//DB CONNECTIVITY
		Connection con=null;			
		 
		public  boolean deletehelper(int helperid) {
			
			boolean f= false;
			
			try {
				
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
				
				String sql="delete from helperprofile where id=?";
				PreparedStatement stmt;
				stmt=con.prepareStatement(sql);
				
				stmt.setInt(1, helperid);
				int i=stmt.executeUpdate();
				
				if(i>0) {
				f= true;
				}
				
				
			}catch(Exception e) {
				e.printStackTrace();
				
			}
			return f;
			
				
			 
		

		}}
