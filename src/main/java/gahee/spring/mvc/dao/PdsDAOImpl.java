package gahee.spring.mvc.dao;

import gahee.spring.mvc.vo.Pds;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository("pdao")
public class PdsDAOImpl implements PdsDAO {

    @Autowired private SqlSession sqlSession;

    @Override
    public int insertPds(Pds p) {
        return sqlSession.insert("pds.insertPds", p);
    }

    @Override
    public List<Pds> selectPds(int snum) {
        return sqlSession.selectList("pds.selectPds", snum);
    }

    @Override
    public int selectCountPds() {
        return sqlSession.selectOne("pds.countPds") ;
    }

    @Override
    public Pds selectOnePds(String pno) {
        return sqlSession.selectOne("pds.selectOnePds", pno);
    }

    @Override
    public Pds selectOneFname(Map<String, String> param) {
        return sqlSession.selectOne("pds.selectFname", param);
    }

    @Override
    public int downCountPds(Map<String, String> param) {
        return sqlSession.update("pds.updateDown", param);
    }

    @Override
    public void updateRecmd(String pno) {
         sqlSession.update("pds.updateThumbs", pno);
    }

    @Override
    public String selectPrvpno(String pno) {
        return sqlSession.selectOne("pds.selectPrev", pno);
    }

    @Override
    public String selectNxtpno(String pno) {
        return sqlSession.selectOne("pds.selectNext", pno);
    }

    @Override
    public void deletePds(String pno) {
        sqlSession.delete("pds.deletePds", pno);
    }

}