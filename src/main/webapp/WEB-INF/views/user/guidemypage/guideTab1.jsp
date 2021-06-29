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
            <div class="tabList" style="margin: 0 auto;">
                <div class="tabb" style="border: 3px solid blue;"><a class="pic1" href="${pageContext.request.contextPath}/user/guidemypage/guideTab1">내 여행상품</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/guidemypage/guideTab2">내 정보수정</a></div>
                <div class="tabb"><a class="pic3" href="${pageContext.request.contextPath}/user/guidemypage/guideTab3">참가인원보기</a></div>
                <div class="tabb"><a class="pic4" href="${pageContext.request.contextPath}/user/guidemypage/guideTab4">문의관리</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/guidemypage/guideTab5">후기관리</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/guidemypage/guideTab6">정산관리</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/guidemypage/guideTab7">등업신청</a></div>
            </div>
        </div>

        <div id="detail_content" style="margin:0 auto; margin-bottom: 150px; ">
            <div id="detail" style="display: flex; justify-content: space-between; width: 87%; margin: 0 auto; margin-top: 150px;">



                <div class="card" style="width: 18rem;">
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/before.jpg" class="card-img-top" alt="..." height="250px">
                    <div class="card-body">
                        <h5 class="card-title">나의 여행 제목이름</h5>
                        <p class="card-text">제주도에 오신것을 혼영하빈다 혼저옵소에</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">게시중</li>
                        <li class="list-group-item">[제주올레] 탐사답사혹사여행</li>
                        <li class="list-group-item">140000</li>
                    </ul>
                    <div class="card-body">
                       <button type="button" class="btn btn-outline-info">판매 그만하기</button>
                       <button type="button" class="btn btn-outline-info">수정</button>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/ing.jpg" class="card-img-top" alt="..." height="250px">
                    <div class="card-body">
                        <h5 class="card-title">나의 여행 제목이름</h5>
                        <p class="card-text">제주도에 오신것을 혼영하빈다 혼저옵소에</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">수정 심사중</li>
                        <li class="list-group-item">[제주올레] 탐사답사혹사여행</li>
                        <li class="list-group-item">140000</li>
                    </ul>
                    <div class="card-body">
                       <button type="button" class="btn btn-outline-info">수정 대기중</button>
                    </div>
                </div>
                <div class="card" style="width: 18rem;">
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/ing.jpg" class="card-img-top" alt="..." height="250px">
                    <div class="card-body">
                        <h5 class="card-title">나의 여행 제목이름</h5>
                        <p class="card-text">제주도에 오신것을 혼영하빈다 혼저옵소에</p>
                    </div>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">심사 종료</li>
                        <li class="list-group-item">[제주올레] 탐사답사혹사여행</li>
                        <li class="list-group-item">140000</li>
                    </ul>
                    <div class="card-body">
                        <button type="button" class="btn btn-outline-info">다시 게시하기</button>
                    </div>
                </div>

            </div>
        </div>
        </div>
        <div class="clearbothsite" style="clear:both; width:100%; height: 1px;margin-top: 150px;"></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>