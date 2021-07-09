<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>
<link rel="stylesheet" href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">
    <script src="https://www.travelmaker.co.kr/js/modernizr.custom.70111.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/main.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/common.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/style.css?ver=20210620">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <style>
        #detail thead th {
            border-top: 3px solid rgba(0, 0, 0, 78);
            text-align: center;

        }

        #detail tbody th {
            text-align: center;
        }

    </style>
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
            font-weight: bold; margin-left: 1rem;">가이드 마이페이지</h2></div>
            <br>
            <br>
            <div class="tabList" style="margin: 0 auto;">
                <div class="tabb" style="border: 3px solid skyblue;"><a class="pic1" href="${pageContext.request.contextPath}/user/guidepage/guideGoods">내 여행상품</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/guidepage/updateGuide">내 정보수정</a></div>
                <div class="tabb"><a class="pic3" href="${pageContext.request.contextPath}/user/guidepage/guideParticipants">참가인원보기</a></div>
                <div class="tabb"><a class="pic4" href="${pageContext.request.contextPath}/user/guidepage/guideContact">문의관리</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/guidepage/guideReview">후기관리</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/guidepage/guideTax">정산관리</a></div>
            </div>
        </div>




		<div id="detail_content"
			style="width: 95%; margin: 0 auto; margin-bottom: 150px; margin-top: 150px;">
			<div id="detail"
				style="display: flex; justify-content: space-between; width: 100%; margin: 0 auto;">

				<div class="card mb-3" style="width: 70%; margin: 0 auto;">
					
			  
					<div class="row g-0">
						<div class="col-md-7">
							<img
								src="${pageContext.servletContext.contextPath}/resources/images/trip/guidetrip/${myGoods.tripImgList[0].savedName }"
								class="card-img-top" alt="...">
						</div>
						<div class="col-md-4" style="margin-left: 30px;">
							<div class="card-body">
								<br>
								<br>
								<h5 class="card-title">${myGoods.tripList[0].tripTitle }</h5>
								<br>
								<p class="card-text">${myGoods.tripList[0].tripIntro } </p>
								<p class="card-text">
									<small class="text-muted"
										style="height: 40px; line-height: 1.5rem; font-size: 13px;"> 상품 총 리뷰수 : <a>${ goodsCount }</a>개
									</small>
								</p>
								<p class="card-text">
								   <small class="text-muted"
										style="height: 40px; line-height: 1.5rem; font-size: 13px;"> 평균별점 : <a>${ reviewStar }</a>점
									</small>
								</p>
								<br>
								
								<c:if test="${ myGoods.registTypeCode  == 3 }">
								<button type="button" id="btnStopSell" 
								onClick="onClickStopSell()" 
								class="btn btn-outline-info" style="width: 139px;">판매중지</button>
								</c:if>
								
							    <c:if test="${ myGoods.registTypeCode  == 4 }">
								<button type="button" id="btnStopSell" 
								onClick="onClickStopSell()" 
								class="btn btn-outline-info" style="width: 139px;">판매게시</button>
								</c:if>
								
						    	<button type="button" class="btn btn-outline-info" id="btnUpdateGoods"
						    	onClick="onClickUpdateGoods()">수정하기</button> 
					<!-- 	<button type="button" class="btn btn-outline-info">등업요청</button> -->
								
								
								
 	<script>
		var isClickStopSell = true;
		function onClickStopSell() {
			console.log(onClickStopSell)
			if (isClickStopSell) {
				document.getElementById("btnStopSell").innerText = "판매게시";
				 		$.ajax({
						    url: "${ pageContext.servletContext.contextPath }/user/guidepage/stopSell",
						    type : 'get'
						}); 

			} else {
				document.getElementById("btnStopSell").innerText = "판매중지";
				$.ajax({
				    url: "${ pageContext.servletContext.contextPath }/user/guidepage/startSell",
				    type : 'get'
				}); 
			}
			isClickStopSell = !isClickStopSell;

		}
		
	</script> 
								
							</div>
						</div>
					</div>
		  
				</div>
			</div>
		</div>
	</div>
        <div class="clearbothsite" style="clear:both; width:100%; height: 1px;margin-top: 150px;"></div>
	<jsp:include page="../common/footer.jsp"/>


</body>
</html>