package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
//toto_Controller.Login_Controller
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import toto.service.LoginService;
import toto.util.inputCheck;
import toto.vo.Account;

//toto.controller.Login_Controller

@Controller("login_ctrl")
public class Login_Controller {
	@Autowired(required = false)
	private LoginService service;
	 // http://localhost:7080/project05/Login2.do
	@RequestMapping("Login2.do")
	public String loginList(Account sch, Model d, HttpSession session) {
		if(sch != null && sch.getId() != null && sch.getPw() != null )
		{
			boolean logged = service.ck(sch) != null;
			if(logged) {
				session.setAttribute("idno",sch.getIdno());
				session.setAttribute("id",sch.getId());
				session.setMaxInactiveInterval(60*10);
			}
		}
		String curId = (String)session.getAttribute("id");
        if(!inputCheck.isEmpty(curId)){
        	return "redirect:project5\\Main.jsp";
        }
		d.addAttribute("loginList",service.getLoginList(sch));   
		return "WEB-INF\\views\\2222.jsp";
	}
	
	
	
	// http://localhost:7080/project05/Insert.do
	  @RequestMapping("Insert.do")
		public String totoInsert(Account ins, Model d){
			d.addAttribute(new Account());
			return "WEB-INF\\views\\Member.jsp";
		}

	
	
	

	
	

}
