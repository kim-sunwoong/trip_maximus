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
	 							<img src="${pageContext.servletContext.contextPath}/resources/images/trip/usertrip/${tripImg.saveName}">
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
 							href="#offerReview">후기</a></li>
 					</ul>
 				</div>
 				<div class="offerArea clearfix" id="offerMaker">
 					<h3 class="txt_tit" style="padding-bottom: 20px;">제가 계획했어요!</h3>
 					<div class="clearfix2 offer_tm_profile">
 						<div class="profile_details clearfix">
 							<div class="pfImg floatL">
 								<img src="/tripfulaxel/resources/images/trip/guide1.png">
 							</div>
 							<div class="tm_info floatL" style="font-size: 18px;">
 								<h3 class="nick">
 								</h3>
 								<p class="txt_md">
 									지역 : 서울
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
 							<h4 class="txt_big" style="margin-bottom: 20px;">로컬 포인트</h4>
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
 								코스 안내<span class=""> &#40;총 <span>05</span>시간 <span>00</span>분
 									소요&#41;
 								</span>
 							</h4>
 							<div class="corseWrap">
 								<c:forEach var="course" items="${ trip[0].tripCourseList}" varStatus="status">
 									<dl class="clearfix new_box_shadow">
	 									<dt class="floatL" style="width:200px; height:220px;">
	 										<img src="${pageContext.servletContext.contextPath}/resources/images/trip/usertrip/${course.image}">
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
 				</div>
 				<div class="offerArea floatL" style="margin-bottom: 0px"
 					id="offerInfo">
 					<div style="width: 770px;">
 						<div>
 							<h4 class="txt_big" style="margin-bottom: 20px;">로컬가이드 한마디</h4>
 							<ul class="textP">
 								<li id="text_cut_expand3"
 									class="WhiteSpacing offerWhiteSpacing text_cut_expand3">1.
 									중국 여행비자 중국을 여행하기에 앞서 제일 중요한 건 비자 발급이에요. 여행을 오시기 최소 2주 전에 반드시!
 									비자를 발급받아야 한다는 점 명심해주세요! 비자는 마트에서 쉽게 볼 수 있는 여행사 부스에서도 발급할 수
 									있는데요, 가격은 10만 원 안팎의 가격이며 (보통 현금 혹은 계좌이체만 가능) , 여권, 비자 사진( 여권
 									사진과 다르며 촬영 시기가 3개월이 넘지 않는 흰색 배경의 사진, 흰옷 금지) 을 준비해주시면 된답니다! 중국
 									비자센터에 직접 방문하신다면 조금 더 저렴한 가격으로 발급을 받으실 수도 있어요. 2. 필수 애플리케이션 다운받기
 									(VPN) 중국은 카카오톡의 일부 기능, 페이스북, 인스타그램과 같은 SNS 및 인터넷 검색이 막혀있어요. 이
 									때문에 앱스토어에서 VPN이라는 애플리케이션을 다운받아 오셔야 불편함 없이 여행을 즐기실 수 있습니다! (상하이
 									지하철 노선도) 상하이는 우리나라처럼 대중교통이 발달되어 있고 요금이 굉장히 저렴해요. 지하철 노선도를 다운받아
 									오신다면 더욱더 순조로운 여행이 되실 거에요. *지하철역에서 원데이 패스를 구매하신다면 18위안 (약 3천 원)의
 									가격으로 발급 시부터 24시간 이용 가능하다는 점도 참고해 주세요! 3. USIM칩 / 포켓 와이파이 대여
 									현지에서 구매한 USIM 칩은 국내 휴대전화와 호환되지 않는 경우가 있으니 국내에서 미리 구매해 오시거나,
 									공항에서 포켓 와이파이를 대여해 오시는 것을 추천해 드려요. 4.지하철 이용이 어려우신 분들의 경우 우버 택시와
 									비슷한 디디추싱을 이용하게 될 거예요. 택시 이용 시엔 트래블 비용이 추가됩니다:)</li>
 							</ul>
 						</div>
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
 						<div class="offerBox">
 							<h4 class="txt_big">취소 및 환불 규정</h4>
 							<ul class="textP text_cut_expand2">
 								<li class="txtG">- 여행시작 30일전까지 통보시: 여행 요금 전액 환불, 여행자 부담 없음</li>
 								<li class="txtG">- 여행시작 20일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
 									10%와 “회사” 수수료 공제 후 환불</li>
 								<li class="txtG">- 여행시작 6일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
 									15%와 “회사” 수수료 공제 후 환불</li>
 								<li class="txtG">- 여행시작 1일 전까지 통보시: 여행요금에서 “트래블메이커” 요금의
 									20%와 “회사” 수수료 공제 후 환불</li>
 								<li class="txtG" style="margin-bottom: 10px;">- 여행시작 시간 기준
 									24시간 이내 통보시: 여행요금에서 “트래블메이커” 요금의 50%와 “회사” 수수료 공제 후 환불</li>
 								<li class="">* “여행자”가 여행요금을 결제(지급)한 때로부터 24시간 이내에 여행계약을
 									취소(철회)하는 경우와 “여행자”가 트래블 예약 후 TM이 여행 확정하기 전에 취소(철회)하는 경우는 여행요금을
 									전액 환불합니다. 단, “여행자”가 여행요금을 결제하였다고 하더라도 해당 시점으로부터 24시간 이내 여행이 시작될
 									경우는 전액 환불 대상에서 제외합니다.</li>
 								<li class="">* 취소(철회) 통보 시점은, ‘취소 요청서가 “회사” 플랫폼에 접수된 시간’ 또는
 									“회사” 공식 카카오 상담센터를 통하여 취소(철회) 통보한 내용이 기록된 시간’을 기준으로 합니다.</li>
 							</ul>
 						</div>
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
                    <div style="width:340px; height:250px; border:1px">
                    <img src="/tripfulaxel/resources/images/trip/guide1.png" style="object-fit:cover; width:100%; height:100%">
                    </div>
                </div>
 						<div class="msgCont">
                    <div class="clearfix">
                        <div class="msgImg floatL" style="width:50px; height:50px;">
                            <img src="/tripfulaxel/resources/images/trip/guide1.png" style="object-fit:cover; width:100%; height:100%">
                        </div>
                        <span class=" txtC" style="font-size: 17px; color:black; margin-top:10px;">나만의 여행 후기</span>
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