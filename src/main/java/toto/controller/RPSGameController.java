package toto.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import toto.service.RPSGameService;
import toto.util.inputCheck;
import toto.vo.RPSGameResult;

@Controller
public class RPSGameController {
	@Autowired(required=false)
	private RPSGameService service;
	
	double odds = 1.95;
			
	@RequestMapping("rpsgame.do")
	public String RPSGame(HttpSession session, Model d) {
		// http://localhost:7080/project05/rpsgame.do
		session.setAttribute("id", "asdasd123");
		session.setMaxInactiveInterval(60*10);
		String curId = (String)session.getAttribute("id");
		d.addAttribute("curPoint", service.getCurPoint(curId));
		d.addAttribute("odds", odds);
		return "WEB-INF\\views\\game\\rpsgame.jsp";
	}
	
	@RequestMapping("rpsgameresult.do")
	public String RPSGameResult(@RequestParam(value = "player", defaultValue = "") String player,
            					@RequestParam(value = "setPoint", defaultValue = "0") String setPoint, 
            					Model d, HttpSession session) {
		String curId = (String)session.getAttribute("id");
		if(inputCheck.isEmpty(player) || inputCheck.isEmpty(setPoint)){
            return "redirect:rpsgame.do";
        } else if (!(player.equals("가위") || player.equals("바위") || player.equals("보"))) {
            return "redirect:rpsgame.do";
        }
		int curPoint = service.getCurPoint(curId);
	    int bettingPoint = Integer.valueOf(setPoint);
		if (bettingPoint <= 0 ) {
			return "redirect:rpsgame.do";
		}
	    RPSGameResult rst = service.playRPS(player, curPoint, bettingPoint, curId, odds);
	        d.addAttribute("rst", rst);
		return "WEB-INF\\views\\game\\rpsgameResult.jsp";
	}
	@RequestMapping("rpsgamehistory.do")
	public String RPSGameHistory(Model d, HttpSession session) {
		String curId = (String)session.getAttribute("id");
		d.addAttribute("result",service.getRPSGameHistory(curId));
		
		return "WEB-INF\\views\\game\\rpsgameHistory.jsp";
	}
}
