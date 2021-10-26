package net.AdminPanel.web;

public class CustomerEntity {
	
	private int id;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	private String name;
	private String email;
	private String contact;
	private String pass;
	private String looking;
	
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
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPass() {
		return pass;
	}
	public void setPass(String pass) {
		this.pass = pass;
	}
	public String getLooking() {
		return looking;
	}
	public void setLooking(String looking) {
		this.looking = looking;
	}
	public CustomerEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "CustomerEntity [name=" + name + ", email=" + email + ", contact=" + contact + ", pass=" + pass
				+ ", looking=" + looking + "]";
	}
	public CustomerEntity(String email, String pass) {
		super();
		this.email = email;
		this.pass = pass;
	}
	
	
	

}
