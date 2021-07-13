<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>


<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">
<script src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
<script src="/tripfulaxel/resources/user/js/jquery.menu.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/common.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/wrest.js?ver=171222"></script>
<script src="/tripfulaxel/resources/user/js/placeholders.min.js"></script>

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
<script>
					
						function sort() {
							
							var themeList = document.getElementById("search_theme");
							theme = themeList.options[themeList.selectedIndex].value;
							
							var sortList = document.getElementById("sort_condition");
							sort = sortList.options[sortList.selectedIndex].value;
							
							
							if (theme != "") {
								location.href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=3&sortTheme=" + theme + "&sortCondition=" + sort;
							} else {
								location.href="${pageContext.servletContext.contextPath}/trip/select/list?tripType=3&sortCondition=" + sort;
							}
						}
						
</script>
</head>
<body>

<jsp:include page="../common/header.jsp"></jsp:include>


	<section id="speakers">
		<div class="container" data-aos="fade-up">
			<div class="section-header">
				<h2>나의 단 하나뿐인 여행을 공유해 보세요!!</h2>
				<p>세상에 단 하나뿐인 나만의 여행을 경험해보세요!</p>
			<!-- searchBox -->
				<div class="new_search_box">
				<ul class="clearfix">
					<li style="margin-left: 380px; margin-top: 10px; width:170px;">
							<select name="search_condition" id="sort_condition" onchange="sort()" style="width:170px;">
								<option value="">인기순/최신순</option>
								<option value="최신순" <c:if test="${condition.sortCondition eq '최신순' or condition.sortCondition eq ''}">selected</c:if>>최신순</option>
								<option value="인기순" <c:if test="${condition.sortCondition eq '인기순'}">selected</c:if>>인기순</option>
							</select>
					</li>
					<li style="margin-left: 5px; margin-top: 10px; width:260px;">
						<select name="search_theme" id="search_theme" onchange="sort()" style="width:260px;">
								<option value="" <c:if test="${condition.sortTheme == null}">selected</c:if>>여행 테마 선택</option>
								<option value="1" <c:if test="${condition.sortTheme == 1}">selected</c:if>>직접 체험하는 액티비티</option>
								<option value="2" <c:if test="${condition.sortTheme == 2}">selected</c:if>>온몸으로 느끼는 자연</option>
								<option value="3" <c:if test="${condition.sortTheme == 3}">selected</c:if>>가이드만 알고 있는 시크릿 스팟 여행</option>
								<option value="4" <c:if test="${condition.sortTheme == 4}">selected</c:if>>이 곳에서만 맛 볼 수 있는 로컬 맛집/카페</option>
								<option value="5" <c:if test="${condition.sortTheme == 5}">selected</c:if>>인생샷을 건지는 스냅</option>
						</select>
					</li>
				</ul>
			</div>


			<!-- searchBox -->
			</div>


			<div class="row">
			
				<c:forEach var="trip" items="${tripList }">
			
				<div class="col-lg-4 col-md-6">
					<div class="speaker" data-aos="fade-up" data-aos-delay="100" style="width:360px; height:270px;"
					onclick="location.href='${pageContext.servletContext.contextPath}/trip/select?tripCode=${trip.tripCode }&tripType=3'">
						<img src="${pageContext.servletContext.contextPath}/resources/images/trip/guidetrip/${trip.tripImgList[0].saveName}"
							alt="Speaker 1" class="img-fluid" style="object-fit:cover; width:100%; height:100%;">
						<div class="details">
							<h3>
								<a><c:out value="${trip.tripTitle }"/></a>
							</h3>
							<p><c:out value="${trip.tripStartDate }"/> ~ <c:out value="${trip.tripEndDate }"/> </p>
								<h4 style="color: white;">코스 : ${trip.tripCourseList[0].courseName}</h4>
							<div class="social">
								<h4 style="color: white;">나의 후기 점수 : 
									<c:forEach var="cnt" begin="1" end="${trip.userTripComentPoint}">
 										<img src="/tripfulaxel/resources/images/common/star.png" style="width:20px; height:20px;">
 									</c:forEach>
								</h4>
							</div>
						</div>
					</div>
				</div>
			
			</c:forEach>

			</div>
		</div>


	</section>

<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>