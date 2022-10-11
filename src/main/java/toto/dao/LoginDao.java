package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Account;
import toto.vo.Totologin2;
//toto.dao.LoginDao
@Repository
public interface LoginDao {
	public List<Account> getLoginList(Account sch);
	public void totoInsert(Account ins);
	public Account ck(Account sch);



}
