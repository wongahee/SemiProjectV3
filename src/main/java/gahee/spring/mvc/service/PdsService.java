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

    void modifyRecmd(String pno);   // 추천하기

    String readPrvpno(String pno);  // 이전게시글
    String readNxtpno(String pno);  // 다음게시글

    Pds removePds(String pno);      // 삭제하기
}