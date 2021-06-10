package gahee.spring.mvc.controller;

import gahee.spring.mvc.dao.BoardDAO;
import gahee.spring.mvc.service.BoardService;
import gahee.spring.mvc.vo.Board;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

    @Autowired private BoardService bsrv;

    @GetMapping("/board/list")
    public ModelAndView list(ModelAndView mv, String cp){
        if(cp == null) cp = "1";

        mv.setViewName("board/list.tiles");
        mv.addObject("bds", bsrv.readBoard(cp)); //readBoard를 받아 bds객체에 넣어놈
        mv.addObject("bdcnt", bsrv.countBoard()); //총게시물수를 받아 bdcnt객체에 넣어놈

        return mv;
    }

    @GetMapping("/board/view")
    public ModelAndView view(String bdno, ModelAndView mv){
        bsrv.viewCountBoard(bdno); // 조회수 처리

        mv.setViewName("board/view.tiles");
        mv.addObject("bd", bsrv.readOneBoard(bdno));

        return mv;
    }

    @GetMapping("/board/write")
    public String write(){
        return "board/write.tiles";
    }

    @PostMapping("/board/write")
    public String writeok(Board bd){
        String returnPage = "redirect:/board/list";

        if(bsrv.newBoard(bd))
            System.out.println("입력완료!");

        return returnPage;
    }

    // 게시판 검색기능 구현
    @GetMapping("/board/find")
    public ModelAndView find(ModelAndView mv, String cp, String findtype, String findkey) {

        mv.setViewName("board/list.tiles");
        mv.addObject("bds",
                bsrv.readBoard(cp, findtype, findkey));
        mv.addObject("bdcnt",
                bsrv.countBoard(findtype, findkey));

        return mv;
    }


}