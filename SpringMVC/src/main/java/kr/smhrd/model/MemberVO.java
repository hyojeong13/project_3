
package kr.smhrd.model;

/**
 * @author SMT015
 *
 */
public class MemberVO {

	private String id;
	private String firstname;
	private String lastname;
	private String address;
	private String phone;
	private String pw;
	
	
	public MemberVO(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}

	public MemberVO() {
	}

	
	
	
	public String getId() {
		return id;
	}
	
	public void setId(String id) {
		this.id = id;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}
	public String getLastname() {
		return lastname;
	}
	public void setLastname(String lastname) {
		this.lastname = lastname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}


	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", firstname=" + firstname + ", lastname=" + lastname + ", address=" + address
				+ ", phone=" + phone + ", pw=" + pw + "]";
	}

	
}
