package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.MEMBERtoto;

//toto.dao.memberDao
@Repository
public interface memberDao {
	public List<MEMBERtoto> getMemList(MEMBERtoto sch);
	public void insertMemtoto(MEMBERtoto ins);		
	

}
