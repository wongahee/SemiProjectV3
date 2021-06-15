package gahee.spring.mvc.controller;

import gahee.spring.mvc.service.PdsService;
import gahee.spring.mvc.vo.Pds;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import gahee.spring.mvc.utils.FileUpDownUtil;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Map;

@Controller
public class PdsController {

    @Autowired private PdsService psrv;
    @Autowired private FileUpDownUtil fud;

    @GetMapping("/pds/list")
    public ModelAndView list(ModelAndView mv, String cp){
        if(cp == null) cp = "1";
        mv.setViewName("pds/list.tiles");
        mv.addObject("pds", psrv.readPds(cp)); // 데이터 가져와서 객체에 넣음
        mv.addObject("pcnt", psrv.countPds()); // 글번호 가져와서 객체에 넣음

        return mv;
    }

    // 본문글 출력
    @GetMapping("/pds/view")
    public ModelAndView view(ModelAndView mv, String pno){
        mv.setViewName("pds/view.tiles");
        mv.addObject("p", psrv.readOnePds(pno));  // 어떤 게시글을 가져올건지 pno로

        return mv;
    }

    @GetMapping("/pds/write")
    public String write(){
        return "pds/write.tiles";
    }

    // commons file upload로 구현한 자료실(pds)
//    @PostMapping("/pds/write")
//    public String writeok(Pds p, HttpServletRequest req){
//
//        // commons file upload로 업로드처리 및 폼데이터 가져오기
//        FileUpDownUtil fud = new FileUpDownUtil();
//        Map<String, String> frmdata = fud.procUpload(req);
//
//        System.out.println(frmdata.get("title"));
//        System.out.println(frmdata.get("contents"));
//        System.out.println(frmdata.get("file1"));
//        System.out.println(frmdata.get("filesize"));
//        System.out.println(frmdata.get("filetype"));
//
//        // Pds 객체를 이용하는 경우 폼데이터가 자동으로 주입되지않음
//        System.out.println(p.getTitle());
//        System.out.println(p.getContents());
//
//        return "redirect:/pds/list";
//    }

    // MultiPartFile로 구현한 자료실(pds)
    @PostMapping("/pds/write")
    public String writeok(Pds p, MultipartFile[] file) {

        psrv.newPds(p, file);

        return "redirect:/pds/list?cp=1";
    }

    // 다운로드 처리
    // 컨트롤러 메서드에 ResponseBody 어노테이션을 사용하면
    // view를 이용해서 데이터를 출력하지 않고
    // HTTP 응답으로 직접 데이터를 브라우져로 출력할 수 있음
    @ResponseBody
    @GetMapping("/pds/down")
    public void pdsdown(String pno, String order, HttpServletResponse res) {

        Pds p = psrv.readOneFname(pno, order);  // 다운로드할 파일정보 알아냄
        fud.procDownload(p.getFname1(), p.getUuid(), res);  // 다운로드 처리
        psrv.downCountPds(pno, order);          // 다운로드한 파일 다운수 증가
    }

    // 추천하기 - 추천하기 클릭 시 넘어간 페이지에서 pno값 받아옴
    @GetMapping("/pds/recommd")
    public String recomd(String pno) {
        psrv.modifyRecmd(pno);

        return "redirect:/pds/view?pno=" + pno;
    }

    // 이전글 보여주기
    @GetMapping("/pds/prev")
    public String pdsprev(String pno) {
        String prvpno = psrv.readPrvpno(pno);

        return "redirect:/pds/view?pno=" + prvpno;
    }

    // 다음글 보여주기
    @GetMapping("/pds/next")
    public String pdsnext(String pno) {
        String nxtpno = psrv.readNxtpno(pno);

        return "redirect:/pds/view?pno=" + nxtpno;
    }

    // 자료실 게시글 삭제하기 - 첨부파일, 게시글 지우기
    @GetMapping("/pds/pdrmv")
    public String pdrmv(String pno) {

        Pds p = psrv.removePds(pno);  // 테이블에서 게시글 지우기
        fud.removeAttach(p);          // 첨부파일 지우기

        return "redirect:/pds/list";
    }
}