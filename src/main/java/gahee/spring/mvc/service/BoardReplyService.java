package gahee.spring.mvc.service;

import gahee.spring.mvc.vo.Reply;

import java.util.List;

public interface BoardReplyService {

    List<Reply> readReply(String bdno);

    boolean newComment(Reply r); // 댓글작성
    boolean newReply(Reply r); // 대댓글작성


}