<%@ page pageEncoding="UTF-8"%>

     <div id="main">
     
        <script src="https://www.google.com/recaptcha/api.js"></script>
        
          <div>
           <br>
            <i class="fas fa-save fa-2x"> 자료실</i>
            <hr>
          </div><!--페이지 타이틀-->

        <div class="row">
            <div class="col-5 offset-1">
                <h3><i class="fas fa-plus-circle"> 새글 쓰기</i></h3>
            </div>
            <div class="col-5 text-right">
                <button type="button" class="btn btn-light"><i class="fas fa-list"></i> 목록으로</button>
            </div>
          </div>

          <div class="card card-body bg-light col-10 offset-1">
              <form name="boardfrm" id="boardfrm">
                  <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger" for="title">제목</label>
                    <input type="text" id="title" name="title" class="form-control col-9 border-danger">
                  </div>
                  <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger" for="userid">작성자</label>
                    <input type="text" id="userid" name="userid" class="form-control col-9 border-danger" readonly>
                  </div>
                  <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger" for="contents">본문내용</label>
                      <textarea id="contents" name="contents" rows="15" class="form-control col-9 border-danger"></textarea>
                  </div>

                  <div class="form-group row">
                      <label class="col-form-label col-2 text-right text-danger" for="file1">파일첨부</label>
                      <div class="custom-file col-9">
                        <input type="file" name="file" id="file1" class="custom-type-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                      </div>
                      <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file2" class="custom-type-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                      </div>
                      <div class="custom-file col-9 offset-2">
                        <input type="file" name="file" id="file3" class="custom-type-input">
                        <label class="custom-file-label">첨부할 파일을 선택하세요</label>
                      </div>
                  </div>

                  <div class="form-group row">
                    <label class="col-form-label col-2 text-right text-danger">자동입력방지</label>
					<div class="g-recaptcha"  data-sitekey="6LdpIwgbAAAAAEuV2HMBfjfinklijwPakmcOWFMc"></div>
					<input type="hidden" id="g-recaptcha" name="g-recaptcha" />
                  </div>
                  <div class="form-group row">
                        <label class="col-2 col-form-label"></label>
                        <input type="text" id="join" name="join" class="form-control col-3 border-danger">&nbsp;
                        <button type="button" class="btn btn-dark"><i class="fas fa-question-circle"></i>다른 capcha 보기</button>
                  </div>
                  <div class="form-group row">
                      <hr class="col-10">
                      <div class="col-12 text-center">
                        <button type="button" class="btn btn-primary"><i class="fas fa-check-circle"></i> 입력완료</button>
                        <button type="button" class="btn btn-danger"><i class="fas fa-times-circle"></i>취소하기</button>
                      </div>
                  </div>
              </form>
          </div>
       </div><!--main-->
  