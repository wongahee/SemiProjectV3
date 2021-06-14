package gahee.spring.mvc.controller;

import gahee.spring.mvc.service.PdsService;
import gahee.spring.mvc.vo.Pds;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import org.springframework.web.multipart.MultipartFile;

import gahee.spring.mvc.utils.FileUpDownUtil;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

@Controller
public class PdsController {

    @Autowired private PdsService psrv;

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

}