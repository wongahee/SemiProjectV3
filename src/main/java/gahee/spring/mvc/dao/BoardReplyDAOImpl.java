package gahee.spring.mvc.dao;

import gahee.spring.mvc.vo.Reply;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("brdao")
public class BoardReplyDAOImpl implements BoardReplyDAO {

    @Autowired private SqlSession sqlSession;

    @Override
    public List<Reply> selectReply(String bdno) {
        return sqlSession.selectList("bdreply.selectReply", bdno);
    }

    @Override
    public int insertComment(Reply r) {
        r.setRpno(selectLastRno()); // 댓글 저장 시, 최근 댓글번호를 알아내서 rpno에 저장함
        return sqlSession.insert("bdreply.insertComment", r);
    }

    @Override
    public int insertReply(Reply r) {
        return sqlSession.insert("bdreply.insertComment", r);
    }

    // 댓글테이블에서 최근 댓글번호를 알아냄
    private String selectLastRno(){
        return sqlSession.selectOne("bdreply.selectLastRno");
    }

}
