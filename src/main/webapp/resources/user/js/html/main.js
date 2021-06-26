jQuery(document).ready(function () {

/*$('.index .bestTM_area .best_list').slick({
    infinite: true,
    slidesToShow: 3,
    slidesToScroll: 1,
    rows: 2,
    slidesPerRow: 1
});*/

$('.index .bestTM_areas .best_list').slick({
    infinite: true,
    slidesToShow: 4,
    slidesToScroll: 1
});


/* 메인 인기있는 트래블메이커 슬라이드 */
$('.index .new_best_tm .best_list').slick({
    infinite: true,
    lazyLoad:'ondemand',
    slidesToShow: 3,
    slidesToScroll: 1,
    rows: 2,
    slidesPerRow: 1,
    dots:true,
    arrows: true,
});

/*인기있는 맞춤투어*/
$('.index .new_best_product .best_list').slick({
    infinite: true,
    lazyLoad:'ondemand',
    slidesToShow: 3,
    slidesToScroll: 1,
    rows: 2,
    slidesPerRow: 1
});


$('.index .event_slider').slick({
    infinite: true,
    slidesToShow: 1,
    slidesToScroll: 1,
    dots:true,
    arrows: true
});

//datepicker 한글화
$.datepicker.setDefaults({
    dateFormat: 'yy-mm-dd',
//    showButtonPanel: true,
//    closeText: '초기화',
//    currentText: '초기화',
    prevText: '이전 달',
    nextText: '다음 달',
    monthNames: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    monthNamesShort: ['1월', '2월', '3월', '4월', '5월', '6월', '7월', '8월', '9월', '10월', '11월', '12월'],
    dayNames: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesShort: ['일', '월', '화', '수', '목', '금', '토'],
    dayNamesMin: ['일', '월', '화', '수', '목', '금', '토'],
    showMonthAfterYear: true,
    yearSuffix: '년',
    minDate: 0,
    maxDate: 90,
    beforeShowDay: disableAllTheseDays
});

$("#datepicker").datepicker();
$("#datepicker1").datepicker();
$("#datepicker2").datepicker();
$("#datepicker3").datepicker();
$("#datepicker4").datepicker();

function disableAllTheseDays(date) {
    var m = date.getMonth(), d = date.getDate(), y = date.getFullYear();
    for (i = 0; i < disabledDays.length; i++) {
        if($.inArray(y + '-' +(m+1) + '-' + d,disabledDays) != -1) {
            return [false];
        }
    }
    return [true];
}

//로그인 팝업
$(".login_link").click(function () {
  $("html").addClass("pop");
  $(".pop_wrap:visible").hide();
  $(".login_pop").parent(".pop_wrap").show();
});
$(document).on('click', '.login_link', function () {
    $("html").addClass("pop");
    $(".pop_wrap:visible").hide();
    $(".login_pop").parent(".pop_wrap").show();
});
$(".signup_link").click(function () {
    $("html").addClass("pop");
    $(".pop_wrap:visible").hide();
    $(".signup_pop").parent(".pop_wrap").show();
});
$(".find_password_link").click(function () {
    $("html").addClass("pop");
    $(".pop_wrap:visible").hide();
    $(".find_password_pop").parent(".pop_wrap").show();
});
$(".find_id_link").click(function () {
    $("html").addClass("pop");
    $(".pop_wrap:visible").hide();
    $(".find_id_pop").parent(".pop_wrap").show();
});

$(".find_id_button").click(function () {
    /*	$("html").addClass("pop");
        $(".pop_wrap:visible").hide();
        $(".find_id_fin_pop").parent(".pop_wrap").show();*/
});

$(".find_password_button").click(function () {
    $("html").addClass("pop");
    $(".pop_wrap:visible").hide();
    $(".find_password_fin_pop").parent(".pop_wrap").show();
});

$(".pop_wrap").click(function (e) {
    e.stopPropagation();
    $(this).hide();
    $("html").removeClass("pop");
});
$(".close_btn").click(function () {
    $(".pop_wrap").hide();
    $("html").removeClass("pop");
});
$(".member_pop_box, .mypage_pop_box").click(function (e) {
    e.stopPropagation();
});

//  var scrollTopP = $('.moveScrollTop').offset();
//	('html,body').animate({scrollTop: scrollTopP.top}, "slow");

// 커스터마이징 - 이외 국가의 경우 구글 독스 새창 띄우기
$('#countryOthers').on('click',function(){
    //alert('준비중입니다.\n잠시만 기다려주세요:)');
    //return false;
    window.open('https://forms.gle/B5XwPoGS6HnU4yXM7', '이외 도시 맞춤 신청');
});


//ready funtion 끝
});
