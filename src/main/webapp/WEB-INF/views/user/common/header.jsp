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

<!-- 파비콘 이미지 변경 -->
<link rel="icon" type="image/png" sizes="16x16"
   href="https://www.travelmaker.co.kr/img/favicon-16x16.png">


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
   src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
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

#rotating_img {
   -webkit-animation: rotation 2s infinite linear;
}

@
-webkit-keyframes rotation {
   from {-webkit-transform: rotate(359deg);
}

to {
   -webkit-transform: rotate(0deg);
}
}
</style>


   <header style="display: contents;">
   

      <div class="pcWrap clearfix"
         style="background-color: skyblue; width: 100%;">
         <div class="floatL logo_area"></div>
         <div class="floatR login_area" style="margin-right: 30px;">
            
         
            <ul class="clearfix">
                     
            
               <li class="floatL">
               <a href="${ pageContext.servletContext.contextPath }/insertGuide">
                     <span style="color: white; font-size: 18px; font-weight: bold;">로컬가이드
                        등록</span>
               </a></li>


               <c:if test="${ empty sessionScope.loginUser }">
                  <li class="floatL"><a class="login_link"
                     href="javascript:void(0);"> <span
                        style="color: white; font-size: 18px; font-weight: bold;">로그인</span>
                  </a></li>
               </c:if>

               <c:if test="${ !empty sessionScope.loginUser }">
               <li class="floatL">
               <a class="login_link"
               href="${ pageContext.servletContext.contextPath }/user/logout"> 
            <span style="color: white; font-size: 18px; font-weight: bold;">로그아웃</span></a></li>
                <li class="floatL">
                <a href="${ pageContext.servletContext.contextPath }/">
                <span style="color: white; font-size: 18px; font-weight: bold;">
                          MyPage</span>
               </a></li>
               </c:if>
               
           
                 <c:if test="${ sessionScope.loginUser.userGuideYN eq 'Y' }">
                 <li class="floatL">
                <a href="${ pageContext.servletContext.contextPath }/">
                <span style="color: white; font-size: 18px; font-weight: bold;">
                          GuidePage</span>
               </a></li>
               </c:if>            

               <li class="floatL"><a class="signup_link"
                  href="javascript:void(0);"> <span
                     style="color: white; font-size: 18px; font-weight: bold;">회원가입</span>
               </a></li>

               <li class="floatL"><a class=""
                  href="${ pageContext.servletContext.contextPath }/admin/"> <span
                     style="color: white; font-size: 18px; font-weight: bold;">admin</span>
               </a></li>
            </ul>
         </div>

         <article class="find_btn_area floatR " style="margin-right: 15%;">

            <div style="margin-top: 5px; margin-bottom: -10px;">
               <a href="/"><img id="rotating_img"
                  style="width: 90px; height: 99px; object-fit: cover;"
                  src="/tripfulaxel/resources/images/common/3.png" alt=""></a> <a
                  href="/"><img style="width: 300px; height: 99px"
                  src="/tripfulaxel/resources/images/common/2.png" alt=""></a>

            </div>



            <ul>
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=1&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 로컬가이드</span></a></li>
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=3&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 나만의 여행</span></a></li>
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=2&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 같이가요 여행</span></a></li>
               <li class="floatL header_menu"><a href="#"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;">여행 플래너</span></a></li>
               <li class="floatL header_menu">
                    <a href="${pageContext.servletContext.contextPath}/share/select/chatRoom?roomCode=0&userCode=0" class="btnLineC txt_md" >
                    <span style="color:white; font-size: 20px;">실시간 정보 공유</span></a>
                </li>
            </ul>
         </article>
      </div>
   </header>
</body>
</html>