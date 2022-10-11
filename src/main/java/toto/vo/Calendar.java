package toto.vo;

public class Calendar {
	private String ctime;
	private String team;
	private String place;
	public Calendar() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Calendar(String ctime, String team, String place) {
		super();
		this.ctime = ctime;
		this.team = team;
		this.place = place;
	}
	public String getCtime() {
		return ctime;
	}
	public void setCtime(String ctime) {
		this.ctime = ctime;
	}
	public String getTeam() {
		return team;
	}
	public void setTeam(String team) {
		this.team = team;
	}
	public String getPlace() {
		return place;
	}
	public void setPlace(String place) {
		this.place = place;
	}
	
	
}
