package toto.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import toto.dao.NoticeDao;
import toto.vo.Notice;


@Service
public class NoticeService {
	@Autowired(required = false)
	private NoticeDao dao;
	
	public List<Notice> noticeList(Notice sch) {
		return dao.noticeList(sch);
	}

	
	/*
	public void insertNotice(Notice ins) {
		dao.insertNotice(ins);
	}

	public Notice getNoticeDetail(int no) {
		dao.readCountup(no);

		return dao.getNoticeDetail(no);
	}

	public Notice updateBoard(Notice upt) {
		dao.updateNotice(upt);
		return dao.getNoticeDetail(upt.getNo());
	}

	public void deleteNotice(int no) {
		dao.deleteNotice(no);
	}

*/
	
}
