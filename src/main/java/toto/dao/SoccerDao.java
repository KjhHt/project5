package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Soccer;

@Repository
public interface SoccerDao {
	public List<Soccer> getSoccerList(Soccer sch);
	public void updateSoccer(Soccer upt);
	
}
