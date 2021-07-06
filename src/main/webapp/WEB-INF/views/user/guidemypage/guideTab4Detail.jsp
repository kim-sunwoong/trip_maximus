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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/html/tab7menu.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/html/joonho_new.css">
    <style>
        #detail thead th {border-top: 3px solid rgba(0, 0, 0, 0.7);}

        .select {
            padding: 15px 10px;
        }
        .select input[type=radio]{
            display: none;
        }
        .select input[type=radio]+label{
            display: inline-block;
            cursor: pointer;
            height: 40px;
            width:200px;
            border: 1px solid #333;
            line-height: 24px;
            text-align: center;
            font-weight:bold;
            font-size:13px;
            line-height: 40px;
        }
        .select input[type=radio]+label{
            background-color: #fff;
            color: #333;
        }
        .select input[type=radio]:checked+label{
            background-color: #333;
            color: #fff;
        }
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
                
                <!-- <div class="select" style="margin: 0 auto; with: 30%; display: flex; margin-bottom: 50px;">
                    <input type="radio" id="select" name="shop"><label for="select">관리자에게 문의하기</label>
                    <input type="radio" id="select2" name="shop"><label for="select2">여행 문의하기</label>
               </div>d -->


                <div id="contact-area" style="margin: 0 auto; clear: both;">
			
                    <form style="background-color: #f7fafc;">
                    	<table>
                    		<tbody>
                    			<tr>
                    				<th colspan="2"><div style="width: 90% ; margin : 0 auto;"><h2 style="display: block;
  font-size: 1.17em;  margin-top: 1em;  margin-bottom: 1em;  margin-left: 0;  margin-right: 0;  font-weight: bold;">문의 답변하기</h2></div></th>
            				</tr>
            				</tbody>
            				<tbody>
                    			<tr>
                    				<th>제목 : &nbsp;&nbsp;</th>
                    				<th><input type="text" name="Name" id="Name" value="밥먹어요??????"/></th>
                    			</tr>
                    		</tbody>
                    		<tbody>
                    			<tr>
                    				<th>내용 : &nbsp;&nbsp;</th>
                    				<th><textarea name="Message" id="Message"  style="height: 200px; ">밥을 먹으려고 하는데 지금 시간도 시간인데 도대체 언제 밥을먹고 뭘먹고 어떻게 먹야할지 모르겠습니다.</textarea></th>
                    			</tr>
                    		</tbody>
                    		<tbody>
                    			<tr>
                    				<th>답변 : &nbsp;&nbsp;</th>
                    				<th><textarea name="Message" id="Message"  style="height: 300px;"></textarea></th>
                    			</tr>
                    		</tbody>
                    	
						<tbody>
							<tr>
								<th></th>
								<th>
								<input type="submit" name="submit" value="제출하기" class="submit-button" style=" height: 30px; font-size: 1.0rem; font-weight: normal;"/>
								<input type="button" name="back" value="뒤로가기" class="submit-button" style="margin-right: 10px; height: 30px; font-size: 1.0rem; font-weight: normal; "/>
								</th>
							</tr>
						</tbody>
                        
                        </table>
                    </form>
                    
                    <div style="clear: both;"></div>
                    
                </div>

            </div>
        </div>
    </div>
	
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>