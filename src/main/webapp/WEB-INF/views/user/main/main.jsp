<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="content-language" content="kr">
<meta name="title" property="title" content="트리플악셀 :: 당신의여행에 가속을">
<meta name="viewport"
   content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>



<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="/tripfulaxel/resources/user/js/jquery.menu.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/common.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/wrest.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/placeholders.min.js"></script>
<!-- 웹 폰트 확인 후 변경 -->
<link rel="stylesheet"
   href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">

<script src="/tripfulaxel/resources/user/js/modernizr.custom.70111.js"></script>

<link rel="stylesheet"
   href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
   href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet"
   href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

<link rel="stylesheet"
   href="/tripfulaxel/resources/user/css/html/main.css?ver=20210620">
<link rel="stylesheet"
   href="/tripfulaxel/resources/user/css/html/common.css?ver=20210620">
<link rel="stylesheet"
   href="/tripfulaxel/resources/user/css/html/style.css?ver=20210620">


<script type="text/javascript"
   src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript"
   src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
   src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

<script type="text/javascript"
   src="/tripfulaxel/resources/user/js/html/main.js"></script>
<script type="text/javascript"
   src="/tripfulaxel/resources/user/js/html/style.js"></script>
<script type="text/javascript"
   src="/tripfulaxel/resources/user/js/html/function.js"></script>

<script src="https://kit.fontawesome.com/676df56a46.js"
   crossorigin="anonymous"></script>
<link
   href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
   rel="stylesheet">

<link rel="stylesheet"
   href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
   integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
   crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
   integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
   crossorigin="anonymous"></script>
<script
   src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
   integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
   crossorigin="anonymous"></script>
<script
   src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
   integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
   crossorigin="anonymous"></script>



</head>
<body>
   <style>
.temp {
   position: fixed;
   width: 100%;
   height: 100%;
   z-index: 9999;
}

.popBg {
   width: 100%;
   height: 100%;
   background: rgba(0, 0, 0, 0.6);
}

.contents {
   background: #fff;
   width: 700px;
   height: 400px;
   position: absolute;
   top: 50%;
   left: 50%;
   transform: translate(-50%, -50%);
   padding: 20px;
}

.contents p {
   white-space: pre-line;
   font-size: 28px;
}

.signiture_wrap .signiture_slider {
   visibility: hidden;
}

.signiture_wrap .signiture_slider.slick-initialized {
   visibility: visible;
}

.bestTM_area .best_list {
   visibility: hidden;
}

.bestTM_area .best_list.slick-initialized {
   visibility: visible;
}
</style>

   <!-- new_cnt : 0/-->
   <!-- 헤더 영역 시작 -->


   <style>
.find_id {
   margin: 30px 0
}

.find_id li {
   margin: 20px 0;
}

.find_id ~ p:last-of-type {
   margin-top: 10px;
}

li.header_menu i {
   color: #ff8f8f;
}

li.header_menu {
   font-size: 14px;
   font-weight: 600;
   color: #ff8c77 !important;
}

li.header_menu a {
   color: #ff8c77 !important;
}

