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
	<style>
	        #detail thead th {border-top: 3px solid rgba(0, 0, 0, 0.7);}
	
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
                <div class="tabb"><a class="pic1" href="${pageContext.request.contextPath}/user/guidemypage/guideTab1">내 여행상품</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/guidemypage/guideTab2">내 정보수정</a></div>
                <div class="tabb"><a class="pic3" href="${pageContext.request.contextPath}/user/guidemypage/guideTab3">참가인원보기</a></div>
                <div class="tabb" style="border: 3px solid skyblue;"><a class="pic4" href="${pageContext.request.contextPath}/user/guidemypage/guideTab4">문의관리</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/guidemypage/guideTab5">후기관리</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/guidemypage/guideTab6">정산관리</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/guidemypage/guideTab7">등업신청</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                <table align="center" style="border-collapse: collapse;">
                    <thead>
                        <tr>
                            <th>신청자명</th>
                            <th>제목</th>
                            <th>문의날짜</th>
                            <th>문의 상태</th>
                        </tr>
                    </thead>
                    <tbody style="margin-top: 20px;">
                        <tr>
                            <th>정주영</th>
                            <th>   밥  먹  어   요?</th>
                            <th>2021/05/05</th>
                            <th>미답변</th>
                        </tr>
                        <tr>
                            <th>박주영</th>
                            <th>   밥  안  먹  어   요?</th>
                            <th>2021/06/05</th>
                            <th>미답변</th>
                        </tr>
                    </tbody>

                </table>

            </div>
        </div>
    </div>
	
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>