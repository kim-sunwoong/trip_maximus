<%@ page language="java" contentType="text/html; charset=UTF-8"
 	pageEncoding="UTF-8"%>
 	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 <!DOCTYPE html>
 <html>
 <head>
 <meta charset="UTF-8">
 <title>Insert title here</title>
 <style>


 </style>
 <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=78304428f671ff1c62a722e41af4bfc6&libraries=services"></script>
 <script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
     <script src="/tripfulaxel/resources/user/js/jquery.menu.js?ver=171222"></script>
     <script src="/tripfulaxel/resources/user/js/common.js?ver=171222"></script>
 	<script src="/tripfulaxel/resources/user/js/wrest.js?ver=171222"></script>
 	<script src="/tripfulaxel/resources/user/js/placeholders.min.js"></script>
 	<!-- 웹 폰트 확인 후 변경 -->
 	<link rel="stylesheet" href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">

     <script src="/tripfulaxel/resources/user/js/modernizr.custom.70111.js"></script>

     <!-- 파비콘 이미지 변경 -->
 	<link rel="icon" type="image/png" sizes="16x16" href="https://www.travelmaker.co.kr/img/favicon-16x16.png">


 	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
 	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
 	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

     <link rel="stylesheet" href="/tripfulaxel/resources/user/css/html/main.css?ver=20210620">
     <link rel="stylesheet" href="/tripfulaxel/resources/user/css/html/common.css?ver=20210620">
     <link rel="stylesheet" href="/tripfulaxel/resources/user/css/html/style.css?ver=20210620">


 	<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
 	<script type="text/javascript" src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
 	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.9.0/slick.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
 	<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/js/swiper.min.js"></script>

     <script type="text/javascript" src="/tripfulaxel/resources/user/js/html/main.js"></script>
     <script type="text/javascript" src="/tripfulaxel/resources/user/js/html/style.js"></script>
 	<script type="text/javascript" src="/tripfulaxel/resources/user/js/html/function.js"></script>

     <script src="https://kit.fontawesome.com/676df56a46.js" crossorigin="anonymous"></script>
 	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">


 	<link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap" rel="stylesheet">

 	<style>
 	#head { position: fixed; 
 		margin-right: 400px;
 	} 
 	
 	.topimg img {
 		object-fit: cover !important;
 		width: 800px !important;
 		height: 420px !important;
 	}
 	

 	</style>
 </head>
 <body>
 <jsp:include page="../common/header.jsp"></jsp:include>
