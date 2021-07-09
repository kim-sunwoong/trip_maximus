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
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
    <style>
        #detail thead th {
            border-top: 3px solid rgba(0, 0, 0, 78);
            text-align: center;

        }

        #detail tbody th {
            text-align: center;
        }

        /* #detail_content thead { width: 50%; height: 70px;} */
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
            <div class="tabList">
                <div class="tabb"><a class="pic1" href="${pageContext.request.contextPath}/user/guidepage/guideGoods">내 여행상품</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/guidepage/guideTab2">내 정보수정</a></div>
                <div class="tabb"><a class="pic3" href="${pageContext.request.contextPath}/user/guidepageguideParticipants">참가인원보기</a></div>
                <div class="tabb"><a class="pic4" href="${pageContext.request.contextPath}/user/guidepage/guideContact">문의관리</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/guidepage/guideReview">후기관리</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/guidepage/guideTax">정산관리</a></div>
                <div class="tabb" style="border: 3px solid skyblue;"><a class="pic7" href="${pageContext.request.contextPath}/user/guidepage/guideGradeup">등업신청</a></div>
            </div>
        </div>

        <div id="detail_content" style=" width:95%;  margin: 0 auto; margin-bottom: 150px; margin-top: 150px;">
            <div id="detail" style="display: flex; justify-content: space-between; width: 100%; margin: 0 auto;">

				<div class="card mb-3" style="width: 90%; margin: 0 auto;">
				  <div class="row g-0">
				    <div class="col-md-7" >
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/review3.jpg" class="card-img-top" alt="...">
				    </div>
				    <div class="col-md-4" style="margin-left: 30px;">
				      <div class="card-body">
				      <br><br><br><br><br>
				        <h5 class="card-title">나의 여행 제목이름</h5>
				        <br><br>
						<p class="card-text">제주도에 오신것을 혼영하빈다 혼저옵소에</p>
						<br>
				        <p class="card-text"><small class="text-muted" style="height: 40px; line-height: 1.5rem;">상품리뷰수 : <a>50</a>개</small></p>
				        <br>
				        <p class="card-text"><small class="text-muted" style="height: 40px; line-height: 1.5rem;">평균별점 : <a>4.6</a>점</small></p>
				        <br><br>
				        <button type="button" class="btn btn-outline-info">등업요청</button>
				      </div>
				    </div>
				  </div>
				</div>

                <%-- <div class="card" style="width: 30%; margin: 0 auto;">
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/review3.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">나의 여행 제목이름</h5>
                        <p class="card-text">제주도에 오신것을 혼영하빈다 혼저옵소에</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item" style="height: 40px; line-height: 1.5rem;">상품리뷰수 : <a>50</a>개</li>
                        <li class="list-group-item" style="height: 40px; line-height: 1.5rem;">평균별점 : <a>4.6</a>점</li>
                    </ul>
                    <div class="card-body">
                        <a href="#" class="card-link">등업요청</a>
                    </div>
                </div> --%>

				</div>
            </div>
        </div>
	
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>