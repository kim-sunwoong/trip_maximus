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
<title>TRIPFUL AXEL  </title>


<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">
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
   href="/tripfulaxel/resources/user/css/html/common2.css?ver=20210620">
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
<script src="https://code.jquery.com/jquery-3.2.1.min.js"
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

@-webkit-keyframes rotation {
    from {-webkit-transform: rotate(359deg);}
    to   {-webkit-transform: rotate(0deg);}
}
</style>


   <header style="display: contents;">
   
   
   <!-- 회원가입 팝업 시작 -->
   <div class="pop_bg pop_wrap">
      <div class="member_pop_box close_wrap signup_pop"
         style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
         <span class="close_btn"></span>
         <div class="member_wrap" style="width: 100%; padding: 0 5%;">
            <h3 class="signup_link tit txt_bold">회원가입</h3>

            <span class="txt_sm or" style="margin-top: 3vh">당신의 여행에 가속을</span>
            <p style="text-align: right; margin-top: 20px; color: #ff7358;">*
               필수 입력</p>

            <form style="margin-top: 10px;" name="frm1" class="member_form"
               method="post"
               action="${ pageContext.servletContext.contextPath }/user/regist"
               name="fregisterform" autocomplete="off">

               <input type="email" id="userEmail" name="userEmail" value=""
                  required class="email frm_input full_input" size="70"
                  maxlength="100" placeholder="* 이메일 주소">

               <div id="checkMessage">
                  <!-- 중복확인용 -->
                  <input id="duplicationCheck" class="btnBgC txt_bs submit"
                     type="button" value="중복확인"
                     style="margin-top: 3vh; text-align: center;">
               </div>

               <!-- 히든 중복체크를 위한 것  -->
               <input type="hidden" id="check" name="check" value="fail">

               <input type="text" id="userName" name="userName" value=""
                  required class="frm_input half_input" size="3"
                  placeholder="* 이름(예:홍길동)"> <input type="text"
                  id="userPhone" name="userPhone" value="" required
                  class="frm_input half_input" placeholder="* 전화번호(예:010-1234-5678)">

               <input type="password" id="userPwd" name="userPwd"
                  value="" required class="frm_input half_input"
                  minlength="3" maxlength="20" placeholder="* 비밀번호"> <input
                  type="password" id="repassword" name="repassword" required
                  value="" class="frm_input half_input right_input"
                  minlength="3" maxlength="20" placeholder="* 비밀번호 확인"> <input
                  type="text" id="userBday" name="userBday" value=""
                  required class="frm_input half_input"
                  placeholder="* 출생연도(예:19900120)">


               <div class="gender_wrap" style="height: 50px;">
                  <input type="radio" id="gender1" name="userGender" value="남자"
                     checked> <label for="gender1" class="cf"
                     style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
                     <i style="margin: 12px 9px;" class="floatL"></i> <span
                     class="floatL" style="font-size: 14px; line-height: 38px;">남</span>
                  </label> <input type="radio" id="gender2" name="userGender" value="여자">
                  <label for="gender2" class="cf"
                     style="margin-top: 10px; vertical-align: middle; height: 40px; display: inline-block; width: calc(50% - 5px);">
                     <i style="margin: 12px 9px;" class="floatL"></i> <span
                     class="floatL" style="font-size: 14px; line-height: 38px;">여</span>
                  </label>
               </div>

               <p class="checkbox_wrap">
                  <input type="checkbox" id="agree_all"> <label
                     for="agree_all"> <i id="agree_all_i"></i> <span>아래
                                           약관에 모두 동의합니다.</span>
                  </label>
               </p>

               <p class="checkbox_wrap">
                  <input type="checkbox" id="agree_1" class="checkOne" name="check">
                  <label for="agree_1" style="vertical-align: middle;"> <i
                     id="agree_1_i"></i> <span
                     onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php')"
                     target="_blank">회원가입 및 운영약관(필수)</span>
                  </label>
               </p>

               <p class="checkbox_wrap">
                  <input type="checkbox" id="agree_2" class="checkOne" name="check">
                  <label for="agree_2" style="vertical-align: middle;"> <i
                     id="agree_2_i"></i> <span
                     onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/privacypolicy.php')"
                     target="_blank">개인정보 수집 및 이용(필수)</span>
                  </label>
               </p>
               <p class="checkbox_wrap">
                  <input type="checkbox" id="agree_3" class="checkOne" name="check">
                  <label for="agree_3" style="vertical-align: middle;"> <i
                     id="agree_3_i"></i> <span
                     onclick="javascript:window.open('https://travelmaker.co.kr/skin/html/conditions.php#location')"
                     target="_blank">위치정보 이용약관(선택)</span>
                  </label>
               </p>
               <p class="checkbox_wrap">
                  <input type="checkbox" id="agree_4" name="agree_4" value="1"
                     class="checkOne"> <label for="agree_4"> <i
                     id="agree_4_i"></i> <span>마케팅 정보수신에 동의(선택)</span>
                  </label>
               </p>

               <input type="hidden" name="w" value=""> <input
                  type="hidden" name="s" value=""> <input id="signinbtn"
                  class="btnBgC txt_bs submit" type="submit" value="가입하기"
                  onclick="return regist();" style="margin-top: 3vh;">

            </form>
         </div>
      </div>
   </div>
   <!-- //회원가입 팝업 끝 -->


   <!-- 로그인 팝업 시작-->

   <div class="pop_bg pop_wrap signup_pop">
      <div class="member_pop_box close_wrap login_pop"
         style="width: 90%; max-width: 500px;; padding: 5vh 0; max-height: 600px;">
         <span class="close_btn"></span> <span class="close_btn"></span>
         <div class="member_wrap" style="width: 100%; padding: 0 5%;">
            <h3 class="tit txt_bold">로그인</h3>

            <span class="txt_sm or" style="margin-top: 3vh">환영합니다!</span>
            <form class="member_form" name="flogin"
               action="${ pageContext.servletContext.contextPath }/user/login"
               method="post" style="margin-top: 3vh">
               <input type="email" name="userEmail" id="userEmail" required
                  class="id frm_input" size="30" maxLength="30" placeholder="이메일 주소"
                  style="margin: 0 auto; width: 60%; display: flex;"> <input
                  type="password" name="userPwd" id="userPwd" required
                  class="frm_input" size="30" maxLength="30" placeholder="비밀번호"
                  style="margin: 10px auto 0; width: 60%; display: flex;">
               <button id="loginSubmit" class="btnBgC txt_bs submit" type="submit"
                  style="margin: 10px auto 0; width: 60%; margin-left: 20%">로그인</button>
            </form>

            <ul class="find_signup clearfix">
               <li class="floatL">
                  <a href="javascript:void(0);"
                  class="find_password_link txt_sm txt_bold">비밀번호 찾기/</a> 
                  <a href="javascript:void(0);" class="find_id_link txt_sm txt_bold">이메일(ID)
                                         찾기</a></li>
               <li class="floatR"><a href="${ pageContext.servletContext.contextPath }/admin/loginpage"
                  class="txt_bold">관리자 로그인</a></li>
            </ul>
         </div>
      </div>
   </div>
   <!-- //로그인 팝업 끝-->

   <script type="text/javascript">
      $(document).ready(function(){
         /* 로그인 실패 여부  */
            var login = '${ requestScope.failLogin }';
            console.log("값 체크 :" +login);
            if (login != null && login != '') {
               alert(login);
            }
      });
   </script>




   <!-- 이메일(ID) 찾기 팝업 -->
   <div class="pop_bg pop_wrap">
      <div class="member_pop_box close_wrap find_id_pop"
         style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
         <span class="close_btn"></span>
         <div class="member_wrap" style="width: 100%; padding: 0 5%;">
            <h3 class="tit txt_bold">이메일(ID) 찾기</h3>
            <p class="pop_sub_title txt_bs" style="text-align: center;">
               Tripful Axel 가입 시 입력했던 이름 및 전화번호를 입력해주시면<br>이메일(ID)을 알려드립니다.<br>
               <span>* 표시는 필수 입력입니다. <br>(생년월일 입력시에는 전체 다 입력해주세요)
               </span>
            </p>
            <form class="member_form"
               id ="findEmailForm"
               >
               <input type="text" placeholder="* 이름(예:홍길동)" value="김진수"
                  id="findUserName" name="userName"> <input type="text"
                  id="findUserPhone" name="userPhone" value="010-1234-5678" required
                  class="frm_input half_input" placeholder="* 전화번호(예:010-1234-5678)">


               <input type="text" id="findUserBday" name="userBday" value="19901129"
                  required class="frm_input half_input"
                  placeholder="* 출생연도(예:19900120)">

               <button onClick="findEmail(event)" class="btnBgC txt_bs find_id_button submit" type="submit"
                  value="이메일(ID) 찾기" style="margin-top: 3vh;">이메일(ID) 찾기</button>
            </form>

            <ul class="find_signup clearfix">
               <li class="floatL"><a href="javascript:void(0);"
                  class="find_password_link txt_sm txt_bold">비밀번호 찾기</a></li>
               <li class="floatR"><a href="javascript:void(0);"
                  class="signup_link txt_sm txt_bold">회원가입</a></li>
            </ul>

         </div>
      </div>
   </div>
   <!-- //이메일(ID) 찾기 팝업 끝-->
   <script>
   
   
   
   </script>


   <!-- 이메일(ID) 찾기 완료 팝업 -->
   <div class="pop_bg pop_wrap" id="finded_email_parent" style="display: none;">
      <div class="member_pop_box close_wrap find_id_fin_pop">
         <span class="close_btn"></span>
         <div class="member_wrap find_member_wrap">
            <h3 class="tit txt_bold">이메일(ID) 찾기</h3>
            <p class="txt_bs txt_bold">- 조회 결과 입력하신 정보와 일치하는 이메일은 아래와 같습니다.</p>
            <p class="txt_bs txt_bold">- 이름, 성별, 생년월일이 동일한 동명이인의 이메일이 함께 검색될
               수 있습니다.</p>
         <p class="txt_bs txt_bold">
                  이메일(ID)은<br><input id="finded_email"></input><br>입니다.</p>

            <a class="btnBgC txt_bs login_link submit"
               href="javascript:void(0);"
               style="padding: 10px; margin-top: 30px; text-align: center; width: 100%;">로그인</a>
         </div>
      </div>
   </div>
   <!-- //이메일(ID) 찾기 완료 팝업 끝-->

