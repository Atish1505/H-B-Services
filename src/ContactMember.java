
public class ContactMember {
	private static String name;
	private static String email;
	private static String msg;
	private static String Subject;
	
	public ContactMember() {
		super();
	}

	public ContactMember(String name, String email, String msg,String Subject) {
		super();
		ContactMember.name = name;
		ContactMember.email = email;
		ContactMember.msg = msg;
		ContactMember.Subject = Subject;
	}
	
	public static String getName() {
		return name;
	}

	public static String getSubject() {
		return Subject;
	}

	public static void setSubject(String Subject) {
		ContactMember.Subject = Subject;
	}

	public void setName(String name) {
		ContactMember.name = name;
	}

	public static String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		ContactMember.email = email;
	}

	public static String getMsg() {
		return msg;
	}

	public void setMsg(String msg) {
		ContactMember.msg = msg;
	}

	

}
