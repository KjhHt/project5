package toto.vo;
//  toto.vo.Totologin

import java.util.Date;

public class Totologin2 {
	
	private int idno;
	private String id;
	private String pw;
	private int point;
	private Date birthdate;
	public Totologin2() {
		
		// TODO Auto-generated constructor stub
	}
	public Totologin2(int idno, String id, String pw, int point, Date birthdate) {
		super();
		this.idno = idno;
		this.id = id;
		this.pw = pw;
		this.point = point;
		this.birthdate = birthdate;
	}
	
	
	public Totologin2(String id, String pw, int idno) {
		super();
		this.id = id;
		this.pw = pw;
		this.idno = idno;
	}
	public Totologin2(String id, String pw) {
		super();
		this.id = id;
		this.pw = pw;
	}
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
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
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public Date getBirthdate() {
		return birthdate;
	}
	public void setBirthdate(Date birthdate) {
		this.birthdate = birthdate;
	}
	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return "Login [idno =" + idno + ", id ="+id+","
				+ " pw ="+pw+", point ="+point+", birthdate ="+birthdate+"]";
	}
	
	
}
