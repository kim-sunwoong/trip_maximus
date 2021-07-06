<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">
<script src="https://www.travelmaker.co.kr/js/modernizr.custom.70111.js"></script>

<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/main.css?ver=20210620">
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/common.css?ver=20210620">
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/style.css?ver=20210620">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
<style>
#detail thead th {
	text-align: center;
}

#detail tbody th {
	text-align: center;
}
</style>
</head>


<body>
	<jsp:include page="../common/header.jsp" />


	<div id="wrapp">
		<div id="tabwrap">
			<div style="width: 90%; margin: 0 auto;">
				<h2
					style="display: block; font-size: 1.5em; margin-block-start: 0.83em; margin-block-end: 0.83em; margin-inline-start: 0px; margin-inline-end: 0px; font-weight: bold; margin-left: 1rem;">가이드
					마이페이지</h2>
			</div>
			<br> <br>
			<div class="tabList">
				<div class="tabb">
					<a class="pic1"
						href="${pageContext.request.contextPath}/user/guidepage/guideGoods">내
						여행상품</a>
				</div>
				<div class="tabb">
					<a class="pic2"
						href="${pageContext.request.contextPath}/user/guidepage/guideTab2">내
						정보수정</a>
				</div>
				<div class="tabb">
					<a class="pic3"
						href="${pageContext.request.contextPath}/user/guidepage/guideParticipants">참가인원보기</a>
				</div>
				<div class="tabb">
					<a class="pic4"
						href="${pageContext.request.contextPath}/user/guidepage/guideContact">문의관리</a>
				</div>
				<div class="tabb" style="border: 3px solid skyblue;">
					<a class="pic5"
						href="${pageContext.request.contextPath}/user/guidepage/guideReview">후기관리</a>
				</div>
				<div class="tabb">
					<a class="pic6"
						href="${pageContext.request.contextPath}/user/guidepage/guideTax">정산관리</a>
				</div>
				<div class="tabb">
					<a class="pic7"
						href="${pageContext.request.contextPath}/user/guidepage/guideGradeup">등업신청</a>
				</div>
			</div>
		</div>

		<div id="detail_content">
			<div id="detail">


				<c:forEach var="GuideReview" items="${ selectGuideReview }">
					<div class="card mb-3" style="width: 90%; margin: 0 auto;">
						<div class="card-img-top"
							style="width: 97%; margin: 0 auto; display: flex; 
							justify-content: space-between; padding-top: 20px;">
							
							<c:forEach var="img" items="${GuideReview.reviewImg }">
							<img src="${pageContext.servletContext.contextPath}/resources/user/images/trip/review/${img.reviewsaved}.jpg" 
							 class="card-img1" alt="" width="32%" height="200px"> 
							</c:forEach>
						</div>


						<div class="card-body">
							<!-- 여행제목 -->
							<h5 class="card-title" style="margin-top: 20px;">
					          <c:out value="${GuideReview.reviewTitle } "/>
							</h5>
							<br>
							<p class="card-text">
							<!-- 여행후기 -->
							<c:out value="${GuideReview.reviewContent }"/> 
							</p>
							<br>
							<!-- 별점 -->
						    <c:forEach var="grade" begin="1" end="${GuideReview.reviewGrade }"> 
							<img src="/tripfulaxel/resources/images/common/star.png" style="width: 20px; height: 20px;">
							</c:forEach>
							
							<p class="card-text">
								<small class="text-muted">작성자: <c:out value="${GuideReview.reviewContent }"/>  </small> <br> 
								
								<small class="text-muted">
								 <c:out value="${review.reviewDate } "/> 
								</small>
							</p>
						</div>
					</div>
					</c:forEach>



					<div class="reviewdepth" style="width: 90%">


						<textarea name="Message" id="Message"
							style="float: right; width: 90%; height: 100px; margin-top: 50px; margin: 0 auto; border: 1px solid rgba(0, 0, 0, 0.3); margin-top: 10px;"
							placeholder="답글을 작성해보세요">
                </textarea>

						<input type="submit" class="buttonset" value="작성하기"
							style="font-family: 'noto sans KR', serif; width: 80px; height: 30px; float: right; margin-top: 10px;">
					</div>

					<p>
			</div>
		</div>
	</div>



	<jsp:include page="../common/footer.jsp" />
</body>
</html>