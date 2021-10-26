import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ContactDao {
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
	
	public String insert(ContactMember cm) {
		loaddriver(driver);
		Connection con=getConnection();
		String result ="data entered success..!";
		String sql ="insert into contact values(?,?,?,?) ";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, ContactMember.getName());
			ps.setString(2,ContactMember.getEmail());
			ps.setString(3,ContactMember.getSubject());
			ps.setString(4,ContactMember.getMsg());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result ="data not entered.!";
		}
		
		
	
		
		return result;
		
	}
	
}
