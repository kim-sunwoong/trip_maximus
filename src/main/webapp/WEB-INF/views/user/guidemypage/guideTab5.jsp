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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/html/joonho_new.css">
    <style>
        #detail thead th {
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
                <div class="tabb"><a class="pic1" href="${pageContext.request.contextPath}/user/guidemypage/guideTab1">내 여행상품</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/guidemypage/guideTab2">내 정보수정</a></div>
                <div class="tabb"><a class="pic3" href="${pageContext.request.contextPath}/user/guidemypage/guideTab3">참가인원보기</a></div>
                <div class="tabb"><a class="pic4" href="${pageContext.request.contextPath}/user/guidemypage/guideTab4">문의관리</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic5" href="${pageContext.request.contextPath}/user/guidemypage/guideTab5">후기관리</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/guidemypage/guideTab6">정산관리</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/guidemypage/guideTab7">등업신청</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">

                <div class="card mb-3" style="width: 90%;  margin: 0 auto;">
                    <div class="card-img-top" style=" width: 97%; margin: 0 auto;display: flex; justify-content: space-between; padding-top: 20px;">
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/review1.jpg" class="card-img1" alt="..." width="32%" height="200px" >
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/review2.jpg" class="card-img2" alt="..." width="32%" height="200px" >
                    <img src="${pageContext.request.contextPath}/resources/user/images/mypage/review3.jpg" class="card-img3" alt="..." width="32%" height="200px" >
                    </div>
                    <div class="card-body">
                        <h5 class="card-title" style="margin-top: 20px;">셰프와 함께하는 연말 홈파티</h5>
                        <br>
                        <p class="card-text">This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.This is a wider card with supporting text below as a natural lead-in to
                            additional content. This content is a little bit longer.</p>
                        <br>
                        <p class="card-text"><small class="text-muted">작성일자 : 2021/06/06</small></p>
                    </div>
                    
                </div>
                
                <div class="replyArea" style="width: 90%; margin: 0 auto; margin-top: 50px;">
                
                <table align="center" style="border-collapse: collapse; margin-bottom: 50px;">
                        <thead>
                            <tr>
                                <th style="width: 5%;">작성자</th>
                                <th>댓글내용</th>
                                <th style="width: 5%;">작성일자</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr style="height: 100px;">
                                <td>홍길동</td>
                                <td>너무 즐거운 시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다</td>
                                <td>2021/03/27</td>
                            </tr>
                        </tbody>
                        <tbody>
                        	<tr>
                        		<td colspan="3" ><div style="float: left" ></div>
                        		<div class="reviewdepth" style="width:90%">
               <!--  <h4 style="float: left; width: 90%; display: block;">답글 달기</h4> -->
                <textarea name="Message" id="Message" style=" float:right; width: 90%; height: 100px; margin-top: 50px; margin: 0 auto; border:1px solid rgba(0,0,0,0.3); margin-top:10px;" placeholder="답글을 작성해보세요" ></textarea>
                <input type="submit" class="buttonset" value="작성하기" style="font-family: 'noto sans KR', serif; width: 80px;  height: 30px; float: right; margin-top: 10px;">
                </div>
                </td>
                        	</tr>
                        </tbody>
                        <tbody>
                            <tr style="height: 100px;">
                                <td>홍길동</td>
                                <td>너무 즐거운 시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다시간이었다</td>
                                <td>2021/03/27</td>
                            </tr>
                        </tbody>
                    </table>
                
                <p>
                
                </div>
				</div>
            </div>
        </div>
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>