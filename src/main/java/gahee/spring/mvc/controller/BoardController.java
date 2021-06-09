package gahee.spring.mvc.controller;

import gahee.spring.mvc.dao.BoardDAO;
import gahee.spring.mvc.service.BoardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

    @Autowired private BoardService bsrv;

    @GetMapping("/board/list")
    public ModelAndView list(ModelAndView mv, String cp){
        if(cp == null) cp = "1";

        mv.setViewName("board/list.tiles");
        mv.addObject("bds", bsrv.readBoard(cp)); //readBoard를 받아 bds객체에 넣어놈

        return mv;
    }

    @GetMapping("/board/view")
    public String view(){
        return "board/view.tiles";
    }

    @GetMapping("/board/write")
    public String write(){
        return "board/write.tiles";
    }

}