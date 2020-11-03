package kr.smhrd.model;

public class MemberVO {

	//번호 이름 아이디 이메일 전화번호
	
	private int num;
	private String name;
	private String id;
	private String email;
	private String phone;
	
	
	public MemberVO() {
		//디폴트 생성자 만들어줘야함.
	}


	public int getNum() {
		return num;
	}


	public void setNum(int num) {
		this.num = num;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
	}


	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getPhone() {
		return phone;
	}


	public void setPhone(String phone) {
		this.phone = phone;
	}

	//toString
	@Override
	public String toString() {
		return "MemberVO [num=" + num + ", name=" + name + ", id=" + id + ", email=" + email + ", phone=" + phone + "]";
	}
	
	
	
	
}