<!-- 이메일 찾기 js -->
   <script>

   function findEmail(event){
      event.preventDefault()
         
           var findUserName = $("#findUserName").val();
            var findUserPhone = $("#findUserPhone").val();
            var findUserBday = $("#findUserBday").val(); 
         
            $.ajax({
               url:"${ pageContext.servletContext.contextPath }/user/findEmail",
               type : 'post',
               data : {
                  userName: findUserName,
                  userPhone : findUserPhone,
                  userBday : findUserBday
               },
               success: function(data,textStatus,xhr) {
                  
                  if(data.res == 'fail') {
                     //찾지못함.
                   console.log("값 찾지못함")
                     
                  }  else {
                     //찾음
                     const resData = JSON.parse(data);
                        console.log("값 찾음 : " + resData.email);
                        $(".pop_wrap:visible").hide();
                        document.getElementById("finded_email").value = resData.email;
                        $(".find_id_fin_pop").parent(".pop_wrap").show();
                  }
               },
               error : function(xhr,status,error) {
                  console.log(error);
               }
            })
      }

</script>



   <!-- 비밀번호 찾기 팝업-->
   <div class="pop_bg pop_wrap">
      <div class="member_pop_box close_wrap find_password_pop"
         style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
         <span class="close_btn"></span>
         <div class="member_wrap" style="width: 100%; padding: 0 5%;">
            <h3 class="tit txt_bold">비밀번호 찾기</h3>
            <p class="txt_bs pop_sub_title">
               Tripful Axel 가입시 작성한<br>이름, 이메일, 생년월일를 입력해주세요.<br>
                                해당 메일 주소로 임시 비밀번호를 메일을 보내드립니다.
            </p>
            <form class="find_password_form member_form"
               >
            
               <input type="text" placeholder="* 이름(예:홍길동)" id="serachUserName" name="userName">
               <input type="email" placeholder="이메일 주소" id="serachUserEmail" name="userEmail">
            
               <input type="text" id="serachUserBday" name="userBday" value="19901129"
                  required class="frm_input half_input"
                  placeholder="* 출생연도(예:19900120)">

               <button class="btnBgC txt_bs find_password_button submit" onClick = "findPassword(event)"
                  type="button" value="비밀번호 재설정 메일 보내기">비밀번호 재설정 메일 보내기</button>
            </form>
            <ul class="find_signup clearfix">
               <li class="floatL"><a href="javascript:void(0);"
                  class="find_id_link txt_sm txt_bold">이메일(ID) 찾기</a></li>
               <li class="floatR"><a href="javascript:void(0);"
                  class="signup_link txt_sm txt_bold">회원가입</a></li>
            </ul>
         </div>
      </div>
   </div>
   <!-- //비밀번호 찾기 팝업 끝-->
   
