package vts_VO;

import java.util.Date;


public class Vts_showVO {

	private int no;
	private String title;	
	private String time;
	private String pay;
	private String imgsrc;
	
	public Vts_showVO() {}
	
	
	public Vts_showVO(int no, String title, String time, String pay, String imgsrc) {
		super();
		this.no = no;
		this.title = title;
		this.time = time;
		this.pay = pay;
		this.imgsrc = imgsrc;
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getPay() {
		return pay;
	}
	public void setPay(String pay) {
		this.pay = pay;
	}
	public String getImgsrc() {
		return imgsrc;
	}
	public void setImgsrc(String imgsrc) {
		this.imgsrc = imgsrc;
	}
	
	
	
}
