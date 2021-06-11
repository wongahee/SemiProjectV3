package gahee.spring.mvc.controller;

import gahee.spring.mvc.dao.BoardDAO;
import gahee.spring.mvc.service.BoardReplyService;
import gahee.spring.mvc.service.BoardService;
import gahee.spring.mvc.vo.Board;
import gahee.spring.mvc.vo.Reply;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class BoardController {

    // AutoWired 제거
    private BoardService bsrv;
    private BoardReplyService brsrv;

    // 생성자 + Autowired
    @Autowired
    public BoardController(BoardService bsrv, BoardReplyService brsrv) {
        this.bsrv = bsrv;
        this.brsrv = brsrv;
    }

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
        mv.addObject("rps", brsrv.readReply(bdno)); // 댓글가져오기

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

    // 댓글쓰기 - 쓰고 다시 댓글쓴 페이지로 이동
    @PostMapping("/reply/write")
    public String replyok(Reply r){
        String returnPage = "redirect:/board/view?bdno="+r.getBdno();

        brsrv.newComment(r);

        return returnPage;
    }

    // 대댓글쓰기
    @PostMapping("/rreply/write")
    public String rreplyok(Reply r){
        String returnPage = "redirect:/board/view?bdno="+r.getBdno();

        brsrv.newReply(r);

        return returnPage;
    }

}