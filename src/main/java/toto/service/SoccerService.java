package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.SoccerDao;
import toto.vo.Soccer;

@Service
public class SoccerService {
	@Autowired(required = false)
	private SoccerDao dao;
	
	public List<Soccer> getSoccerList(Soccer sch){
		return dao.getSoccerList(sch);		
	}
	
	public void updateSoccer(Soccer upt) {
		dao.updateSoccer(upt); 	
	}
	
	
	
	
	
}

