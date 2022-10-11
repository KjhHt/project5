package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.LoginDao;
import toto.vo.Account;


@Service
public class LoginService {
	@Autowired(required=false) 
	private LoginDao dao;
	public List<Account> getLoginList(Account sch){
	
		return dao.getLoginList(sch);
		
	}
	
	public Account ck(Account sch) {
		return dao.ck(sch);
	}
	
	
	public void totoInsert(Account ins) {
		dao.totoInsert(ins);
		
	}
	
	
	
	
	
	
}
