<%@ page pageEncoding="UTF-8"%>

    <style>
          .tbbg1 { background: lightgreen }
          .tbbg2 { background: #ccff99 }
          .tbbg3 { background: #ffffcc }
          .pushdwm { margin-top: 50px }
          .cmtbg1 { background: yellow; padding: 7px 0 }
          .cmtbg2 { background: lime; padding: 7px 0 }
          .pushright { float: right }
          img { background: url(/img/Isabelle.png); }
      </style>

   <div id="main">
          <div>
             <br>
              <i class="fas fa-image fa-2x"> 갤러리</i>
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
                    <i class="fas fa-plus-circle"></i> 사진올리기</button>
                </div>
              </div>
          </div>

          <div class="row">
              <table class="table col-10 offset-1">
                  <tr class="tbbg1 text-center">
                      <th colspan="2"><h2>예쁜 고양이들이...</h2></th>
                  </tr>
                  <tr class="tbbg2">
                      <td class="width: 50%">gahee</td>
                      <td class="text-right">2021.05.21 11:11:11 / 22 / 33</td>
                  </tr>
                  <tr class="tbbg3">
                      <td colspan="2"><img src="/img/cats.PNG" style="width: 100%">
                      </td>
                  </tr>
              </table>
              <hr>
         </div>
          <div class="row">
            <div class="col-5 offset-1">
                <button type="button" class="btn btn-warning text-white"><i class="fas fa-edit"></i> 수정하기</button>
                 <button type="button" class="btn btn-danger"><i class="fas fa-trash-alt"></i> 삭제하기</button>
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
                  <tr class="tbbg3">
                      <td colspan="2">
                          <div><img src="/img/curly.png" class="img-fluid"></div>
                          <div><img src="/img/Isabelle.png" class="img-fluid"></div>
                          <div><img src="/img/suji2.jpg" class="img-fluid"></div>
                      </td>
                  </tr><!-- 본문 -->
                  <tr>
                      <td colspan="2" class="tbbg4">첨부1 : <i class="far fa-file-archive"></i> homework.zip (123KB)</td>
                  </tr>
                  <tr>
                      <td colspan="2" class="tbbg4">첨부2 : <i class="far fa-file-alt"></i> homework.txt (456KB)</td>
                  </tr>
                  <tr>
                      <td colspan="2" class="tbbg4">첨부3 : <i class="far fa-file-image"></i> homework.png (789KB)</td>
                  </tr>
              </table></div>
      </div><!-- main -->
  