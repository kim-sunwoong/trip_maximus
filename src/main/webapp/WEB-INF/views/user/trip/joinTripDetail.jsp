<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>


<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">
<style>
</style>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css" />

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78304428f671ff1c62a722e41af4bfc6&libraries=services"></script>
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="/tripfulaxel/resources/user/js/jquery.menu.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/common.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/wrest.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/placeholders.min.js"></script>

<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
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


<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style>
#head {
	position: fixed;
	margin-right: 400px;
}

.topimg img {
	object-fit: cover !important;
	width: 800px !important;
	height: 420px !important;
}


</style>
<script>
function inquiry(){
	    
	    var inquiryContent = $("#sendContent").val();
	    var tripRegistCode = ${trip[0].tripRegistCode};
	    var userCode = ${sessionScope.loginUser.userCode};
	 
	    $.ajax({
	        type: "POST",
	        url: "insert/inquiry",
	        data: {"inquiryContent":inquiryContent, "tripRegistCode":tripRegistCode, "userCode":userCode  },
	        success: function (data) {
	        	alert(data);
	        	$("#sendContent").val("");
	        },
	        error: function (e) {
	            alert('fail');
	        }
	    });
	}
	
function tripJoin() {
	var joinReason = $("#joinReason").val();
	
	var tripCode = ${trip[0].tripCode};
	var userCode = ${sessionScope.loginUser.userCode};
	var tripRegistCode = ${trip[0].tripRegistCode};
	
	$.ajax({
        type: "POST",
        url: "insert/join",
        data: {"tripCode":tripCode, "userCode":userCode, "tripRegistCode":tripRegistCode, "joinReason": joinReason  },
        success: function (data) {
        	alert(data);
        	$("#joinReason").val("");
        },
        error: function (e) {
            alert('fail');
        }
    });
}



</script>

