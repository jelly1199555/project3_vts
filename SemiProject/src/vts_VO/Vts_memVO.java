package vts_VO;

public class Vts_memVO {

	private String id;
	private String pw;
	private String name;
	private String gender;
	private String brith;
	private String email;
	private String tel;
	private String address;
	private String vts_title;
	private String vts_d;
	private String vts_time;
	private String vts_inwon;
	private String vts_totpay;
	
	public Vts_memVO(String id, String vts_title, String vts_d, String vts_time, String vts_inwon, String vts_totpay) {
	
		this.id = id;
		this.vts_title = vts_title;
		this.vts_d = vts_d;
		this.vts_time = vts_time;
		this.vts_inwon = vts_inwon;
		this.vts_totpay = vts_totpay;
	}

	public Vts_memVO(String id, String pw, String name, String gender, String brith, String email, String tel,
			String address, String vts_title, String vts_d, String vts_time, String vts_inwon, String vts_totpay) {
		
		this.id = id;
		this.pw = pw;
		this.name = name;
		this.gender = gender;
		this.brith = brith;
		this.email = email;
		this.tel = tel;
		this.address = address;
		this.vts_title = vts_title;
		this.vts_d = vts_d;
		this.vts_time = vts_time;
		this.vts_inwon = vts_inwon;
		this.vts_totpay = vts_totpay;
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

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBrith() {
		return brith;
	}

	public void setBrith(String brith) {
		this.brith = brith;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getVts_title() {
		return vts_title;
	}

	public void setVts_title(String vts_title) {
		this.vts_title = vts_title;
	}

	public String getVts_d() {
		return vts_d;
	}

	public void setVts_d(String vts_d) {
		this.vts_d = vts_d;
	}

	public String getVts_time() {
		return vts_time;
	}

	public void setVts_time(String vts_time) {
		this.vts_time = vts_time;
	}

	public String getVts_inwon() {
		return vts_inwon;
	}

	public void setVts_inwon(String vts_inwon) {
		this.vts_inwon = vts_inwon;
	}

	public String getVts_totpay() {
		return vts_totpay;
	}

	public void setVts_totpay(String vts_totpay) {
		this.vts_totpay = vts_totpay;
	}
		
}
