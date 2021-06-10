<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<%-- 줄바꿈 기호를 변수로 생성 : br태그 변환 필요! --%>
<c:set var="newChar" value="
" scope="application" />

<div id="main">
  <div>
     <br>
      <i class="fas fa-comments fa-2x"> 자유 게시판</i>
     <hr>
  </div><!--페이지 타이틀-->

  <div>
      <div class="row">
          <div class="col-5 offset-1">
              <button type="button" class="btn btn-light"><i class="fas fa-chevron-left"></i> 이전게시물</button>&nbsp;
              <button type="button" class="btn btn-light"><i class="fas fa-chevron-right"></i> 다음게시물</button>
          </div>
        <div class="col-5 text-right">
            <button type="button" class="btn btn-light">
            <i class="fas fa-plus-circle"></i> 새글쓰기</button>
        </div>
      </div>
  </div>

  <div class="row">
      <table class="table col-10 offset-1">
          <tr class="tbbg1 text-center">
              <th colspan="2"><h2>${bd.title}</h2></th>
          </tr>
          <tr class="tbbg2">
              <td class="width: 50%">${bd.userid}</td>
              <td class="text-right">${bd.regdate} / ${bd.thumbup} / ${bd.views}</td>
          </tr>
          <tr class="tbbg3 bdcsize">
              <td colspan="2">${fn:replace(bd.contents, newChar, "<br>")}</td>
          </tr>
      </table>
 </div>
  <div class="row">
    <div class="col-5 offset-1">

        <%-- 자신이 작성한 글에 대해 수정/삭제 버튼이 표시되어야함 --%>
        <c:if test="${not empty UID and UID eq bd.userid}">
            <button type="button" class="btn btn-warning text-white"><i class="fas fa-edit"></i> 수정하기</button>
            <button type="button" class="btn btn-danger"><i class="fas fa-trash-alt"></i> 삭제하기</button>
        </c:if>

    </div>
    <div class="col-5 text-right">
        <button type="button" class="btn btn-light"><i class="fas fa-list"></i> 목록으로</button>
    </div>
  </div><!-- 댓글쓰기 -->

  <div>
      <div class="row">
          <h3 class="col-10 offset-1">
              <i class="far fa-comments"></i> 나도 한마디</h3>
      </div>
      <table class="table col-10 offset-1">
          <tr>
              <td><h4>gahee</h4></td>
              <td>
                  <div class="cmtbg1">2021.05.21 10:10:10</div>
                  <div><p>지금도 등골 브레이커 맞습니다.<br>애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고,재료비에서 깜놀...<br><br>그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠^^</p></div>
              </td>
          </tr>
          <tr>
              <td></td>
              <td>
                  <div class="cmtbg2">
                      <span>siestageek</span>
                      <span class="pushright">2021.05.21 10:10:10</span>
                  </div>
                  <div>
                      <p>정말인가요?우아~심하다!~</p>
                  </div>
              </td>
          </tr>
          <tr>
              <td><h4>gahee</h4></td>
              <td>
                  <div class="cmtbg1">2021.05.21 10:10:10</div>
                  <div><p>지금도 등골 브레이커 맞습니다.<br>애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고,재료비에서 깜놀...<br><br>그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠^^</p></div>
              </td>
          </tr>
          <tr>
              <td><h4>gahee</h4></td>
              <td>
                  <div class="cmtbg1">2021.05.21 10:10:10</div>
                  <div><p>지금도 등골 브레이커 맞습니다.<br>애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고,재료비에서 깜놀...<br><br>그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠^^</p></div>
              </td>
          </tr>
          <tr>
              <td><h4>gahee</h4></td>
              <td>
                  <div class="cmtbg1">2021.05.21 10:10:10</div>
                  <div><p>지금도 등골 브레이커 맞습니다.<br>애들 레고교육센터인가 뭔가 보낼려다가...학원비는 둘째치고,재료비에서 깜놀...<br><br>그냥 작은 거 사다가 애들하고 맞추고 놀고 있습죠^^</p></div>
              </td>
          </tr>
      </table>
  </div><!-- 댓글목록 -->

  <div class="row">
      <form name="replyfrm" id="replyfrm"
            class="card card-body bg-light col-10 offset-1">
          <div class="form-group row justify-content-center">
             <label class="col-form-label col-2 pushdwn" for="reply">작성자</label>
             <textarea class="form-control col-7 border-danger" name="reply" id="reply" rows="5"></textarea>&nbsp;&nbsp;
              <button class="form-control btn btn-dark col-2 pushdwn" type="button"><i class="fas fa-comment-dots"></i> 댓글쓰기</button>
          </div>
      </form>
  </div><!-- 댓글쓰기 -->
</div><!-- main -->
