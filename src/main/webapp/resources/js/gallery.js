// show img - 썸네일 누르면 사진보기
function showimg(gno){
    location.href = '/gallery/view?gno=' + gno;
}

// new gallery - 새글쓰기 버튼 클릭시 이동
$('#newgalbtn').on('click', function (){
   location.href = '/gallery/write';
});

// write gallery - 새글쓰기
$('#newgal').on('click', function (){
    if ($('#title').val() == '') alert('제목을 작성하세요!');
    else if ($('#contents').val() == '') alert('본문을 작성하세요!');
    else if (grecaptcha.getResponse() == '') alert('자동가입방지를 체크하세요!');
    else {
        const frm = $('#galfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/gallery/write');
        frm.attr('enctype', 'multipart/form-data');
        frm.submit();
    }
});

// show attach filename - 파일첨부에서 파일 선택 시 파일명 보이기
$('#file1').on('change', function () {              // gallery/write 41줄j
   var fname = $(this).val();
   fname = fname.substring(fname.lastIndexOf("\\") + 1); // 마지막\부터 짤라내어 fname에 넣음
   $(this).next('.custom-file-label').html(fname);
});

$('#file2').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});

$('#file3').on('change', function () {
    var fname = $(this).val();
    fname = fname.substring(fname.lastIndexOf("\\") + 1);
    $(this).next('.custom-file-label').html(fname);
});













