package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Mypoint;
import toto.vo.OneOneinq;

@Repository
public interface OneOneinqDao {
	public List<OneOneinq> OneOneinqList(OneOneinq sch);
	public void insertOneOneinq(OneOneinq ins);
	public OneOneinq getOneOneinqDetail(int boardno);
	public void readCountup(int boardno);
	public void updateOneOneinq(OneOneinq upt);
	public void deleteOneOneinq(int boardno);
	
	public void updateMypoint(Mypoint upt);
}