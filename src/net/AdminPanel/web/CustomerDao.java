package net.AdminPanel.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CustomerDao {
	//DB CONNECTIVITY
			Connection con=null;			
			
		
		
		public List<CustomerEntity> getCustomerDetails()
		{

			List<CustomerEntity> list = new ArrayList<>();
			
			CustomerEntity he = null ;
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
				
				
				String query = "select * from  signupcustomer ";
				PreparedStatement stmt;
				stmt=con.prepareStatement(query);
				//stmt.setString(1, "Cook" );
				
				ResultSet set = stmt.executeQuery();
				
				while(set.next()) {
					
					he = new CustomerEntity();
					
					he.setName(set.getString(1));				
					he.setEmail(set.getString(2));
					he.setContact(set.getString(3));
					he.setPass(set.getString(4)); 
					he.setLooking(set.getNString(5));
					 				 
					list.add(he);  
					
					
					
				} 
				
			}catch(Exception e){
				e.printStackTrace();
			}
			 
			return list;
		
			

		}
}
