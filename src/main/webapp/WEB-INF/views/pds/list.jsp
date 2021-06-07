<%@ page pageEncoding="UTF-8"%>

<div id="main">
	<div>
	   <br>
	    <i class="fas fa-save fa-2x"> 자료실</i>
	   <hr>
	</div><!--페이지 타이틀-->
	
	<div class="row">
	  <div class="col-5 offset-1">
	      <div class="form-group row">
	          <select class="form-control col-3 border-primary" name="findtype" id="findtype">
	              <option value="title">제목</option>
	              <option value="titcont">제목+내용</option>
	              <option value="userid">작성자</option>
	              <option value="contents">내용</option>
	          </select>&nbsp;
	          <input type="text" name="findkey" id="findkey" class="form-control col-4 border-primary">&nbsp;
	          <button type="button" id="findbtn" class="btn btn-primary"><i class="fas fa-search"></i> 검색</button>
	      </div>
	    </div>
	  <div class="col-5 text-right">
	      <button type="button" class="btn btn-light" id="newbdbtn">
	          <i class="fas fa-plus-circle"></i> 새글쓰기</button>
	  </div>
	</div><!--검색, 버튼-->
	
	<div class="row">
	    <div class="col-10 offset-1">
	    <table class = "table table-striped text-center table-hover">
	        <thead style="background:#dff0d8;">
	            <tr>
	                <th style="width: 7%">번호</th>
	                <th style="">제목</th>
	                <th style="width: 12%">작성자</th>
	                <th style="width: 10%">작성일</th>
	                <th style="width: 7%">추천</th>
	                <th style="width: 7%">조회</th>
	            </tr>
	        </thead>
	        <tbody>
	            <tr class="text-danger">
	                <th>공지</th>
	                <th><span class="badge badge-danger">Hot</span> '다크나이트 라이지즈'예매권 증정 이벤트 실시!!</th>
	                <th>운영자</th>
	                <th>2021.05.20</th>
	                <th>10</th>
	                <th>520</th>
	            </tr>
	            <tr>
	                <td>1</td>
	                <td class="text-primary"><a href="view.html">장바구니 멘 시의원 처음 보셨다요?</a></td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>2</td>
	                <td class="text-primary">장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>3</td>
	                <td class="text-primary">장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>4</td>
	                <td class="text-primary">장바구니 멘 시의원 처음 보셨다요? <span class="badge badge-danger">Hot</span></td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>5</td>
	                <td class="text-primary">장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>6</td>
	                <td class="text-primary">장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>7</td>
	                <td>장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>8</td>
	                <td>장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>9</td>
	                <td>장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	            <tr>
	                <td>10</td>
	                <td>장바구니 멘 시의원 처음 보셨다요?</td><td>gahee</td>
	                <td>2021.05.20</td><td>10</td><td>128</td>
	            </tr>
	       </tbody>
	    </table>
	  </div>
	</div>

     <div class="row">
         <div class="col-12">
             <ul class="pagination justify-content-center">
                 <li class="page-item"><a href="#" class="page-link">이전</a></li>
                 <li class="page-item active"><a href="#" class="page-link">1</a></li>
                 <li class="page-item"><a href="#" class="page-link">2</a></li>
                 <li class="page-item"><a href="#" class="page-link">3</a></li>
                 <li class="page-item"><a href="#" class="page-link">4</a></li>
                 <li class="page-item"><a href="#" class="page-link">5</a></li>
                 <li class="page-item"><a href="#" class="page-link">6</a></li>
                 <li class="page-item"><a href="#" class="page-link">7</a></li>
                 <li class="page-item"><a href="#" class="page-link">8</a></li>
                 <li class="page-item"><a href="#" class="page-link">9</a></li>
                 <li class="page-item"><a href="#" class="page-link">10</a></li>
                 <li class="page-item"><a href="#" class="page-link">다음</a></li>
             </ul>
         </div>
     </div><!--페이지네이션-->
 </div><!--main-->

    <script>
          $('#newbdbtn').click(function() {
              location.href='write.html';
          })
          $('#joinbtn').click(function() {
              location.href='/join/agree.html';
          })
    </script>