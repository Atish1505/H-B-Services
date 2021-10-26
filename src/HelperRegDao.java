import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class HelperRegDao {
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
	
	public String insert(HelperMember hm) {
		loaddriver(driver);
		Connection con=getConnection();
		String result = "registration Successful..! Go to Login";
		String sql ="insert into helperreg values(?,?,?,?) ";
		
		PreparedStatement ps = null;
		try {
			ps = con.prepareStatement(sql);
			ps.setString(1, hm.getName());
			ps.setString(2,hm.getPhoneno());
			ps.setString(3,hm.getEmail());
			ps.setString(4,hm.getPwd());
			
			ps.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			result ="Registration Failed...! Try Again";
		}
		
		
	
		
		return result;
		
	}


}
