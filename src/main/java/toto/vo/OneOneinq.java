package toto.vo;

import java.util.Date;

// toto.vo.OneOneinq
public class OneOneinq {
	private int boardno;
	private String name;
	private String email;
	private String phonenumber;
	private String title;
	private String content;
	private Date nowtime;
	private int readcnt;
	public OneOneinq() {
		// TODO Auto-generated constructor stub
	}
	public OneOneinq(int boardno, String name, String email, String phonenumber, String title, String content,
			Date nowtime, int readcnt) {
		this.boardno = boardno;
		this.name = name;
		this.email = email;
		this.phonenumber = phonenumber;
		this.title = title;
		this.content = content;
		this.nowtime = nowtime;
		this.readcnt = readcnt;
	}
	public int getBoardno() {
		return boardno;
	}
	public void setBoardno(int boardno) {
		this.boardno = boardno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Date getNowtime() {
		return nowtime;
	}
	public void setNowtime(Date nowtime) {
		this.nowtime = nowtime;
	}
	public int getReadcnt() {
		return readcnt;
	}
	public void setReadcnt(int readcnt) {
		this.readcnt = readcnt;
	}

}
