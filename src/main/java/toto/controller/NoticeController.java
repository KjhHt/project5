package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.NoticeService;
import toto.vo.Notice;

@Controller
public class NoticeController {
	@Autowired(required=false)
	private NoticeService service;
	// http://localhost:7080/project05/noticeList.do
	@RequestMapping("noticeList.do")
	public String noticeList(Notice sch,Model d) {
		d.addAttribute("blist",service.noticeList(sch));
		return "WEB-INF\\views\\board\\notice.jsp";
	}
}
 