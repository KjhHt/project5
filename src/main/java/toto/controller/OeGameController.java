package toto.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import toto.service.OeGameService;
import toto.util.inputCheck;
import toto.vo.OeGameResult;

import javax.servlet.http.HttpSession;

@Controller
public class OeGameController {
    @Autowired(required=false)
    private OeGameService service;

    double odds = 1.5;

    @RequestMapping("oegame.do")
    public String oegame(Model d, HttpSession session){
        //session.setAttribute("id","asdasd123");
        //session.setMaxInactiveInterval(60*10); // 로그인 세션 10분간 유지.
        System.out.println("세션 id 가져오기 : " + session.getAttribute("id"));

        String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId)){
            return "redirect:project5\\Main.jsp";
        }

        d.addAttribute("curPoint", service.getCurPoint(curId));
        d.addAttribute("odds", odds); // 배당률 설정.

        return "WEB-INF\\views\\game\\oegame.jsp";
    }

    @RequestMapping("oegameResult.do")
    public String oegameResult(@RequestParam(value = "choice", defaultValue = "") String choice,
                               @RequestParam(value = "setPoint", defaultValue = "0") String setPoint, Model d, HttpSession session){
        String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId)){
            return "redirect:project5\\Main.jsp";
        }
        if(inputCheck.isEmpty(choice) || inputCheck.isEmpty(setPoint)){
            return "redirect:oegame.do";
        } else if (!(choice.equals("홀") || choice.equals("짝"))) {
            return "redirect:oegame.do";
        }
        int curPoint = service.getCurPoint(curId);
        int inputPoint = Integer.valueOf(setPoint);
        if (inputPoint > curPoint || inputPoint <= 0) {
            return "redirect:oegame.do";
        }

        OeGameResult rst = service.playOeGame(choice, curPoint, inputPoint, curId, odds);
        d.addAttribute("rst", rst);

        return "WEB-INF\\views\\game\\oegameResult.jsp";
    }

    @RequestMapping("oegameHistory.do")
    public String oegameHistory(Model d, HttpSession session){
        String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId)){
            return "redirect:project5\\Main.jsp";
        }

        d.addAttribute("auth", service.getAuth(curId));
        d.addAttribute("result",service.getOeHistory(curId));

        return "WEB-INF\\views\\game\\oegameHistory.jsp";
    }
    @RequestMapping("oegameAdmin.do")
    public String oegameAdmin(OeGameResult sch, Model d, HttpSession session,
                              @RequestParam(value = "setOdds", defaultValue = "") String setOdds,
                                @RequestParam(value = "setod", defaultValue = "") String setod){
        String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId) || service.getAuth(curId) != 1){
            return "redirect:project5\\Main.jsp";
        }
        if(!inputCheck.isEmpty(setOdds) && Double.parseDouble(setOdds) != odds && setod.equals("Y")){
            odds = Double.parseDouble(setOdds);
        }

        d.addAttribute("odds", odds);
        d.addAttribute("result",service.schOeGameResult(sch));

        return "WEB-INF\\views\\game\\oegameAdmin.jsp";
    }

    @RequestMapping("oegameAdminAjax.do")
    public String oegameAdminAjax(OeGameResult sch, Model d, HttpSession session,
                                  @RequestParam(value = "setOdds", defaultValue = "") String setOdds,
                                  @RequestParam(value = "setod", defaultValue = "") String setod){
        String curId = (String)session.getAttribute("id");
        if(inputCheck.isEmpty(curId) || service.getAuth(curId) != 1){
            return "redirect:project5\\Main.jsp";
        }
        if(!inputCheck.isEmpty(setOdds) && Double.parseDouble(setOdds) != odds && setod.equals("Y")){
            odds = Double.parseDouble(setOdds);
        }

        d.addAttribute("odds", odds);
        d.addAttribute("result",service.schOeGameResult(sch));

        return "pageJsonReport";
    }
}
