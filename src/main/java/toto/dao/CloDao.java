package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Closing;

@Repository
public interface CloDao {
	public List<Closing> cloList(Closing sch);
	
}
