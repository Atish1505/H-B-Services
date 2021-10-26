
public class CustomerMember {
	private  String fname;
	private String email;
	private  String phoneno;
	private  String password;
	private String Lookfor;
	
	public CustomerMember() {
		super();
	}

	public CustomerMember(String fname, String email, String phoneno,String password,String Lookfor) {
		super();
		 this.fname = fname;
		 this.email = email;
		 this.phoneno = phoneno;
		 this.password = password;
		 this.Lookfor=Lookfor;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getLookfor() {
		return Lookfor;
	}

	public void setLookfor(String lookfor) {
		Lookfor = lookfor;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
	
	
	
	
}
