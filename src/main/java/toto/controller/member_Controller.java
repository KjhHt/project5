package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
//toto_Controller.Login_Controller
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.memberService;
import toto.vo.MEMBERtoto;



@Controller
public class member_Controller {
	@Autowired(required = false)
	private memberService service;
	// http://localhost:7080/project05/Mem.do
		@RequestMapping("Mem.do")
		public String MemList(MEMBERtoto sch, Model d) {
			d.addAttribute("MEMBERtoto",service.getMemList(sch));   
			return "WEB-INF\\views\\Member.jsp";
		}
	
	

}
