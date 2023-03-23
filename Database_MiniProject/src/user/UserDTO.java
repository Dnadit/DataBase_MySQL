package user;

import java.util.Date;

public class UserDTO {
	private String uid;
	private String uname;
	private String email;
	private Date rdate;
	
	public UserDTO() {
		// TODO Auto-generated constructor stub
	}

	public UserDTO(String uid, String uname, String email) {
		super();
		this.uid = uid;
		this.uname = uname;
		this.email = email;
		this.rdate = new Date();
	}

	public String getUid() {
		return uid;
	}

	public void setUid(String uid) {
		this.uid = uid;
	}

	public String getUname() {
		return uname;
	}

	public void setUname(String uname) {
		this.uname = uname;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Date getRdate() {
		return rdate;
	}

	public void setRdate(Date rdate) {
		this.rdate = rdate;
	}

	@Override
	public String toString() {
		return "UserDTO [uid=" + uid + ", uname=" + uname + ", email=" + email + ", rdate=" + rdate + "]";
	}
	
}