</head>
<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<br>

	<section class="container pcWrap">

		<div class="offerWrap clearfix"
			style="position: relative; width: 860px">
			<!-- 상품상세영역 시작 -->
			<div class="offerDetail floatL">
				<div class="offer_main">
					<div class="offer_main_slider">
						<c:forEach var="tripImg" items="${trip[0].tripImgList }">
 							<div class="topimg">
	 							<img src="${pageContext.servletContext.contextPath}/resources/images/trip/guidetrip/${tripImg.saveName}">
	 						</div>
 						</c:forEach>
					</div>

		
				</div>


				<div class="offerNav">
					<ul class="clearfix offerNavList" style="background:skyblue; color:white">
						<li class="floatL" data-id="offerMaker"><a style="color:white;"
							href="#offerMaker">같이가요!</a></li>
						<li class="floatL" data-id="offerTravel"><a style="color:white;"
							href="#offerTravel">여행 소개</a></li>
						<li class="floatL" data-id="Course"><a style="color:white;" href="#Course">코스
								안내</a></li>
						<li class="floatL" data-id="offerInfo"><a  style="color:white;" href="#offerInfo">안내
								사항</a></li>
						<li class="floatL" data-id="offerReview"><a style="color:white;"
							href="#offerReview">후기</a></li>
					</ul>
				</div>
				<div class="offerArea clearfix" id="offerMaker">
					<h3 class="txt_tit" style="padding-bottom: 20px;">제가 계획했어요!</h3>
					<div class="clearfix2 offer_tm_profile">
						<div class="profile_details clearfix">
							<div class="pfImg floatL">
								<img src="${pageContext.servletContext.contextPath}/resources/images/guide/${trip[0].joinTripImg}">
							</div>
							<div class="tm_info floatL" style="font-size: 18px;">
								<h3 class="nick"></h3>
								<p class="grade txt_md"></p>

								<p style="width: 100%;" class="grade txt_md"><c:out value="${trip[0].joinTripInfo} "></c:out></p>
							</div>
						</div>
					</div>
				</div>

				<div class="offerArea" id="offerTravel">
						<h3 class="txt_tit">여행 소개</h3>
						<ul class="starUl">
							<li style="width: 100%; padding-left: 0">
								<p class="WhiteSpacing text_cut_expand4"
									style="width: 100%; word-break: break-all;">
									<c:out value="${trip[0].tripIntro }"/>	
								</p>
							</li>
						</ul>
						<div class="offerBox">
							<h4 class="txt_big">여행 테마</h4>
							<ul class="textP">
								<c:forEach var="theme" items="${trip[0].tripThemeList }" varStatus="status">
 									<li><c:out value="${status.count }"/>. <c:out value="${theme.themeDetail }"/>   </li>
 								</c:forEach>
								<!-- <li class="iconUl_local">한국인 관광객이 1도 없는 로컬 트래블</li>
                                     <li class="iconUl_spot">TM만 알고 있는 시크릿 스팟 트래블</li>
                                     <li class="iconUl_ext">직접 체험하는 액티비티(익스트림 스포트 등) 트래블</li> -->
							</ul>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">여행 이동수단</h4>
							<ul class="textP">
								<c:forEach var="transit" items="${ trip[0].tripTransitList}" varStatus="status">
 									<li><c:out value="${status.count }"/>. <c:out value="${transit.transitDetail }"/></li>
 								</c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="offerArea" id="Course">
					<div class="">
						<div class="offerBox">
							<h4 class="txt_big">
								코스 안내<span class="">
								</span>
							</h4>
							<div class="corseWrap">
								<c:forEach var="course" items="${ trip[0].tripCourseList}" varStatus="status">
 									<dl class="clearfix new_box_shadow">
	 									<dt class="floatL" style="width:200px; height:220px;">
	 										<img src="${pageContext.servletContext.contextPath}/resources/images/trip/guidetrip/${course.image}">
	 									</dt>
	 									<dd class="floatL">
	 										<h5 class="txt_md" style="word-break: break-all;">
	 											<c:out value="${status.count }"/>. <c:out value="${course.courseName }"/>
	 										</h5>
	 										<div>
	 											<p class="WhiteSpacing" style="word-break: break-all;">
	 												<c:out value="${course.courseInfo }"/>
	 											</p>
	 										</div>
	 									</dd>
	 								</dl>
 								
 								</c:forEach>
							
							</div>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">만나는 시간</h4>
							<p>여행자와 상의 후 결정</p>
						</div>
						<div class="offerBox">
							<h4 class="txt_big">만나는 장소</h4>
 							<div id="meetMap" style="width:770px; height:500px;">
 							
 							
 							
 							</div>
 							<c:out value="${trip[0].meetLocation}"/>
 							<script>
							 	var container = document.getElementById('meetMap');
								var mapOption = {
									center: new kakao.maps.LatLng(33.450701, 126.570667),
									level: 3
								};
							
								var map = new kakao.maps.Map(container, mapOption);
								
								map.setDraggable(false); 
								map.setZoomable(false);
							 	
								// 주소-좌표 변환 객체를 생성합니다
								var geocoder = new kakao.maps.services.Geocoder();

								// 주소로 좌표를 검색합니다
								geocoder.addressSearch('${trip[0].meetLocation}', function(result, status) {

								    // 정상적으로 검색이 완료됐으면 
								     if (status === kakao.maps.services.Status.OK) {

								        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

								        // 결과값으로 받은 위치를 마커로 표시합니다
								        var marker = new kakao.maps.Marker({
								            map: map,
								            position: coords
								        });

								        // 인포윈도우로 장소에 대한 설명을 표시합니다
								        var infowindow = new kakao.maps.InfoWindow({
								            content: '<div style="width:150px;text-align:center;padding:6px 0;">만나는 장소</div>'
								        });
								        infowindow.open(map, marker);

								        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
								        map.setCenter(coords);
								    } 
								});    
								
							 </script>
						</div>
				</div>
				<div class="offerArea floatL" style="margin-bottom: 0px"
					id="offerInfo">
					<div style="width: 770px;">
						<c:if test="${trip[0].include ne ''}">
 						
	 							<h4 class="txt_big">포함사항</h4>
	 							<ul class="textP">
	 								<li class="txtG" style="word-break: break-all;">
	 									<c:out value="${trip[0].include }"/>
	 								</li>
	 							</ul>
 						
 						</c:if>
						
						<c:if test="${trip[0].nInclude ne ''}">
	 						<div class="offerBox">
	 							<h4 class="txt_big">불포함사항</h4>
	 							<ul class="textP">
	 								<li class="txtG" style="word-break: break-all;">
	 									<c:out value="${trip[0].nInclude }"/>
	 								</li>
	 							</ul>
	 						</div>
 						
 						</c:if>

					</div>
				</div>
				<div class="clearfix"></div>

				<div class="offerArea" id="offerReview"
					style="padding-bottom: 120px;">
					<!-- 리뷰 -->
						<div class="reviewBox">
						<h4 class="txt_big">대표 리뷰</h4>
						<dl>
										<dt class="clearfix">
											<span class="txt_md floatL txt_bold txt_md">
												<c:out value="${reviewList[0].reviewTitle } "/>
											</span> &nbsp;
											<c:out value="${reviewList[0].reviewDate } "/> &nbsp;
											<c:forEach var="cnt" begin="1" end="${reviewList[0].reviewPoint }">
												<img src="/tripfulaxel/resources/images/common/star.png" style="width: 20px; height: 20px;">
											</c:forEach>
										</dt>
										<br>
										<div class="reviewimage">
											<div class="imageone">
												<c:forEach var="img" items="${reviewList[0].reviewImgList }">
													<img style="width: 250px; height: 130px" src="${pageContext.servletContext.contextPath}/resources/images/trip/review/${img.saveName}" alt="">
												</c:forEach>
											</div>
											
											<dd class="qnaCont">
												<p class="WhiteSpacing">
													<c:out value="${reviewList[0].reviewInfo }"/>
												</p>
											</dd>
	
										</div>
										
										<c:if test="${reviewList[0].reviewComent != null }">
										
											<h4 class="txt_big">가이드 댓글</h4>
	
											<div class="ReplyEntity" style="background-color: #80808014;">
												<dt class="clearfix">
													<span class="txt_md floatL txt_bold txt_md">
														가이드
													</span> 
													<span class="floatL txtG txt_sm">
														&nbsp;&nbsp; <c:out value="${reviewList[0].reviewComent.replyDate}"/>
													</span>
												</dt>
												<div class="ReplyEntity_guide">
													<c:out value="${reviewList[0].reviewComent.replyInfo }"/>
												</div>
											</div>
										</c:if>
									</dl>
						<!-- 전체 리뷰 보기 -->
						<br>

						<details>
							<summary class="txt_big" style="font: bold; font-size: 25px;">전체 리뷰 보기</summary><br>
							<!-- 리뷰 -->
							<c:forEach var="review" items="${reviewList }">
								<div class="tpt">
									<dl>
										<dt class="clearfix">
											<span class="txt_md floatL txt_bold txt_md">
												<c:out value="${review.reviewTitle } "/>
											</span> &nbsp;
											<c:out value="${review.reviewDate } "/> &nbsp;
											<c:forEach var="cnt" begin="1" end="${review.reviewPoint }">
												<img src="/tripfulaxel/resources/images/common/star.png" style="width: 20px; height: 20px;">
											</c:forEach>
										</dt>
										<br>
										<div class="reviewimage">
											<div class="imageone">
												<c:forEach var="img" items="${review.reviewImgList }">
													<img style="width: 250px; height: 130px" src="${pageContext.servletContext.contextPath}/resources/images/trip/review/${img.saveName}" alt="">
												</c:forEach>
											</div>
											
											<dd class="qnaCont">
												<p class="WhiteSpacing">
													<c:out value="${review.reviewInfo }"/>
												</p>
											</dd>
	
										</div>
										
										<c:if test="${review.reviewComent != null }">
										
											<h4 class="txt_big">가이드 댓글</h4>
	
											<div class="ReplyEntity" style="background-color: #80808014;">
												<dt class="clearfix">
													<span class="txt_md floatL txt_bold txt_md">
														가이드
													</span> 
													<span class="floatL txtG txt_sm">
														&nbsp;&nbsp; <c:out value="${review.reviewComent.replyDate}"/>
													</span>
												</dt>
												<div class="ReplyEntity_guide">
													<c:out value="${review.reviewComent.replyInfo }"/>
												</div>
											</div>
										</c:if>
		
									</dl>
								</div>
								<br>
								<br>
							
							</c:forEach>
								<!-- 리뷰 -->
						</details>
						<!--  전체 리뷰 보기 끝 -->

					</div>
					
				</div>

			</div>
			
			<!-- 상품가격결과영역 시작-->
			<div id="sticker" class="offerResultWrap floatR">

				<div id="head">
					<div class="offerResult new_box_shadow" style="width: 320px">
						<span class="area_txt">제주도</span>
						<h2 class="tit travel_title"><c:out value="${trip[0].tripTitle }"/></h2>
						<div
							style="width: 30px; position: absolute; top: 10px; right: 21px;">
						</div>
						<div class="price_div txtG" style="margin-bottom: 3px;">
							<span class=" txtC" style="font-size: 16px;">즐거운 추억 만들어
								보아요!</span>
						</div>
								<span class=" txtC">여행 일자 : </span><c:out value="${trip[0].tripStartDate }"/> ~ <c:out value="${trip[0].tripEndDate }"/><br>
								<span class=" txtC">1인당 예상 가격 : </span><c:out value="${trip[0].joinTripPrice }"/>원<br>
								<span class=" txtC">총 여행 인원 : </span><c:out value="${trip[0].joinTripMaximum }"/>
							
							<div class="clearfix2 msgCont">
								<textarea name="sendcontent" id="joinReason" style="height:90px;" placeholder="참가하고자 하는 이유를 입력해 주세요."></textarea>
							</div>
						<button class="btn btnBgC btnFull txt_md"
							onclick="tripJoin()" style="background:skyblue;">여행 참가하기</button>

					</div>
					
				<br>
					<!-- 여행 참가하기 끝  -->
						
				<div class="offerResult new_box_shadow" style="width: 320px">	   
				 	  <h2 class="tit travel_title">여행 문의하기</h2>
					  
					<div class="msgCont">
						<div class="clearfix">
							<div class="msgImg floatL">
								<img src="${pageContext.servletContext.contextPath}/resources/images/guide/${trip[0].joinTripImg}">
							</div>
							<div class="floatL txt_bold">
								To.<br>
								여행 방장님~
							</div>
						</div>
						<textarea name="sendcontent" id="sendContent" style="height:110px;" placeholder="내용을 입력하세요."></textarea>
						<button class="btn btnBgC btnFull txt_md"
							onclick="inquiry()" style="background:skyblue;">메시지 전송</button>
					</div>
				</div>

			</div>

		</div>
		<!-- 여행참가하기 끝 -->
		
		
		</div>

		</div>
	</section>
	<!— //본문 영역 끝 —>


</body>
</html>