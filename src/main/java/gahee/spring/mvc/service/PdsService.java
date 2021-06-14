package gahee.spring.mvc.service;

import gahee.spring.mvc.vo.Pds;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

public interface PdsService {

    boolean newPds(Pds p, MultipartFile[] file);

    List<Pds> readPds(String cp);
    int countPds();

    Pds readOnePds(String pno);  // 자료실 글번호
    Pds readOneFname(String pno, String order);

    boolean downCountPds(String pno, String order);


}
