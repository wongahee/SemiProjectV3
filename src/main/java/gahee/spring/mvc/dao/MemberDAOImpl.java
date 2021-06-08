package gahee.spring.mvc.dao;

import gahee.spring.mvc.vo.Member;
import gahee.spring.mvc.vo.Zipcode;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class MemberDAOImpl implements MemberDAO {

    @Autowired private SqlSession sqlSession;

    @Override
    public int insertMember(Member m) {
        return sqlSession.insert("member.insertMember", m);
    }

    @Override
    public List<Zipcode> selectZipcode(String dong) {
        return sqlSession.selectList("member.selectZipcode", dong);
    }

    @Override
    public int selectOneUserid(String uid) {
        return 0;
    }

    @Override
    public int selectLogin(Member m) {
        return 0;
    }
}
