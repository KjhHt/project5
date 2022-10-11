package toto.vo;

import java.util.Date;

public class Soccer {
	private String snum;
	private Date gamedate;
	private String place;
	private String hteam;
	private String vteam;
	private String gresult;
	public Soccer() {
		// TODO Auto-generated constructor stub
	}
	public Soccer(String snum, Date gamedate, String place, String hteam, String vteam, String gresult) {
		this.snum = snum;
		this.gamedate = gamedate;
		this.place = place;
		this.hteam = hteam;
		this.vteam = vteam;
		this.gresult = gresult;
	}
	public Soccer(String snum, String gresult) {
		this.snum = snum;
		this.gresult = gresult;
	}
	public String getSnum() {
		return snum;
	}
	public void setSnum(String snum) {
		this.snum = snum;
	}
	public Date getGamedate() {
		return gamedate;
	}
	public void setGamedate(Date gamedate) {
		this.gamedate = gamedate;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	public String getHteam() {
		return hteam;
	}
	public void setHteam(String hteam) {
		this.hteam = hteam;
	}
	public String getVteam() {
		return vteam;
	}
	public void setVteam(String vteam) {
		this.vteam = vteam;
	}
	public String getGresult() {
		return gresult;
	}
	public void setGresult(String gresult) {
		this.gresult = gresult;
	}
	

}
