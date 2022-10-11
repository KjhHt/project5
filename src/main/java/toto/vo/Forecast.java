package toto.vo;

public class Forecast {
	private String gnum;
	private String fsnum01;
	private String fsnum02;
	private String fsnum03;
	private String fsnum04;
	private String fsnum05;
	private String fsnum06;
	private String id;
	public Forecast() {
		// TODO Auto-generated constructor stub
	}
	public Forecast(String gnum, String fsnum01, String fsnum02, String fsnum03, String fsnum04, String fsnum05,
			String fsnum06, String id) {
		this.gnum = gnum;
		this.fsnum01 = fsnum01;
		this.fsnum02 = fsnum02;
		this.fsnum03 = fsnum03;
		this.fsnum04 = fsnum04;
		this.fsnum05 = fsnum05;
		this.fsnum06 = fsnum06;
		this.id = id;
	}
	public String getGnum() {
		return gnum;
	}
	public void setGnum(String gnum) {
		this.gnum = gnum;
	}
	public String getFsnum01() {
		return fsnum01;
	}
	public void setFsnum01(String fsnum01) {
		this.fsnum01 = fsnum01;
	}
	public String getFsnum02() {
		return fsnum02;
	}
	public void setFsnum02(String fsnum02) {
		this.fsnum02 = fsnum02;
	}
	public String getFsnum03() {
		return fsnum03;
	}
	public void setFsnum03(String fsnum03) {
		this.fsnum03 = fsnum03;
	}
	public String getFsnum04() {
		return fsnum04;
	}
	public void setFsnum04(String fsnum04) {
		this.fsnum04 = fsnum04;
	}
	public String getFsnum05() {
		return fsnum05;
	}
	public void setFsnum05(String fsnum05) {
		this.fsnum05 = fsnum05;
	}
	public String getFsnum06() {
		return fsnum06;
	}
	public void setFsnum06(String fsnum06) {
		this.fsnum06 = fsnum06;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	

}
