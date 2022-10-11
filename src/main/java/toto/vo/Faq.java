package toto.vo;
//toto.vo.Faq
public class Faq {
	private String bt_question;
	private String bt_answer;
	public Faq() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Faq(String bt_question, String bt_answer) {
		super();
		this.bt_question = bt_question;
		this.bt_answer = bt_answer;
	}
	
	
	public Faq(String bt_question) {
		super();
		this.bt_question = bt_question;
	}
	public String getBt_question() {
		return bt_question;
	}
	public void setBt_question(String bt_question) {
		this.bt_question = bt_question;
	}
	public String getBt_answer() {
		return bt_answer;
	}
	public void setBt_answer(String bt_answer) {
		this.bt_answer = bt_answer;
	}
	
	

}
