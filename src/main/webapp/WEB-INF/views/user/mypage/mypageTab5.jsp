<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>
<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">

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
   <script src="http://code.jquery.com/jquery-latest.min.js"></script>
   
    <script type="text/javascript">
    function regist() {
        
        var userpassword = document.getElementById("userPwd");
        var repassword = document.getElementById("repassword");
        
     // 비밀번호 
        if (!chk(/^[a-zA-Z0-9]{8,15}$/, userpassword,
              "비밀번호는 영어와 숫자를 사용하여 8자리 이상 15자리 이하 입력하세요.")) {
           return false;
        }
     
        var checkNum = document.getElementById("userPwd").value
        .search(/[0-9]/g);
  var checkEng = document.getElementById("userPwd").value
        .search(/[a-z]/ig);
     
    if (checkNum < 0 || checkEng < 0) {
        alert("비밀번호는 숫자와 영문자를 혼용하여야 합니다.");
        userpassword.value = "";
        userpassword.focus();
        return false;
     }

     // userpassword와 repassword 일치하는지 확인
     if (userpassword.value != repassword.value) {
        alert("비밀번호가 다릅니다. 다시 확인해주세요.");
        repassword.value = "";
        repassword.focus();
        return false;
     }}
     </script>
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
                <div class="tabb"><a class="pic8" href="${pageContext.request.contextPath}/user/mypage/mypageTab8">여행 문의내역</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
				
                	<form action="${ pageContext.servletContext.contextPath }/user/mypage/update/userinfo" method="post">
                <table width="500" height="500" align="center" style="margin-top:100px; margin: 0 auto;">
                    <tr>
                        <td colspan="2" height="80" style=" background-color: #F7FAFC;"><h3>회원정보 수정</h3></td>
                    </tr>
                    <tr style="background-color: white;">
                        <td></td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>이름</td>
                        <td><input type="text" name="userName" value="${user.userName}" disabled="disabled"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>성별</td>
                        <td><input type="text" name="userGender" value="${user.userGender}" disabled="disabled"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>생년월일</td>
                        <td><input type="text" name="userBday" value="${user.userBday}" disabled="disabled"></td>
                    </tr>
                    <tr>
                        <td>이메일</td>
                        <td><input type="text" value="${user.userEmail}" disabled="disabled"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>연락처</td>
                        <td><input type="text" name="userPhone" value="${user.userPhone}"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td colspan="2"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>새로운 비밀번호</td>
                        <td><input type="password" name="userPwd" id="userPwd" class="pw"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td>새로운 비밀번호 확인</td>
                        <td><input type="password" id="repassword" class="pw"></td>
                    </tr>
                    <tr style="background-color: white;">
                        <td colspan="2"></td>
                    </tr>
                    <tr style="background-color: #F7FAFC;">
                        <td align="center" colspan="2"><input type="submit" onclick="regist()" class="buttonset" value="변경하기" style="font-family: 'noto sans KR', serif; width: 80px;  height: 30px"></td>
                    </tr>
					</table>
					</form>

            </div>
        </div>
    </div>
            <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
    
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>