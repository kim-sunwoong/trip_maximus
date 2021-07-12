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
	<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/tab7menu.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
		 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<script>
    				     function from(){
							var a = document.getElementById("btnradio2");

							if(a.checked === true){
								document.getElementById("AddFrom").style.display = '';
							}
							
    					}; 
    					function fromdel(){
    						var a = document.getElementById("btnradio2");
    						if(a.checked === false){
								document.getElementById("AddFrom").style.display = 'none';
							}
    					}
    				    /* (function(){
							var a = document.getElementById("btnradio2");

							if(a.checked == true){
								document.getElementById("AddFrom").style.display = '';}
							else {
								document.getElementById("AddFrom").style.display = 'none';
							}
    					})(); */
	</script>
    <style>
       /*  #detail thead th {border-top: 3px solid rgba(0, 0, 0, 0.7);} */

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
        tr {background:none !important;}
        
        table *{color : rgba(0,0,0,0.3);}
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
                <div class="tabb" onclick="location.href='${pageContext.request.contextPath}/user/mypage/mypageTab1'" style="cursor: pointer;"><a class="pic1">같이가요 신청내역</a></div>
                <div class="tabb" ><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 같이가요</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 여행후기</a></div>
                <div class="tabb" ><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb" ><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
                <div class="tabb"><a class="pic8" href="${pageContext.request.contextPath}/user/mypage/mypageTab8">여행 문의내역</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                
                <!-- <div class="select" style="margin: 0 auto; with: 30%; display: flex; margin-bottom: 50px; justify-content: center; border:none;">
                    <input type="radio" id="select" name="shop"><label for="select">관리자에게 문의하기</label>
                    <input type="radio" id="select2" name="shop" style="margin-left: -56px;"><label for="select2">여행 문의하기</label>
               </div> -->
               
           <!--     <div style="width: 90% ; margin : 0 auto; display: flex; justify-content: center;"><h2 style="display: block;
  font-size: 1.17em;  margin-top: 1em;  margin-bottom: 3em;font-weight: bold;">문의 답변하기</h2></div> -->
  
  
  
               <form action="${ pageContext.servletContext.contextPath }/user/mypage/insert/Request" method="post" enctype="multipart/form-data">
               
               <div class="btn-group" role="group" aria-label="Basic radio toggle button group" style="display: flex; justify-content: center; margin:0 auto;">
				  <input type="radio" class="btn-check" name="reqType" id="btnradio1" onchange="fromdel()" autocomplete="off" checked value="5">
				  <label class="btn btn-outline-primary" for="btnradio1" style="width: 400px;">일반 문의하기</label>
				
				  <input type="radio" class="btn-check" name="reqType" id="btnradio2" onchange="from()" autocomplete="off" value="2">
				  <label class="btn btn-outline-primary" for="btnradio2" style="width: 400px;">신고하기</label>
					<script>
	</script>
				</div>
				
                <div id="contact-area" style="margin: 0 auto; clear: both; margin-top: 50px; ">
			
                    	<table>
                    	<tbody>
                    			<tr>
                    				<th colspan="2"></th>
            					</tr>
                    			<tr id="AddFrom" style="display: none;">
                    				<th>신고 대상 : </th>
                    				<th><input type="text" name="reqTo" id="From" value="0" style="border: 1px solid rgba(0,0,0,0.3);"/></th>
                    			</tr>
                    			<tr>
                    				<th>건의 내용 : &nbsp;&nbsp;</th>
                    				<th><textarea name="reqReason" id="Message"  style="height: 200px; border: 1px solid rgba(0,0,0,0.3);"></textarea></th>
                    			</tr>
                    			<tr>
                    				<th></th>
                    				<th><input type="file" multiple="multiple" name="multiFiles"></th>
                   				</tr>
							<tr>
								<th></th>
								<th><button type="submit" class="btn btn-info" style="margin-right: 40px;">제출하기</button></th>
							</tr>
						</tbody>
                        
                        </table>
                    </div>
                    <div style="clear: both;"></div>
                    
                 </form>
                 
            </div>
        </div>
    </div>
            <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
    
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>