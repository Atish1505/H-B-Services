package net.helper.profile;

public class helperEntity {
	
	private int hpid;
	private String fname;
	private String phone;
	private String email;
	private String bdaymonth;
	private String gender;
	private String addr1;
	private String addr2;
	private String city;
	private String state;
	private String pin;
	private String education ;
	private String qualification;
	private String category;
	private String hobbies;
	private String language;
	private String skills;
	private String icard;
	private String pPhoto;
	private String workfortime;
	private String workhours;
	
	
	public int getHpid() {
		return hpid;
	}
	public void setHpid(int hpid) {
		this.hpid = hpid;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getBdaymonth() {
		return bdaymonth;
	}
	public void setBdaymonth(String bdaymonth) {
		this.bdaymonth = bdaymonth;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAddr1() {
		return addr1;
	}
	public void setAddr1(String addr1) {
		this.addr1 = addr1;
	}
	public String getAddr2() {
		return addr2;
	}
	public void setAddr2(String addr2) {
		this.addr2 = addr2;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getPin() {
		return pin;
	}
	public void setPin(String pin) {
		this.pin = pin;
	}
	public String getEducation() {
		return education;
	}
	public void setEducation(String education) {
		this.education = education;
	}
	public String getQualification() {
		return qualification;
	}
	public void setQualification(String qualification) {
		this.qualification = qualification;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getHobbies() {
		return hobbies;
	}
	public void setHobbies(String hobbies) {
		this.hobbies = hobbies;
	}
	public String getLanguage() {
		return language;
	}
	public void setLanguage(String language) {
		this.language = language;
	}
	public String getSkills() {
		return skills;
	}
	public void setSkills(String skills) {
		this.skills = skills;
	}
	
	
	
	
	
	/*
	 * public String getImgFile1() { return imgFile1; } public void
	 * setImgFile1(String imgFile1) { this.imgFile1 = imgFile1; }
	 * 
	 * 
	 * public String getImgFile2() { return imgFile2; } public void
	 * setImgFile2(String imgFile2) { this.imgFile2 = imgFile2; }
	 */
	
	
	public String getIcard() {
		return icard;
	}
	public void setIcard(String icard) {
		this.icard = icard;
	}
	public String getpPhoto() {
		return pPhoto;
	}
	public void setpPhoto(String pPhoto) {
		this.pPhoto = pPhoto;
	}
	public String getWorkfortime() {
		return workfortime;
	}
	public void setWorkfortime(String workfortime) {
		this.workfortime = workfortime;
	}
	public String getWorkhours() {
		return workhours;
	}
	public void setWorkhours(String workhours) {
		this.workhours = workhours;
	}
	
	
	
   
	
	 
	
	
	
	@Override
	public String toString() {
		return "helperEntity [hpid=" + hpid + ", fname=" + fname + ", phone=" + phone + ", email=" + email
				+ ", bdaymonth=" + bdaymonth + ", gender=" + gender + ", addr1=" + addr1 + ", addr2=" + addr2
				+ ", city=" + city + ", state=" + state + ", pin=" + pin + ", education=" + education
				+ ", qualification=" + qualification + ", category=" + category + ", hobbies=" + hobbies + ", language="
				+ language + ", skills=" + skills + ", icard=" + icard + ", pPhoto=" + pPhoto + ", workfortime="
				+ workfortime + ", workhours=" + workhours + "]";
	}
	public helperEntity(String fname, String phone, String email, String bdaymonth, String gender, String addr1,
			String addr2, String city, String state, String pin, String education, String qualification,
			String category, String hobbies, String language, String skills, String icard, String pPhoto,
			String workfortime, String workhours) {
		super();
		this.fname = fname;
		this.phone = phone;
		this.email = email;
		this.bdaymonth = bdaymonth;
		this.gender = gender;
		this.addr1 = addr1;
		this.addr2 = addr2;
		this.city = city;
		this.state = state;
		this.pin = pin;
		this.education = education;
		this.qualification = qualification;
		this.category = category;
		this.hobbies = hobbies;
		this.language = language;
		this.skills = skills;
		this.icard = icard;
		this.pPhoto = pPhoto;
		this.workfortime = workfortime;
		this.workhours = workhours;
	}
	public helperEntity() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	 
	
	
	
	
	
	
	

}
