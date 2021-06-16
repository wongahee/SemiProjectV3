// * pds
// list - 새글쓰기 시 pds/write로 이동
$('#newpdsbtn').on('click', function (){
    location.href = '/pds/write';
});

// write - 입력완료
$('#newpds').on('click', function () {
    if($('#title').val == '') alert('');
    else if($('#contents').val == '') alert('');
    else if(grecaptcha.getResponse() =='') alert('');
    else {
        const frm = $('#pdsfrm');
        frm.attr('method', 'post');
        frm.attr('action', '/pds/write');
        frm.submit();
    }
});

// recomand - thumbup 추천수 증가
$('#pdthumbtn').on('click', function (){
   location.href = '/pds/recommd?pno=' + $('#pno').val();
});

// prebtn - 이전게시물
$('#pdprvbtn').on('click', function (){
    location.href = '/pds/prev?pno=' + $('#pno').val();
});

// nextbtn - 다음게시물
$('#pdnxtbtn').on('click', function (){
    location.href = '/pds/next?pno=' + $('#pno').val();
});

// removebtn
$('#pdrmvbtn').on('click', function (){
    location.href = '/pds/pdrmv?pno=' + $('#pno').val();
});
