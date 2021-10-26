package net.AdminPanel.web;

public class AdminEntity {
	private int id;
	private String name;
	private String email;
	private String pwd;
	private String Confpwd;
	
	 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public String getConfpwd() {
		return Confpwd;
	}
	public void setConfpwd(String confpwd) {
		Confpwd = confpwd;
	}
	@Override
	public String toString() {
		return "AdminEntity [id=" + id + ", name=" + name + ", email=" + email + ", pwd=" + pwd + ", Confpwd=" + Confpwd
				+ "]";
	}
	public AdminEntity(int id, String name, String email, String pwd, String confpwd) {
		super();
		this.id = id;
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		Confpwd = confpwd;
	}
	public AdminEntity(String name, String email, String pwd, String confpwd) {
		super();
		this.name = name;
		this.email = email;
		this.pwd = pwd;
		Confpwd = confpwd;
	}
	public AdminEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	 
	

}
