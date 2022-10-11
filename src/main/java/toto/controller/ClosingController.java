package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.ClosingService;
import toto.vo.Closing;

@Controller
public class ClosingController {
		@Autowired(required=false)
		private ClosingService service;
		// http://localhost:7080/project05/cloList.do
		@RequestMapping("cloList.do")
		public String cloList(Closing sch, Model d) {
			d.addAttribute("blist", service.cloList(sch));
			
			return "WEB-INF\\views\\board\\closing.jsp";
		}
		
}