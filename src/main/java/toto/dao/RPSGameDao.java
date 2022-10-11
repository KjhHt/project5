package toto.dao;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Repository;

import toto.vo.RPSGameResult;

@Repository
public interface RPSGameDao {
	public int getCurPoint(String id);
	public void updatePoint(Map<String, Object> upt);
	public void insertRPSGameResult(RPSGameResult rst);
	public List<RPSGameResult> getRPSGameResultList(String id);
}
