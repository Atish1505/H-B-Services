
public class HelperMember {

	private  String name;
	private  String phoneno;
	private  String email;
	private  String pwd;
	
	public HelperMember() {
		super();
	}

	public HelperMember(String name, String phoneno, String email,String pwd) {
		super();
		this.name = name;
		this.phoneno = phoneno;
		this.email = email;
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhoneno() {
		return phoneno;
	}

	public void setPhoneno(String phoneno) {
		this.phoneno = phoneno;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	
	
		
}
