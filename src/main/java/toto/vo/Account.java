package toto.vo;

import java.util.Date;

public class Account {
    private int idno;
    private String id;
    private String pw;
    private int point;
    private Date birthdate;
    private int auth;

    public Account() {
    }

    public Account(int idno, String id, String pw, int point, Date birthdate, int auth) {
        this.idno = idno;
        this.id = id;
        this.pw = pw;
        this.point = point;
        this.birthdate = birthdate;
        this.auth = auth;
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

    public int getAuth() {
        return auth;
    }

    public void setAuth(int auth) {
        this.auth = auth;
    }
}
