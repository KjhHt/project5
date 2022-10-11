package toto.vo;


public class Closing {
	private String ctype;
	private String ctitle;
	private String cdate;
	public Closing() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Closing(String ctype, String ctitle, String cdate) {
		super();
		this.ctype = ctype;
		this.ctitle = ctitle;
		this.cdate = cdate;
	}
	public Closing(String ctitle) {
		super();
		this.ctitle = ctitle;
	}
	public String getCtype() {
		return ctype;
	}
	public void setCtype(String ctype) {
		this.ctype = ctype;
	}
	public String getCtitle() {
		return ctitle;
	}
	public void setCtitle(String ctitle) {
		this.ctitle = ctitle;
	}
	public String getCdate() {
		return cdate;
	}
	public void setCdate(String cdate) {
		this.cdate = cdate;
	}
	
	
	
}
