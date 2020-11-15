package kr.smhrd.model;

public class AIoTVO {

	private String id;
	private String ampere_id;
	private String device_name;
	private String space;
	private String ip_add;
	private String connection;
	private String wifi_pw;
	
	public AIoTVO(String id) {
		this.id = id;
	}
	
	public AIoTVO() {
	}
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAmpere_id() {
		return ampere_id;
	}
	public void setAmpere_id(String ampere_id) {
		this.ampere_id = ampere_id;
	}
	public String getDevice_name() {
		return device_name;
	}
	public void setDevice_name(String device_name) {
		this.device_name = device_name;
	}
	public String getSpace() {
		return space;
	}
	public void setSpace(String space) {
		this.space = space;
	}
	public String getIp_add() {
		return ip_add;
	}
	public void setIp_add(String ip_add) {
		this.ip_add = ip_add;
	}
	public String getConnection() {
		return connection;
	}
	public void setConnection(String connection) {
		this.connection = connection;
	}
	public String getWifi_pw() {
		return wifi_pw;
	}
	public void setWifi_pw(String wifi_pw) {
		this.wifi_pw = wifi_pw;
	}

	@Override
	public String toString() {
		return "AIoTVO [id=" + id + ", ampere_id=" + ampere_id + ", device_name=" + device_name + ", space=" + space
				+ ", ip_add=" + ip_add + ", connection=" + connection + ", wifi_pw=" + wifi_pw + "]";
	}
	
	
	
}
