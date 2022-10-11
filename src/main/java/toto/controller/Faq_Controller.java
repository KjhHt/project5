package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.FaqService;
import toto.vo.Faq;


@Controller
public class Faq_Controller {
		@Autowired(required=false)
		private FaqService service;
		// http://localhost:7080/project05/faqList.do
		@RequestMapping("faqList.do")
		public String faqList(Faq sch, Model d) {
			d.addAttribute("blist", service.faqList(sch));
			
			return "WEB-INF\\views\\board\\faq.jsp";
		}
	
	
}
