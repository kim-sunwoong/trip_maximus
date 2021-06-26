$(document).ready(function(){
    //datepicker    
    $( "#datepicker" ).datepicker();

    // 상품상세페이지
    // toggleSlide box
//    $('.reviewBox dl').on('click', function(){
//		console.log("a");
//        $(this).find(".tm_answer").slideToggle();
//		 $('.reviewBox dl').not(this).find(".tm_answer").slideUp();
//    });

    // 팝업
    $( function() {
        $( ".dialog" ).dialog({
            autoOpen: false
        });
        $( ".popMsg" ).dialog({
            title: "궁금한 점을 문의하세요"
        });
    });

//    $( "#showMsg" ).click(function() {
//      $( ".popMsg" ).dialog( "open" );
//    });

    // 이미지 팝업 슬라이드
    /*  $('.offerSlide .slider-for').slick({
          slidesToShow: 1,
          slidesToScroll: 1,
          arrows: false,
          fade: true,
          asNavFor: '.offerSlide .slider-nav'
      });
      $('.offerSlide .slider-nav').slick({
          slidesToShow: 7,
          slidesToScroll: 1,
          asNavFor: '.offerSlide .slider-for',
          dots: true,
          centerMode: true,
          focusOnSelect: true
      });*/

    // 트래블메이커 소개 슬라이드
    $('.offerArea .bestUT_area .best_list').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 2,
        slidesPerRow: 1
    });

    // 전체 테마 접기
    $('.btnThema .btn').click(function(){
        $('.wantBox').toggleClass('on');
    });

    // tab 선택
    $(function () {
        $('.tab_cont').children('li').hide();
        $('.tab_cont li:first-child').show();
        //$('#selectTM').hide();
        $('#selectTR').show();

        $('.tabs li').click(function(){
            $('.tabs li').removeClass('on');
            $(this).addClass('on');
            $('.tab_cont').children('li').hide();
            var activeTab = $(this).attr('rel');
            $('#' + activeTab).fadeIn()
        })
    });
//    // 결제확인 팝업
//    $('.pay_conf').on('click', function(e){
//        e.preventDefault();
//        $('.pop_pay_wrap').show();
//    });
    $('.pop_pay_wrap .btn_close').on('click', function(e){
        e.preventDefault();
        $('.pop_pay_wrap').hide();
    });
//    $('.pop_pay_wrap .btn_submit').on('click', function(e){
//        e.preventDefault();
//        $('.pop_pay_wrap').hide();
//        $('.pop_pay2').show();
//    });

    // dropdown box
    $('.drop_box dd').hide();
    $('.drop_box dt').on('click', function(){
        var $dropBox = $(this).next('dd');

        $('.drop_box dd').slideUp();
        if ($dropBox.is(':animated')) return false;
        $dropBox.slideToggle();
    });

    $(".clickScroll").click(function(){
        var scrollTop = $('.moveScrollTop').offset();
        $('html, body').animate({scrollTop: scrollTop.top}, "slow");

    });

    //커스터마이징 완료
    $(".custom_fin").click(function(){
        var ask = window.confirm("커스터마이징 조건에 적합한 트래블메이커에게 자동으로 전송됩니다.");
        if (ask) {
            window.alert("커스터마이징 신청이 완료되었습니다.");
            window.location.href = "/html/applycustomizing.php";
        }
    });

    //2020 renewal
    /* index 메인페이지 / 기획전 슬라이드 */
    $('.main_visual .exhibition_slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        slidesPerRow: 1,
        swipeToSlide: true,
        dots:false,
        arrows: true,
        autoplay:true,
        autoplaySpeed:5000
    });
    /* index 메인페이지 / 시그니처 투어 슬라이드 */
    $('.signiture_wrap .signiture_slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        slidesPerRow: 1,
        swipeToSlide: true
    });
    /* special_event2_page 시그니처 슬라이더 */
    $('.special_event2_page.signiture_slider_wrap .signiture_slider').slick({
        infinite: true,
        slidesToShow: 4,
        slidesToScroll: 1,
        slidesPerRow: 1,
        swipeToSlide: true
    });

    $('.event_slider').slick({
        infinite: true,
        slidesToShow: 6,
        slidesToScroll: 6,
        slidesPerRow: 1,
        dots:true,
        arrows: false,
    });

    $('.offer_main_slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots:true,
        arrows: false,
        autoplay:true,
        autoplaySpeed:3000
    });
    $('.tm_detail_main_slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots:true,
        arrows: false,
        autoplay:true,
        autoplaySpeed:2000,
        speed: 2000
    });
    $('.tm_detail_action_slider').slick({
        infinite: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        dots:true,
        arrows: false,
        autoplay:true,
        autoplaySpeed:5000,
        speed: 2000
    });
    $('.tm_detail_slider').slick({
        infinite: true,
        slidesToShow: 2,
        slidesToScroll: 1,

        autoplay:true,
        autoplaySpeed:4000
    });
});