package toto.vo;

public class RPSGameResult {
	private int gameno;
	private String id;
	private String com;
	private String player;
	private String gameresult;
	private int prevpoint;
	private int resultpoint;
	public RPSGameResult() {
		super();
		// TODO Auto-generated constructor stub
	}
	public RPSGameResult(int gameno, String id, String com, String player, String gameresult, int prevpoint,
			int resultpoint) {
		super();
		this.gameno = gameno;
		this.id = id;
		this.com = com;
		this.player = player;
		this.gameresult = gameresult;
		this.prevpoint = prevpoint;
		this.resultpoint = resultpoint;
	}
	public int getGameno() {
		return gameno;
	}
	public void setGameno(int gameno) {
		this.gameno = gameno;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCom() {
		return com;
	}
	public void setCom(String com) {
		this.com = com;
	}
	public String getPlayer() {
		return player;
	}
	public void setPlayer(String player) {
		this.player = player;
	}
	public String getGameresult() {
		return gameresult;
	}
	public void setGameresult(String gameresult) {
		this.gameresult = gameresult;
	}
	public int getPrevpoint() {
		return prevpoint;
	}
	public void setPrevpoint(int prevpoint) {
		this.prevpoint = prevpoint;
	}
	public int getResultpoint() {
		return resultpoint;
	}
	public void setResultpoint(int resultpoint) {
		this.resultpoint = resultpoint;
	}
}
