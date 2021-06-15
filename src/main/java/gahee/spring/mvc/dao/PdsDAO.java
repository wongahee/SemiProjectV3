package gahee.spring.mvc.dao;

import gahee.spring.mvc.vo.Pds;

import java.util.List;
import java.util.Map;

public interface PdsDAO {

    int insertPds(Pds p);
    List<Pds> selectPds(int snum);
    int selectCountPds();

    Pds selectOnePds(String pno);   // 본문보기
    Pds selectOneFname(Map<String, String> param);  // 다운로드
    int downCountPds(Map<String, String> param);    // 다운로드 수 증가
    void updateRecmd(String pno);   // 추천하기

    String selectPrvpno(String pno);   // 이전게시글
    String selectNxtpno(String pno);   // 다음게시글

    void deletePds(String pno);      // 삭제하기
}