/*sub-signup 에 수정필요한 개수 출력*/

function set_check_length(redirect_type) {
  //  alert('check');
    var redirect_page = '';
    if (localStorage.getItem('check_page2-4') !== null) {
        redirect_page='2-4';
        $('.sub-signup.signup2-4').attr('id', 'signup-write-re');
        $('.sub-signup.signup2-4').attr('data-check-length', localStorage.getItem('check_page2-4').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page2-4');
    }
    if (localStorage.getItem('check_page2-3') !== null) {
        redirect_page='2-3';
        $('.sub-signup.signup2-3').attr('id', 'signup-write-re');
        $('.sub-signup.signup2-3').attr('data-check-length', localStorage.getItem('check_page2-3').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page2-3');
    }
    if (localStorage.getItem('check_page2-2') !== null) {
        redirect_page='2-2';
        $('.sub-signup.signup2-2').attr('id', 'signup-write-re');
        $('.sub-signup.signup2-2').attr('data-check-length', localStorage.getItem('check_page2-2').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page2-2');
    }
    if (localStorage.getItem('check_page2-1') !== null) {
        redirect_page='2-1';
        $('.sub-signup.signup2-1').attr('id', 'signup-write-re');
        $('.sub-signup.signup2-1').attr('data-check-length', localStorage.getItem('check_page2-1').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page2-1');
    }
    if (localStorage.getItem('check_page1-3') !== null) {
        redirect_page='1-3';
        $('.sub-signup.signup1-3').attr('id', 'signup-write-re');
        $('.sub-signup.signup1-3').attr('data-check-length', localStorage.getItem('check_page1-3').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page1-3');
    }
    if (localStorage.getItem('check_page1-2') !== null) {
        redirect_page='1-2';
        $('.sub-signup.signup1-2').attr('id', 'signup-write-re');
        $('.sub-signup.signup1-2').attr('data-check-length', localStorage.getItem('check_page1-2').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page1-2');
    }
    if (localStorage.getItem('check_page1-1') !== null) {
        redirect_page='1-1';
        $('.sub-signup.signup1-1').attr('id', 'signup-write-re');
        $('.sub-signup.signup1-1').attr('data-check-length', localStorage.getItem('check_page1-1').split(',').length + '개');
    }else{
        localStorage.removeItem('check_page1-1');
    }
    if (redirect_type) {
        localStorage.removeItem('tm-page1');
        localStorage.setItem('tm-page1',redirect_page);
        if(redirect_page!=''){
            alert('아직 작성하지 않은 내용있습니다.');
            switch (redirect_page) {
                case "1-1":case "1-2":case "1-3":
                    location.href='./signup1.php';
                    break;
                case "2-1":case "2-2":case "2-3":case "2-4":
                    location.href='./signup2.php';
                    break;
            }
        }

    }
}

//mb_hp,mb_tel,mb_1,mb_addr1,mb_addr2,mb_addr3,mb_8,mb_img1
//mb_nick,mb_9,mb_memo
function check_data_clear(check, data) {
    var check_data = localStorage.getItem(check).replace(data, '').split(',').filter(isNotEmpty);
  // alert(localStorage.getItem(check));
    if (check_data.join(',').length == 0) {
        localStorage.getItem(check).split(',').length = 0;
        localStorage.removeItem(check);
    } else {
        localStorage.setItem(check, check_data.join(','));
    }
    set_check_length();
}


/*filter 공백 삭제*/
function isNotEmpty(value) {
    return value !== '';
}