<br>

 	<section class="container pcWrap">

 		<div class="offerWrap clearfix" style="position: relative; width:860px">
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
 							href="#offerMaker">나만의 여행!</a></li>
 						<li class="floatL" data-id="offerTravel"><a style="color:white;"
 							href="#offerTravel">여행 소개</a></li>
 						<li class="floatL" data-id="Course"><a style="color:white;" href="#Course">코스
 								안내</a></li>
 						<li class="floatL" data-id="offerInfo"><a style="color:white;" href="#offerInfo">안내
 								사항</a></li>
 						<li class="floatL" data-id="offerReview"><a style="color:white;"
 							>후기</a></li>
 					</ul>
 				</div>
 				<div class="offerArea clearfix" id="offerMaker">
 					<h3 class="txt_tit" style="padding-bottom: 20px;">이번 여행은요~</h3>
 					<div class="clearfix2 offer_tm_profile">
 						<div class="profile_details clearfix">
 							<div class="tm_info floatL" style="font-size: 18px;">
 								<h3 class="nick">
 								</h3>
 								<p class="txt_md">
 									지역 : 제주
 								</p>
	
 								<p style="width: 100%;" class="txt_md">
 									한마디 : <c:out value="${trip[0].userTripComentTitle }"/>
 								</p>
 								<p class="txt_md">
 									나의 후기 점수 : 
 									<c:forEach var="cnt" begin="1" end="${trip[0].userTripComentPoint}">
 										<img src="/tripfulaxel/resources/images/common/star.png" style="width:20px; height:20px;">
 									</c:forEach>
 								</p>
 								<p style="width: 100%;" class="txt_md">
 									지출비용 : <c:out value="${trip[0].userTripPrice }"/>
 								</p>
 							</div>
 						</div>
 					</div>
 				</div>

 				<div class="offerArea" id="offerTravel">
 					<div class="">
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
 						<div class="">
 							<h4 class="txt_big" style="margin-bottom: 20px;">여행 포인트</h4>
 							<ul class="textP ">
 								<li class="WhiteSpacing text_cut_expand1"
 									style="width: 100%; word-break: break-all;">중국 하면 로컬음식!
 									육즙을 빨대로 먹을 수 있는 일명 빨대 만두, 중국의 전통 간식인 과일 꼬치 탕후루, 달걀과 각종 채소, 치즈,
 									베이컨 등을 넣어 또띠아처럼 말아 먹는 따뜻하고 든든한 간식 쇼좌삥 한 입, 해가 지면 하나둘 보이는 길거리 좌판
 									위의 꼬치 요리와 맥주를 한 잔 들이켜면 여행에서의 소소한 행복이 전해져요. 블로그의 유명 맛집들도 좋지만,
 									저렴하고 푸짐한 로컬 음식을 먹으며 중국의 맛에 빠져보는 것은 어떨까요?</li>
 							</ul>
 						</div>
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
 							<h4 class="txt_big">여행 시작 장소</h4>
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
 				</div>
 				<div class="offerArea floatL" style="margin-bottom: 0px"
 					id="offerInfo">
 					<div style="width: 770px;">
 						<c:if test="${trip[0].include ne ''} ">
 						
	 						<div class="offerBox">
	 							<h4 class="txt_big">포함사항</h4>
	 							<ul class="textP">
	 								<li class="txtG" style="word-break: break-all;">
	 									<c:out value="${trip[0].include }"/>
	 								</li>
	 							</ul>
	 						</div>
 						
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
 					<div class="reviewBox">
 						
 					</div>
 				</div>
 			</div>
 			<!-- 상품가격결과영역 시작-->
 			<div id="sticker" class="offerResultWrap floatR">

 			<div id="head">
 				<div class="offerResult new_box_shadow" style="width:380px;">
 					<span class="area_txt">여행 설계자의 여행 후기 입니다.</span>
 					<h2 class="tit travel_title"><c:out value="${trip[0].userTripComentTitle }"/></h2>
 					<div
 						style="width: 30px; position: absolute; top: 10px; right: 21px;">
 					</div>
 					<br>
 					<ul class="inputLabel">
 						<span class=" txtC" style="font-size: 16px; color:black;">여행 날짜 : <c:out value="${trip[0].tripStartDate }"/> ~ <c:out value="${trip[0].tripEndDate }"/></span><br>
 						<span class=" txtC" style="font-size: 16px; color:black;">여행 인원 : 혼자</span><br>
 						<span class=" txtC" style="font-size: 16px; color:black;">나의 후기 점수 : </span>
 						<c:forEach var="cnt" begin="1" end="${trip[0].userTripComentPoint}">
							<img src="/tripfulaxel/resources/images/common/star.png" style="width:20px; height:20px;">
 						</c:forEach>
 					</ul>
 						<div class="msgCont">
                    <div class="clearfix">
                    
                        
                    </div>
                    <!-- <div style="width:340px; height:250px; border:1px">
                    <img src="/tripfulaxel/resources/images/trip/guide1.png" style="object-fit:cover; width:100%; height:100%">
                    </div> -->
                </div>
				<div class="msgCont">
                    <div class="clearfix">
                        <span class=" txtC" style="font-size: 21px; color:black; margin-top:10px;">나만의 여행 후기</span>
                    </div>
                    <div style="width:340px; height:250px; border:1px solid #E2E2E2">
                    <label style="font-size: 16px; color:black; margin-left:10px;"> <c:out value="${trip[0].userTripComent }"/></label></div>
                </div>
 						
 				</div>
 				</div>

 				<!-- //상품가격결과영역 끝-->
 				<!-- //TM 소개영역 끝 -->
                
 				
 				<!-- 
 					문의하기
 				<div class="popMsg dialog" style="display: none;">
                <div class="msgCont">
                    <div class="clearfix">
                        <div class="msgImg floatL">
                            <img src="/img/html/tm_admin/imgs/tmprofile/831mb_profile.jpg" alt="트래블 메이커 프로필 사진">
                        </div>
                        <div class="floatL txt_bold">
                            <p>To.</p>
                            <p>이안 TM</p>
                        </div>
                    </div>
                    <textarea name="sendcontent" id="" placeholder="내용을 입력하세요."></textarea>
                    <button class="btn btnBgC btnFull txt_md" onclick="javascript:sendMessage();">메시지 전송</button>
                </div>
            </div>
 				
 				 -->
 			</div>
 		</div>
 		<!-- //상품상세영역 끝 -->
 		<div class="hiddenBox"></div>
 		</div>
 	</section>
 	<!-- //본문 영역 끝 -->


 </body>
 </html> 