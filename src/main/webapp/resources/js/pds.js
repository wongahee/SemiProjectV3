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
