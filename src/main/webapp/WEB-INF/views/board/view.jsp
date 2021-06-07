<%@ page pageEncoding="UTF-8"%>

      <style>
          .tbbg1 { background: #dff0f8 }
          .tbbg2 { background: #ccff99 }
          .tbbg3 { background: #ffffcc }
          .pushdwm { margin-top: 50px }
          .cmtbg1 { background: yellow; padding: 7px 0 }
          .cmtbg2 { background: lime; padding: 7px 0 }
          .pushright { float: right }
      </style>

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
                      <th colspan="2"><h2>[날씨]"숨이 턱턱"..전국 곳곳 '폭염경보'</h2></th>
                  </tr>
                  <tr class="tbbg2">
                      <td class="width: 50%">gahee</td>
                      <td class="text-right">2021.05.21 11:11:11 / 22 / 33</td>
                  </tr>
                  <tr class="tbbg3">
                      <td colspan="2">
                        중복(中伏)인 28일 불볕더위가 이어지며 전국 곳곳에 폭염특보가 발효 중이다.<br><br><br><br>기상청에 따르면 이날 오전 11시 이후 강원도 강릉시평지, 충청북도 옥천군, 전라남도 나주시&middot;곡성군&middot;구례군&middot;화순군 등에 폭염경보가 내려져 있다.<br><br> 경상북도에는 구미시&middot;영천시&middot;경산시&middot;군위군&middot;청도군&middot;고령군&middot;성주군&middot;칠곡군&middot;김천시&middot;상주시&middot;문경시&middot;예천군&middot;안동시&middot;영주시&middot;의성군&middot;청송군&middot;영덕군&middot;포항시&middot;경주시에, 경상남도는 양산시&middot;창원시&middot;김해시&middot;밀양시&middot;의령군&middot;함안군&middot;창녕군&middot;진주시&middot;하동군&middot;산청군&middot;함양군&middot;거창군&middot;합천군&middot;사천시에<br><br>폭염경보가 발효중이다.<br><br> 광주,대구,부산,울산 역시 폭염경보 발효지역이다.<br><br><br><br> 서울을 비롯해 대전,세종시,김포시를 제외한 경기도 지역 등에는 폭염주의보가 내려져 있다.<br><br> 기상청은 "폭염특보가 발효된 지역에서는 가급적 야외활동을 자제하고 물을 평소보다 자주 섭취하라"며 "실내에서는 햇볓을 막아주고<br><br> 통풍이 잘되도록 환기하라"고 당부했다.<br><br>폭염특보 발표구역의 일최고열지수(Heat Index)는 34~35로 예상된다.<br><br><br><br>한편 이날 제주도를 중심으로 소나기가 오는 곳이 있겠다. <br><br>기상청은 "제주도는 현재 대기 불안정으로 천둥&middot;번개를 동반한 소나기가 내리는 곳이 있어 시설물관리와 안전에 유의하라"고 말했다.<br>
                      </td>
                  </tr>
              </table>
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
