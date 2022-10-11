package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.CalendarService;
import toto.vo.Calendar;

@Controller
public class CalendarController {
		@Autowired(required=false)
		private CalendarService service;
		// http://localhost:7080/project05/calList.do
		@RequestMapping("calList.do")
		public String calList(Calendar sch, Model d) {
			d.addAttribute("blist", service.calList(sch));
			
			return "WEB-INF\\views\\board\\calendar.jsp";
		}
}