package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.OneOneinqService;
import toto.vo.Mypoint;
import toto.vo.OneOneinq;
// http://localhost:7082/project05/OneOneinq.do
@Controller
public class OneOneinqController {
	@Autowired
	private OneOneinqService service;
	// 1:1문의 메인
	@RequestMapping("OneOneinq.do")
    public String OneOneinqList(OneOneinq sch,Model d){
		d.addAttribute("oneList", service.OneOneinqList(sch));
		return "WEB-INF\\views\\mypage\\OneOneinqMain.jsp";
	}
	// 1:1문의 등록
	@RequestMapping("oneoneinqInsertForm.do")
	public String oneoneinqInsertForm(){
		return "WEB-INF\\views\\mypage\\oneoneinqInsert.jsp";
	}
	@RequestMapping("oneoneinqInsert.do")
	public String oneoneinqInsert(OneOneinq ins, Model d){
		service.insertOneOneinq(ins);
		d.addAttribute("isInsert","Y");
		return "WEB-INF\\views\\mypage\\oneoneinqInsert.jsp";
	}
	// 상세화면
	@RequestMapping("oneoneinqDetail.do")
	public String oneoneinqDetail(@RequestParam("boardno") int boardno, Model d){
		d.addAttribute("oneoneinq",service.getOneOneinqDetail(boardno));
		return "WEB-INF\\views\\mypage\\oneoneinqDetail.jsp"; 
	}
	// 수정
	@RequestMapping("updateOneOneinq.do")
	public String updateOneOneinq(OneOneinq upt, Model d) {
		System.out.println("수정:"+upt.getTitle());
		d.addAttribute("oneoneinq", service.updateOneOneinq(upt));
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\mypage\\oneoneinqDetail.jsp";
	}
	// 삭제
	@RequestMapping("deleteOneOneinq.do")
	public String deleteOneOneinq(@RequestParam("boardno") int boardno, Model d) {
		System.out.println("삭제:"+boardno);
		service.deleteOneOneinq(boardno);
		d.addAttribute("proc","del");
		return "WEB-INF\\views\\mypage\\oneoneinqDetail.jsp";
	}
	// http://localhost:7082/project05/MypointList.do
	@RequestMapping("MypointList.do")
	public String MypointList(Model d) {
		return "WEB-INF\\views\\mypage\\mypointDetail.jsp";
	}
	// 포인트 수정
	@RequestMapping("updateMypoint.do")
	public String updateMypoint(Mypoint upt, Model d) {
		System.out.println(upt.getPw() + upt.getPoint());
		service.updateMypoint(upt);
		d.addAttribute("proc","upt");
		return "WEB-INF\\views\\mypage\\mypointDetail.jsp";
	}
}