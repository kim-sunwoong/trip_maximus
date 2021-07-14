<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">

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
	<style type="text/css">
	#detail thead th {
            text-align: center;
            
        }
        #detail tbody th {text-align: center;}
	/* .card-body th {height: 30px !important;} */
	</style>
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
    <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#data-table").DataTable();
        });
    </script>
    <style type="text/css">
     #detail thead th {
            text-align: center;
            
        }
    </style>
    <script>
    /* document.getElementById('ebutton').onclick = function() {
				const no = this.parentNode.children[0].innerText;
				 document.getElementById("formId").value = no;
			}; */
   /* document.getElementsByName("jtaCode").innerText */
		
     /*  document.getElementById('ebutton').click = function(){ */
				function PopUp(event){
    	 	/* console.log(event);
    	 	console.log(dir(event)); */
     
    var pop1 = document.querySelector(".bg");
    var pop2 = document.querySelector(".reviewWrap");
   document.getElementsByName("star")[0].checked = false;
   document.getElementsByName("star")[1].checked = false;
   document.getElementsByName("star")[2].checked = false;
   document.getElementsByName("star")[3].checked = false;
   document.getElementsByName("star")[4].checked = false; 
   
     const no = event.parentNode.children[0].innerText;
	 document.getElementById("formId").value = no;
   
   /* const k = this;
   const no = this.parentNode.children[0].innerText;
   document.getElementsByName("jtaCode").innerHTML = no; */
	

    pop1.style.display='block';
    pop2.style.display='block';

}
 /*   function call(e){
	   var event = e || window.event;

	   var targetElement = event.target || event. srcElement;
	   
	   
   }   */   
   
function canceled(){
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
	
        <div id="tabwrap" style="margin:0 auto;">
        <div style="width: 90% ; margin : 0 auto;"><h2 style="display: block;
            font-size: 1.5em;
            margin-block-start: 0.83em;
            margin-block-end: 0.83em;
            margin-inline-start: 0px;
            margin-inline-end: 0px;
            font-weight: bold; margin-left: 1rem;">마이페이지</h2></div>
        <br>
            <br>
            <div class="tabList" style="margin: 0 auto;">
                <div class="tabb" style="border: 3px solid blue;"><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 같이가요</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 여행후기</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
                <div class="tabb"><a class="pic8" href="${pageContext.request.contextPath}/user/mypage/mypageTab8">여행 문의내역</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                <table align="center" style="border-collapse: collapse; margin:0 auto; text-align: center;">
                    <!-- <div class="line" style="border: 1px solid black;"></div> -->
                    <thead>
                        <tr>
                        	<th style="display:none;">번호</th>
                            <th>여행제목</th>
                            <th>신청일자</th>
                            <th>인원현황</th>
                            <th>취소여부</th>
                            <th>진행상태</th>
                        </tr>
                    </thead>
                    <tbody style="padding-top: 20px;">
                    	<c:forEach items="${joinList}" var="j">
                        <tr>
                            <td style="display:none;"><c:out value="${j.status.jtaCode}"/></td>
                            <td><c:out value="${j.tripTitle}"/></td>
                            <td><c:out value="${j.joinTripDate}"/></td>
                            <td><c:out value="${j.countUser}"/></td>
                            <td><c:out value="${j.status.tripCancelYN}"/></td>
                            <c:choose>
                            <c:when test="${j.status.status eq '후기쓰러가기'}"><td style="font-weight: bold;" onclick="PopUp(this)" id="ebutton">후기쓰러가기</td></c:when>
                            <c:otherwise><td><c:out value="${j.status.status}"/></td></c:otherwise>
                            </c:choose>
                            <%-- <c:set var="today" value="<%= new java.util.Date() %>"/>
                            <c:set var="endDate" value="${j.status.tripEndDate}"/> --%>
                            <%-- <c:choose>
                            <c:when test="endDate > today"><td>참여</td></c:when>
                            <c:when test="endDate < today && ${j.status.reviewCode == null}"><td>후기쓰러가기</td></c:when>
                            <c:when test="${j.status.reviewCode != null}"><td>후기보러가기</td></c:when>
                            <c:otherwise><td>불참</td></c:otherwise>
                            </c:choose> --%>
                        </tr>
                        </c:forEach>
                        <!-- <script>
                        if(document.getElementsByTagName("td")) {
                			const $tds = document.getElementsByTagName("td");
                			for(let i = 0; i < $tds.length; i++) {
                				if(tds[i].value ="후기쓰러가기"){
                				$tds[i].onclick = function() {
                					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있겠지? */
                					const no = this.parentNode.children[0].innerText;
                					location.href = "${ pageContext.servletContext.contextPath }/user/mypage/jointrip/detail?no=" + no;
                				}
                			}
                			}
                			
                		}
						</script> -->
                        
                    </tbody>

                </table>

            </div>
        </div>
    </div>
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
	
	
	
	
	  <div class="bg" style="display: none;"></div>
    <div class="reviewWrap" style="height: 400px; display: none;">
        <div class="reviewDetail">
        <h2 style="line-height: 40px;  display: block;

  font-size: 1.5em;

  margin-top: 0.83em;

  margin-bottom: 0.83em;

  margin-left: 0;

  margin-right: 0;

  font-weight: bold;">리뷰 작성하기</h2>
  <form action="${ pageContext.servletContext.contextPath }/user/mypage/insert/review" method="post" enctype="multipart/form-data" >
  		<input id="formId" name="jtaCode" style="display:none;"/>
        <div class="startRadio" >
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="1">
              <span class="startRadio__img"><span class="blind">별 1개</span></span>
            </label>
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="2">
              <span class="startRadio__img"><span class="blind">별 2개</span></span>
            </label>
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="3">
              <span class="startRadio__img"><span class="blind">별 3개</span></span>
            </label>
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="4">
              <span class="startRadio__img"><span class="blind">별 4개</span></span>
            </label>
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="5">
              <span class="startRadio__img"><span class="blind">별 5개</span></span>
            </label>
          </div>
          <input type="text" name="reviewTitle" style="width: 100%; height: 40px; border: 1px solid rgba(0, 0, 0, 0.3);" placeholder="리뷰 제목을 입력하세요" >
        <textarea name="reviewInfo" id="mytripreview" cols="30" rows="10" style="border: 1px solid rgba(0, 0, 0, 0.3);"></textarea>
        <!-- <div class="thumblist" style="width: 45%; height: 70px; display: flex; margin-top: 10px; float: left; justify-content: space-between;">
        </div> -->
        <input style=" display: block; height: 20px; width: 200px;" type="file" id="input-multiple-image" multiple name="multiFiles" >
        <div class="modalbutton">
        <button type="button" onclick="canceled()" style="border:1px solid rgba(0,0,0,0.3);">취소</button>
        <button type="submit" style="border:1px solid rgba(0,0,0,0.3);">확인</button>
        </form>
        </div>
    </div>
    </div>
</body>
</html>