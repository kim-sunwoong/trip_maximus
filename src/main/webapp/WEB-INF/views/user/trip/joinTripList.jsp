<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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

<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,700,700i|Raleway:300,400,500,700,800"
	rel="stylesheet">

<link
	href="/tripfulaxel/resources/user/assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="/tripfulaxel/resources/user/assets/vendor/swiper/swiper-bundle.min.css"
	rel="stylesheet">

<!-- Template Main CSS File -->
<link href="/tripfulaxel/resources/user/assets/css/style.css"
	rel="stylesheet">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

</head>
<body>

	<jsp:include page="../common/header.jsp"></jsp:include>
	
	<section id="speakers">
		<div class="container" data-aos="fade-up">
			<div class="section-header">
				<h2 style="color:skyblue;">같이가요!! 여행 친구를 구해용!</h2>
				<p>세상에 단 하나뿐인 나만의 여행을 경험해보세요!</p>
			<!-- searchBox -->
				<div class="new_search_box">
				<ul class="clearfix">
					<li style="margin-left: 350px; margin-top: 10px; width:170px;">
					<select name="search_class" style="width:170px;">
							<option value="">출발기간 선택!</option>
							<option value="인기순">낼모레</option>
							<option value="후기순">일주일뒤</option>
							<option value="최신순">한달뒤</option>
					</select></li>
					<li style="margin-left: 5px; margin-top: 10px; width:250px;">
					<select name="search_class" style="width:250px;">
							<option value="">같이가요 여행테마</option>
							<option value="인기순">TM만 알고 있는 시크릿 스팟 트래블</option>
							<option value="후기순">온몸으로 느끼는 자연</option>
							<option value="최신순">이곳에서만 맛 볼 수 있는 로컬 맛집/카페</option>
							<option value="최신순">현지 전문가에게 배우는 클래스</option>
					</select></li>
				</ul>
			</div>


			<!-- searchBox -->
			</div>


			<div class="row">
			<c:forEach items="joinTrip">
			
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju1.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>${joinTrip.tripTitle }</a>
							</h3>
							<p>${joinTrip.tripStartDate } ~ ${joinTrip.tripEndDate }</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
			
			</c:forEach>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju2.png"
							alt="Speaker 2" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju3.png"
							alt="Speaker 3" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju5.png"
							alt="Speaker 4" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju6.png"
							alt="Speaker 5" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju7.png"
							alt="Speaker 6" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju8.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju1.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju2.png"
							alt="Speaker 2" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju3.png"
							alt="Speaker 3" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju5.png"
							alt="Speaker 4" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju6.png"
							alt="Speaker 5" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju7.png"
							alt="Speaker 6" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju8.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju1.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju2.png"
							alt="Speaker 2" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju3.png"
							alt="Speaker 3" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju5.png"
							alt="Speaker 4" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="200">
						<img src="/tripfulaxel/resources/user/images/trip/jeju6.png"
							alt="Speaker 5" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="300">
						<img src="/tripfulaxel/resources/user/images/trip/jeju7.png"
							alt="Speaker 6" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100">
						<img src="/tripfulaxel/resources/user/images/trip/jeju8.png"
							alt="Speaker 1" class="img-fluid">
						<div class="details">
							<h3>
								<a>먹방투어 같이가요~</a>
							</h3>
							<p>일자 : 6/20 ~ 6/23</p>
								<h4 style="color: white;">코스 : 서귀포 ~ 부산 앞바다</h4>
							<div class="social">
								<h4 style="color: white;">인원 : 2/4 곧 출발 합니다~</h4>
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>


	</section>
	
	<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>