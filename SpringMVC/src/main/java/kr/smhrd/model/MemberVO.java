package kr.smhrd.model;

import java.util.Map;

public class MemberVO {

	
	private	String id;
	private String pw;
	private String phone;
	private String address;
	private String name;
	
	public MemberVO() {
		
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
	
	@Override
	public String toString() {
		return "mem [id=" + id + ", pw=" + pw + ", phone=" + phone + ", address=" + address + ", name=" + name + "]";
	}



	
	
	
	
	
	
	
}
