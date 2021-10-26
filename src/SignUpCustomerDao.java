import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class SignUpCustomerDao {

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
	
	public String insert(CustomerMember cm) {
		loaddriver(driver);
		Connection con=getConnection();
		String result ="Registered Successfull..!!";
		String sql ="insert into signupcustomer values(?,?,?,?,?) ";
		
		PreparedStatement ps;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, cm.getFname());
			ps.setString(2,cm.getEmail());
			ps.setString(3,cm.getPhoneno());
			ps.setString(4,cm.getPassword());
			ps.setString(5,cm.getLookfor());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result =" Not Registered";
		}
		
		
	
		
		return result;
		
	}
}
	
