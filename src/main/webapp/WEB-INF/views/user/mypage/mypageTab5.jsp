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
        /* #detail thead th {border-top: 3px solid rgba(0, 0, 0, 78);} */
        body,html {min-width: 1250px;}
        #detail_content input {width:300px; height: 30px;}
        .buttonset {color: blue;border: 1px solid blue;}
        .exit {width: 70px; height: 30px; border: 1px solid black;}
        input {border:1px solid rgba(0,0,0,0.4) !important;}
        th, td {height: 40px !important;}
        /* tbody tr {background-color: #F7FAFC !important;} */
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
            font-weight: bold; margin-left: 1rem;">마이페이지</h2></div>
            <br>
            <br>
            <div class="tabList" style="margin: 0 auto;">
                <div class="tabb" ><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb" ><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 같이가요</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 여행후기</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                <!-- <div class="exit">회원탈퇴</div> -->

                <table width="500" height="500" align="center" style="margin-top:100px; margin: 0 auto;">
                    <tr>
                        <td colspan="2" height="80" style=" background-color: #F7FAFC;"><h3>회원정보 수정</h3></td>
                        <td></td>
                    </tr>
                    <tr style="background-color: white;">
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" name="name"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>생년월일</td>
                        <td><input type="text" name="birth"></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" name="email"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>연락처</td>
                        <td><input type="text" name="tel"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td colspan="2"></td>
                        <td></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>이전 비밀번호</td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>새로운 비밀번호</td>
                        <td><input type="password" name="pass"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>새로운 비밀번호 확인</td>
                        <td><input type="password" name="pass2"></td>
                    </tr>
                    <tr style="background-color: white;">
                        <td colspan="2"></td>
                        <td></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td align="center" colspan="2"><input type="submit" class="buttonset" value="변경하기" style="font-family: 'noto sans KR', serif; width: 80px;  height: 30px"></td>
                    </tr>
					</table>


            </div>
        </div>
    </div>
            <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
    
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>