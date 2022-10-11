package toto.vo;

public class OeGameResult {
    private int oegno;
    private int random;
    private String choice;
    private int win;
    private int prevpoint;
    private int resultpoint;
    private String id;

    public OeGameResult() {
    }

    public OeGameResult(int oegno, int random, String choice, int win, int prevpoint, int resultpoint, String id) {
        this.oegno = oegno;
        this.random = random;
        this.choice = choice;
        this.win = win;
        this.prevpoint = prevpoint;
        this.resultpoint = resultpoint;
        this.id = id;
    }

    public int getOegno() {
        return oegno;
    }

    public void setOegno(int oegno) {
        this.oegno = oegno;
    }

    public int getRandom() {
        return random;
    }

    public void setRandom(int random) {
        this.random = random;
    }

    public String getChoice() {
        return choice;
    }

    public void setChoice(String choice) {
        this.choice = choice;
    }

    public int getWin() {
        return win;
    }

    public void setWin(int win) {
        this.win = win;
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

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
}
