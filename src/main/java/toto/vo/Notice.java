package toto.vo;


public class Notice {

	private int bt_no;
	private String bt_division;
	private String bt_title;
	private String bt_date;
	public Notice() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Notice(int bt_no, String bt_division, String bt_title, String bt_date) {
		super();
		this.bt_no = bt_no;
		this.bt_division = bt_division;
		this.bt_title = bt_title;
		this.bt_date = bt_date;
	}
	public Notice(String bt_title) {
		super();
		this.bt_title = bt_title;
	}
	
	public int getBt_no() {
		return bt_no;
	}
	public void setBt_no(int bt_no) {
		this.bt_no = bt_no;
	}
	public String getBt_division() {
		return bt_division;
	}
	public void setBt_division(String bt_division) {
		this.bt_division = bt_division;
	}
	public String getBt_title() {
		return bt_title;
	}
	public void setBt_title(String bt_title) {
		this.bt_title = bt_title;
	}
	public String getBt_date() {
		return bt_date;
	}
	public void setBt_date(String bt_date) {
		this.bt_date = bt_date;
	}

	
	
}