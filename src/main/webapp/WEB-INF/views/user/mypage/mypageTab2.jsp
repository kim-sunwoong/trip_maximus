<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">
    <script src="https://www.travelmaker.co.kr/js/modernizr.custom.70111.js"></script>
	<link rel="icon" type="image/png" sizes="16x16" href="https://www.travelmaker.co.kr/img/favicon-16x16.png">
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/main.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/common.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/style.css?ver=20210620">
<!-- <script type="text/javascript" src=".\joon_script.js"></script> -->
 <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/mytripreviewmodal.css">
    <style type="text/css">button {background: none; border:none !important;}</style>
    <script>
        function PopUp(){
    var pop1 = document.querySelector(".bg");
    var pop2 = document.querySelector(".reviewWrap");
   document.getElementsByName("star")[0].checked = false;
   document.getElementsByName("star")[1].checked = false;
   document.getElementsByName("star")[2].checked = false;
   document.getElementsByName("star")[3].checked = false;
   document.getElementsByName("star")[4].checked = false; 
   


    pop1.style.display='block';
    pop2.style.display='block';

}
function cancel(){
   var pop1 = document.querySelector(".bg");
   var pop2 = document.querySelector(".reviewWrap");
   pop1.style.display='none';
   pop2.style.display='none';
 }
    </script>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapp">
        <div id="tabwrap">
	<div style="width: 90% ; margin : 0 auto;"><h2 style="display: block;
            font-size: 1.5em;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold; margin-left: 1rem;">마이페이지</h2></div>
            <br>
            <br>
            <div class="tabList"  style="margin: 0 auto;">
                <div class="tabb" ><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 여행후기</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 같이가요</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                <table align="center" style="border-collapse: collapse;margin:0 auto;">
                    <thead>
                        <tr>
                            <th>여행제목</th>
                            <th>신청일자</th>
                            <th>여행진행상태</th>
                            <th>가이드</th>
                            <th>1인당 가격</th>
                            <th>신청인원</th>
                        </tr>
                    </thead>
                    <tbody style="margin-top: 20px;">
                        <tr>
                            <td>제주도 항아리 투어</td>
                            <td>2021/03/15</td>
                            <td>후기작성완료</td>
                            <td>홍길동</td>
                            <td>25000</td>
                            <td>4/4</td>
                        </tr>
                        <tr>
                            <td>제주도 오징어 투어</td>
                            <td>2021/04/19</td>
                            <td>불참</td>
                            <td>홍길동</td>
                            <td>25000</td>
                            <td>4/4</td>
                        </tr>
                        <tr>
                            <td>제주도 김치 투어</td>
                            <td>2021/05/15</td>
                            <td onclick="PopUp();"><button style="border: 1px solid blue; font-weight: 600;">후기쓰러가기</button></td>
                            <td>홍길동</td>
                            <td>25000</td>
                            <td>4/4</td>
                        </tr>
                        <tr>
                            <td>제주도 꽁치 투어</td>
                            <td>2021/06/21</td>
                            <td>참석</td>
                            <td>홍길동</td>
                            <td>25000</td>
                            <td>4/4</td>
                        </tr>
                        <tr>
                            <td>제주도 꽁치 투어</td>
                            <td>2021/07/21</td>
                            <td>신청완료</td>
                            <td>홍길동</td>
                            <td>25000</td>
                            <td>4/4</td>
                        </tr>
                    </tbody>

                </table>

            </div>
        </div>
    </div>
            <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
    
    <jsp:include page="../common/footer.jsp"/>

    <div class="bg"></div>
    <div class="reviewWrap" style="height: 470px;">
        <div class="reviewDetail">
        <h2 style="line-height: 40px;  display: block;

  font-size: 1.5em;

  margin-top: 0.83em;

  margin-bottom: 0.83em;

  margin-left: 0;

  margin-right: 0;

  font-weight: bold;">가이드 리뷰 작성하기</h2>
        <div class="startRadio" >
            <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 1개</span></span>
            </label>
           <!--  <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 2개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 3개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 4개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 5개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
            </label> -->
          </div>
        <input type="file">
        <textarea name="mytripreview" id="mytripreview" cols="30" rows="10" style="border: 1px solid rgba(0, 0, 0, 0.3);"></textarea>
        <div class="thumblist" style="width: 45%; height: 70px; display: flex; margin-top: 20px; float: left; justify-content: space-between;">
            <div class="thumb1" style="width: 32%; height: 100%; background-color: gray;"></div>
            <div class="thumb2" style="width: 32%; height: 100%; background-color: gray;"></div>
            <div class="thumb3" style="width: 32%; height: 100%; background-color: gray;"></div>
        </div>
        <div class="modalbutton" style="margin-top: 20px;">
        <button onclick="cancel();">취소</button>
        <button onclick="cancel();">확인</button>
        </div>
    </div>
    </div>
    
    
</body>
</html>