<!-- 비밀번호   찾기  -->
   <script>

   function findPassword(event){
      event.preventDefault()
         
          var serachUserName = $("#serachUserName").val();
            var serachUserEmail = $("#serachUserEmail").val();
            var serachUserBday = $("#serachUserBday").val(); 
         
            $.ajax({
               url:"${ pageContext.servletContext.contextPath }/user/searchPwd",
               type : 'post',
               data : {
                  userName: serachUserName,
                  userEmail : serachUserEmail,
                  userBday : serachUserBday
               },
               success: function(data,textStatus,xhr) {
                  
                  if(data == 'fail') {
                   alert("입력하신 이메일로 전송이 불가능합니다. 고객센터로 확인해주세요.")
                     
                  }  else {
                
                     console.log("이메일 전송 완료")
                     $("html").addClass("pop");
                     $(".pop_wrap:visible").hide();
                     $(".find_password_fin_pop").parent(".pop_wrap").show();
                  }
               },
               error : function(xhr,status,error) {
                  console.log(error);
               }
            })
      }

</script>
   <!-- 비밀번호 찾기 완료 팝업 -->
   <div class="pop_bg pop_wrap">
      <div class="member_pop_box close_wrap find_password_fin_pop"
         style="width: 90%; max-width: 500px;; max-height: none; padding: 5vh 0;">
         <span class="close_btn"></span>
         <div class="member_wrap" style="width: 100%; padding: 0 5%;">
            <h3 class="tit txt_bold">비밀번호 찾기</h3>
            <p class="txt_bs txt_bold">임시 비밀번호를 메일로 전송하였습니다.</p>
            <form class="member_form">
               <input class="btnBgC txt_bs login_link submit" type="button"
                  value="로그인">
            </form>
         </div>
      </div>
   </div>
   <!-- //이메일(ID) 찾기 완료 팝업 끝-->
   

   <!-- //팝업 끝 -->


   <script type="text/javascript">

   /* 이메일 중복체크용 */
   var isDuplicate = true;
      $(function(){
         
         $("#duplicationCheck").click(function(){
            var userEmail = $("#userEmail").val();
               
            $.ajax({
               url:"${ pageContext.servletContext.contextPath }/user/duplicateCheck",
               type:"post",
               data : {
                  userEmail : userEmail
               },
               success: function(data,textStatus,xhr) {
                  
                  if(data == 'success') {
                     isDuplicate = false;
                     alert("현재 이메일을 사용하셔도 됩니다.");
                  }  else {
                     alert("중복된 이메일입니다. 다른 이메일을 사용해주세요.");
                     $("#userEmail").select();
                  }
                  
               },
               error : function(xhr,status,error) {
                  console.log(error);
               }
            })
         });
         

      }); 
   
      /* 체크박스 전체 선택 */
      function allCheckFunc(obj) {
         $(".checkOne").prop("checked", $(obj).prop("checked"));
      }

      /* 체크박스 체크시 전체선택 체크 여부 */
      function oneCheckFunc(obj) {
         var allObj = $("#agree_all");
         var objName = $(obj).attr("name");

         if ($(obj).prop("checked")) {
            checkBoxLength = $("[name=" + objName + "]").length;
            checkedLength = $("[name=" + objName + "]:checked").length;

            if (checkBoxLength == checkedLength) {
               allObj.prop("checked", true);
            } else {
               allObj.prop("checked", false);
            }
         } else {
            allObj.prop("checked", false);
         }
      }

      $(function() {
         $("#agree_all").click(function() {
            allCheckFunc(this);
         });
         $(".checkOne").click(function() {
            $(this).each(function() {
               oneCheckFunc($(this));
            });
         });
      });

      /* 회원가입 유효성 체크 */
      function regist() {
         
         var useremail = document.getElementById("userEmail");
         var username = document.getElementById("userName");
         var userphone = document.getElementById("userPhone");
         var userpassword = document.getElementById("userPwd");
         var repassword = document.getElementById("repassword");
         var userbirth = document.getElementById("userBday");
         var duplicationCheck = document.getElementById("duplicationCheck");
         var idCheck = document.getElementById("idCheck");
         var checkMessage = document.getElementById("checkMessage");

         // 이메일
         if (!chk(/^[\w]{4,}@[\w]+(\.[\w]+){1,3}$/, useremail,
               "이메일 형식에 맞춰 입력하세요.")) {
            return false;
         }

         // 휴대전화 
         if (!chk(/^\d{2,3}-\d{3,4}-\d{4}$/, userphone,
               "전화번호는 010-1234-5678 형식으로 넣어주세요.")) {
            return false;
         }

         // 비밀번호 
         if (!chk(/^[a-zA-Z0-9]{8,15}$/, userpassword,
               "비밀번호는 영어와 숫자를 사용하여 8자리 이상 15자리 이하 입력하세요.")) {
            return false;
         }

         var checkNum = document.getElementById("userPwd").value
               .search(/[0-9]/g);
         var checkEng = document.getElementById("userPwd").value
               .search(/[a-z]/ig);

         if (checkNum < 0 || checkEng < 0) {
            alert("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
            userpassword.value = "";
            userpassword.focus();
            return false;
         }

         // userpassword와 repassword 일치하는지 확인
         if (userpassword.value != repassword.value) {
            alert("비밀번호가 다릅니다. 다시 확인해주세요.");
            repassword.value = "";
            repassword.focus();
            return false;
         }

         // 이름
         if (!chk(/^[가-힣]{1,}$/, username, "이름은 한글로 1글자 이상 입력하세요")) {
            return false;
         }

         // 생년월일
         if (!chk(/^[0-9]*$/, userbirth, "생년월일은 특수문자(-) 없이 숫자로만 입력해주세요.")) {
            return false;
         }

         // 성별
         if ($("input[name=userGender]:checked").val() == false) {
            alert("성별을 선택하여 주십시오.");

            return false;

         }

         // 약관동의 체크
         if ($("#agree_1").is(":checked") !== true
               || $("#agree_2").is(":checked") !== true) {
            alert("회원가입 및 운영약관 , 개인정보 수집 및 이용에 동의하십시오.");
            return false;
         }

         // 유효성 검사 alert 창 
         function chk(re, ele, msg) {
            if (!re.test(ele.value)) {
               alert(msg);
               ele.value = "";
               ele.focus();
               return false;
            }

            return true;
         }
         
            // 이메일 중복 체크
             if(checkMessage.innerHTML != "사용할 수 있는 이메일입니다."){
                duplicationCheck.focus();
                
             }
         if(isDuplicate){
            alert("이메일 중복확인을 해주세요.")
                return false;
         }         
   
      
      }
      
       /* 회원가입 실패 및 성공 시  */
      var messege = '${messege}';
      if( messege === 'registOK') {
         alert('tripfulaxel에 회원이 되셨습니다 축하합니다! ')
      } else if( messege === 'registNO' ){
         alert('회원가입에 실패하셨습니다!')
      }
       
   </script>

   <!-- //헤더 영역 끝 -->
   
   
   
   

      <div class="pcWrap clearfix"
         style="background-color: skyblue; width: 100%;">
         <div class="floatR login_area" style="margin-right: 5% !important; width:25% !important;">
            
         
            <ul class="clearfix" style="margin-right:0% !important;">
                     
              <c:if test="${ !empty sessionScope.loginUser }">
            	
	               <li class="floatR" style="padding-left:20px !important;">
	               <a class="logout_link"
	               href="${ pageContext.servletContext.contextPath }/user/logout"> 
	               <span style="color: white; font-size: 18px; font-weight: bold;">로그아웃</span></a></li>
               </c:if>


               <c:if test="${ empty sessionScope.loginUser }">
                  
	                  <li class="floatR" style="padding-left:20px !important;"><a class="signup_link"
	                 href="javascript:void(0)"> <span
	                 style="color: white; font-size: 18px; font-weight: bold;">회원가입</span>
	                  </a></li>
	                  
	                  <li class="floatR" style="padding-left:20px !important;">
	                  <a class="login_link" 
	                   href="javascript:void(0)">
	                   <span style="color: white; font-size: 18px; font-weight: bold;">로그인</span>
	                  </a></li>
               </c:if>
               
                <c:if test="${ sessionScope.loginUser.userGuideYN eq 'Y' }">
	                 
	                 <li class="floatR" style="padding-left:20px !important;">
	                <a href="${ pageContext.servletContext.contextPath }/user/guidepage/">
	                <span style="color: white; font-size: 18px; font-weight: bold;">
	                                       가이드페이지</span>
	               </a></li>
	               </c:if>   
               

               <c:if test="${ !empty sessionScope.loginUser }">
            	
	                <li class="floatR" style="padding-left:20px !important;">
	                <a href="${ pageContext.servletContext.contextPath }/user/mypage/">
	                <span style="color: white; font-size: 18px; font-weight: bold;">
	                                          마이페이지</span>
	               </a></li>
	               
               </c:if>
           
           		<c:if test="${ sessionScope.loginUser.userGuideYN eq 'N' }">
	               <li class="floatR" style="padding-left:20px !important;">
	               <a href="${ pageContext.servletContext.contextPath }/insertGuide">
	                     <span style="color: white; font-size: 18px; font-weight: bold;">로컬가이드등록</span>
	               </a></li>
               </c:if>
           
                    
            </ul>
         </div>
		
		
         <div class="find_btn_area " style=" ">
			<div class="category">
            <div style="margin-bottom: -10px; margin-left: 25% !important;">
               <a href="${ pageContext.servletContext.contextPath }/main"><img id="rotating_img"
                  style="width: 90px; height: 99px; object-fit: cover;"
                  src="/tripfulaxel/resources/images/common/3.png" alt=""></a> <a
                  href="${ pageContext.servletContext.contextPath }/main"><img style="width: 300px; height: 99px"
                  src="/tripfulaxel/resources/images/common/2.png" alt=""></a>

            </div>



            <ul style="margin-left:32% !important; margin-top:10px ;">
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=1&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 로컬가이드여행</span></a></li>
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=3&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 나만의여행</span></a></li>
               <li class="floatL header_menu"><a
                  href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=2&sortCondition=최신순"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;"> 같이가요여행</span></a></li>
               
               <c:if test="${ empty sessionScope.loginUser }">
                <li class="floatL header_menu" >
                    <a class="btnLineC txt_md" href="javascript:alert('로그인 후 이용해주세요');">
                    <span style="color:white; font-size: 20px;">여행플래너</span></a>
                </li>
      			</c:if>
               
                <c:if test="${ !empty sessionScope.loginUser }">
                <li class="floatL header_menu"><a href="${pageContext.servletContext.contextPath}/planner/choose"
                  class="btnLineC txt_md"> <span
                     style="color: white; font-size: 20px;">여행플래너</span></a></li>
      			</c:if>
      			
      		
      		   <c:if test="${ empty sessionScope.loginUser }">
               <li class="floatL header_menu" >
                    <a class="btnLineC txt_md" href="javascript:alert('로그인 후 이용해주세요');">
                    <span style="color:white; font-size: 20px;">실시간정보공유</span></a>
                </li>
                </c:if>
          
                
               <c:if test="${ !empty sessionScope.loginUser }">
               <li class="floatL header_menu">
                    <a href="${pageContext.servletContext.contextPath}/share/select/chatRoom?roomCode=0&userCode=0" class="btnLineC txt_md" >
                    <span style="color:white; font-size: 20px;">실시간정보공유</span></a>
                </li>
                </c:if>
                
                
            </ul>
            </div>
         </div>
         </div>
     
   </header>
 
   
</body>
</html>