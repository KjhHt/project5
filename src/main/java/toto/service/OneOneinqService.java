package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.OneOneinqDao;
import toto.vo.Mypoint;
import toto.vo.OneOneinq;

@Service
public class OneOneinqService {
	@Autowired(required = false)
	// 다오
	private OneOneinqDao dao;
	// 리스트
	public List<OneOneinq> OneOneinqList(OneOneinq sch){
		return dao.OneOneinqList(sch);
	}
	// 등록
	public void insertOneOneinq(OneOneinq ins) {
		dao.insertOneOneinq(ins);
	}
	// 상세화면
	public OneOneinq getOneOneinqDetail(int boardno){		
		dao.readCountup(boardno);	
		return dao.getOneOneinqDetail(boardno);
	}
	// 수정
	public OneOneinq updateOneOneinq(OneOneinq upt) {
		dao.updateOneOneinq(upt); 
		return dao.getOneOneinqDetail(upt.getBoardno());
	}
	// 삭제
	public void deleteOneOneinq(int boardno) {
		dao.deleteOneOneinq(boardno);
	}
	// 포인트 충전
	public void updateMypoint(Mypoint upt) {
		dao.updateMypoint(upt); 
	}

}