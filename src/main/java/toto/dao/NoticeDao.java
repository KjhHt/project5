package toto.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import toto.vo.Notice;

// toto.dao.NoticeDao
@Repository
public interface NoticeDao {

	public List<Notice> noticeList(Notice sch);

	public Notice getDetail(int no);
	public void readCountup(int no);
	public void insertNotice(Notice ins);
	public void updateNotice(Notice upt);
	public void deleteNotice(int no);
	public Notice getNoticeDetail(int no);
	
}
