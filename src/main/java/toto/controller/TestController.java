package toto.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class TestController {
    @RequestMapping("test.do")
    public String boardList(Model d){
        return "WEB-INF\\views\\test.jsp";
    }
}