li.header_menu:hover {
   color: #ff6143;
   font-weight: 600;
   text-shadow: 2px 6px 2px rgba(255, 115, 88, 0.2);
}
</style>

   <jsp:include page="../common/header.jsp"></jsp:include>



   <!-- 본문 영역 시작 -->
   <div class="index">

      <div class="bd-example" style="width: 1070px !important; margin: auto">
         <div id="carouselExampleCaptions" class="carousel slide"
            data-ride="carousel">

            <div class="main_tit_area"
               style="margin-bottom: 50px !important; margin-top: 50px !important;">

               <h2 class="txt_tit">&emsp;</h2>
               <h2 class="txt_tit" style="font-size: 30px; color: skyblue;">TRIPFUL
                  AXEL</h2>
               <p class="txtG txt_md">: 당신의 여행에 가속을</p>

            </div>

            <ol class="carousel-indicators">
               <li data-target="#carouselExampleCaptions" data-slide-to="0"
                  class="active"></li>
               <li data-target="#carouselExampleCaptions" data-slide-to="1"
                  class=""></li>
               <li data-target="#carouselExampleCaptions" data-slide-to="2"
                  class=""></li>
               <li data-target="#carouselExampleCaptions" data-slide-to="3"
                  class=""></li>
               <li data-target="#carouselExampleCaptions" data-slide-to="4"
                  class=""></li>
            </ol>
            <div class="carousel-inner">
               <div class="carousel-item active">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"
                     style="width: 800px; height: 535;"
                     src="/tripfulaxel/resources/images/common/local_guide_main.png"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">로컬
                        가이드 여행</h1>
                     <p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>
                  </div>
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=666&amp;fg=444&amp;text=Second slide"
                     alt="Second slide [800x400]"
                     src="/tripfulaxel/resources/images/common/trip_alone.jpg"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">나만의
                        여행</h1>
                     <p>나의 소중했던 여행, 다른 회원들과 공유해보아요!</p>
                  </div>
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
                     alt="Third slide [800x400]"
                     src="/tripfulaxel/resources/images/common/trip_together.jpg"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">같이가요
                        여행</h1>
                     <p>혼자가기엔 아쉬운 여행, 여행 파트너를 찾아보거나 다른 회원의 여행에 조인할 수 있어요!</p>
                  </div>
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
                     alt="Third slide [800x400]"
                     src="/tripfulaxel/resources/images/common/trip_planner.jpeg"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">여행플래너</h1>
                     <p>나의 여행, 플랜 만들기부터 공유까지 할 수 있어요!</p>
                  </div>
               </div>
               <div class="carousel-item">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=555&amp;fg=333&amp;text=Third slide"
                     alt="Third slide [800x400]"
                     src="/tripfulaxel/resources/images/common/trip_realtime.jpg"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">실시간
                        정보 공유</h1>
                     <p>Tripful Axel회원들의 신나는 여행 정보 공유</p>
                  </div>
               </div>

            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions"
               role="button" data-slide="prev"> <span
               class="carousel-control-prev-icon" aria-hidden="true"></span> <span
               class="sr-only">Previous</span>
            </a> <a class="carousel-control-next" href="#carouselExampleCaptions"
               role="button" data-slide="next"> <span
               class="carousel-control-next-icon" aria-hidden="true"></span> <span
               class="sr-only">Next</span>
            </a>
         </div>
         <hr>
      </div>

      <div class="bd-example" style="width: 1070px !important; margin: auto">
         <div id="carouselExampleCaptions1" class="carousel slide"
            data-ride="carousel">

            <div class="main_tit_area"
               style="margin-bottom: 50px !important; margin-top: 50px !important;">

               <h2 class="txt_tit">&emsp;</h2>
               <h2 class="txt_tit" style="font-size: 30px; color: skyblue;">제주도,
                  재주도 많다</h2>
               <p class="txtG txt_md">사진출처 : 한국관광공사</p>

            </div>

            <ol class="carousel-indicators">
               <li data-target="#carouselExampleCaptions1" data-slide-to="0"
                  class="active"></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="1"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="2"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="3"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="4"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="5"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="6"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="7"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="8"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="9"
                  class=""></li>
               <li data-target="#carouselExampleCaptions1" data-slide-to="10"
                  class=""></li>
            </ol>
            <div id="jejuData" class="carousel-inner">
               <div class="carousel-item active">
                  <img class="d-block w-100"
                     data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"
                     style="width: 800px; height: 700px;"
                     src="/tripfulaxel/resources/images/common/main2.jpg"
                     data-holder-rendered="true">
                  <div class="carousel-caption d-none d-md-block"
                     style="bottom: 50px;">
                     <h1 style="font-size: 50px; margin-bottom: 10px; color: white;">로컬
                        가이드 여행</h1>
                     <p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>
                  </div>
               </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions1"
               role="button" data-slide="prev"> <span
               class="carousel-control-prev-icon" aria-hidden="true"></span> <span
               class="sr-only">Previous</span>
            </a> <a class="carousel-control-next" href="#carouselExampleCaptions1"
               role="button" data-slide="next"> <span
               class="carousel-control-next-icon" aria-hidden="true"></span> <span
               class="sr-only">Next</span>
            </a>
         </div>
         <hr>
      </div>



      <!--       <script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>
 -->
      <script>
         $(document)
               .ready(
                     function() {
                        console.log("gg");
                        $
                              .ajax({
                                 url : "jeju",
                                 success : function(data, status,
                                       xhr) {
                                    /* console.log(JSON.parse(data.jejuData));*/
                                    /*                 h1.innerText = JSON.parse(data.jejuData).response.body.items.item[0].galTitle;
                                     *//* JSON.parse(data.jejuData).response.body.items.item[0] */
                                    console
                                          .log(JSON
                                                .parse(data.jejuData).response.body.items);
                                    $
                                          .each(
                                                JSON
                                                      .parse(data.jejuData).response.body.items.item,
                                                function(i,
                                                      item) {
                                                   console
                                                         .log(item.galWebImageUrl);
                                                   /* var aa ='<li style="text-align: center; display: none;">' +
                                                             '<a class="exhibition_href" href="#" target="_blank">' +
                                                            '<div class="exhibition_img"' + 
                                                   'style="width: 1070px; overflow: hidden; background: rgba(150, 150, 150, 0.3)' + 
                                                             'url('+ "'" +item.galWebImageUrl+ "'"+') no-repeat center/cover;">'+
                                                        '</div>' +
                                                   '</a>' +
                                                   '</li>'; */

                                                   var aa = '<div class="carousel-item">'
                                                         + '<img class="d-block w-100"'
                                                         + 'data-src="holder.js/800x400?auto=yes&amp;bg=777&amp;fg=555&amp;text=First slide"'
                                                         + 'style=" width:800px; height:700px;"'
                                                         + 'src="'
                                                         + item.galWebImageUrl
                                                         + '"'
                                                         + 'data-holder-rendered="true">'
                                                         + '<div class="carousel-caption d-none d-md-block"' +
                     'style="bottom: 50px;">'
                                                         + '<h1 style="font-size: 50px; margin-bottom: 10px; color:white;">로컬 가이드 여행</h1>'
                                                         + '<p>진짜 로컬, 그들만의 특별한 장소를 공개합니다!</p>'
                                                         + '</div>'
                                                         + '</div>';
                                                   /*                   var aa = "<p>" + "dddd" + "</p>";
                                                    */
                                                   $(
                                                         "#jejuData")
                                                         .append(
                                                               aa);
                                                });
                                 },
                                 error : function(xhr, status, error) {
                                    console.log(error);
                                 }
                              });
                     });
      </script>

      <!-- <div class="application">
        <div class="pcWrap">
            <div class="floatL left">
                <h1 style="color:black">나에게 딱 맞는 현지전문가를 만나보세요.</h1>
                <p>트래블메이커가 세상에 하나뿐인,<br>나만의 여행을 만들어드립니다.</p>
            </div>
            <button class="floatR right" onclick="location.href='/coronafreemap/';">
                맞춤투어 신청하기
            </button>
        </div>
    </div> -->




   </div>


   <script type="text/javascript"
      src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.min.js"></script>
   <script type="text/javascript"
      src="//cdnjs.cloudflare.com/ajax/libs/jquery.lazy/1.7.9/jquery.lazy.plugins.min.js"></script>
   <script type="text/javascript">
      $(function() {
         $(".lazy").Lazy();

         $('.new_best_product').on('afterChange', function() {
            $(".lazy").Lazy();
         });
      });
      function customizingLink() {
         if ('') {
            jQuery.ajax({
               url : '/skin/html/ajax.php',
               type : 'POST',
               data : 'p=cus0&mb_id=',
               success : function(data) {
                  console.log('success' + data);
                  location.href = '/skin/html/customizing1.php';
               },
               error : function(data) {
                  console.log('error' + data);
                  alert('업데이트를 실패하였습니다.')
               }
            });
         } else {
            $('.signup_pop').css('display', 'block');
         }
      }

      function findTMLink() {
         location.href = '/skin/html/findtm.php';
      }
   </script>
   <!-- //본문 영역 끝 -->

   <jsp:include page="../common/footer.jsp"></jsp:include>


   <style>
.best_list .info {
   height: 120px;
}
/*.txt_md {display: inline-block; width: 200px; white-space: nowrap; overflow: hidden; text-overflow: ellipsis; white-space: normal; line-height: 1.2; height: 3.6em; text-align: left; word-wrap: break-word; display: -webkit-box; -webkit-line-clamp: 3; -webkit-box-orient: vertical; }*/
</style>