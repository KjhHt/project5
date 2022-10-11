package toto.vo;

public class Mypoint {
	private String pw;
	private int point;
	private int addpoint;
	public Mypoint() {
		// TODO Auto-generated constructor stub
	}
	public Mypoint(String pw, int point, int addpoint) {
		this.pw = pw;
		this.point = point;
		this.addpoint = addpoint;
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
	public int getAddpoint() {
		return addpoint;
	}
	public void setAddpoint(int addpoint) {
		this.addpoint = addpoint;
	}

}
