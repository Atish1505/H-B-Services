package net.AdminPanel.web;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import net.helper.profile.helperEntity;

public class ContactDao {
	
	//DB CONNECTIVITY
		Connection con=null;			
		
	
	
	public List<ContactEntity> getContactDetails()
	{

		List<ContactEntity> list = new ArrayList<>();
		
		ContactEntity he = null ;
		
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/hb","root","");
			
			
			String query = "select * from  contact ";
			PreparedStatement stmt;
			stmt=con.prepareStatement(query);
			//stmt.setString(1, "Cook" );
			
			ResultSet set = stmt.executeQuery();
			
			while(set.next()) {
				
				he = new ContactEntity();
				
				he.setName(set.getString(1));				
				he.setEmail(set.getString(2));
				he.setSubject(set.getString(3));
				he.setMsg(set.getString(4)); 
				
				 				 
				list.add(he);  
				
				
				
			} 
			
		}catch(Exception e){
			e.printStackTrace();
		}
		 
		return list;
	
		
	}

}
