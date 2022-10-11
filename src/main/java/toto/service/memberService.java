package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.memberDao;
import toto.vo.MEMBERtoto;

@Service
public class memberService {
	@Autowired(required=false) 
	private memberDao dao;
	public List<MEMBERtoto> getMemList(MEMBERtoto sch){
		return dao.getMemList(sch);
	}

}
