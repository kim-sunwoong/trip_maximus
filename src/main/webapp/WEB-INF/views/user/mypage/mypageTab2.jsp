<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/mytripreviewmodal.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/user/css/mypage/thumbnail.css">
    
    <style type="text/css">button {background: none; border:none !important;}
    
    
    
    #multiple-container {
    width : 310px;
    height:80px;
    display: flex;
    flex-flow: row nowrap;
}
.image {
    display: block;
    width:100px;
	height:80px;
	text-align:center;
}
.image-label {
    position: relative;
    bottom: 22px;
    left: 5px;
    color: white;
    text-shadow: 2px 2px 2px black;
    display: none;
} 
    
    
    
    #detail thead th {
            text-align: center;
            
        }
        #detail tbody th {text-align: center;}</style>
    <script>
        function PopUp(){
    var pop1 = document.querySelector(".bg");
    var pop2 = document.querySelector(".reviewWrap");
   document.getElementsByName("star")[0].checked = false;
   document.getElementsByName("star")[1].checked = false;
   document.getElementsByName("star")[2].checked = false;
   document.getElementsByName("star")[3].checked = false;
   document.getElementsByName("star")[4].checked = false; 
   


    pop1.style.display='block';
    pop2.style.display='block';

}
function cancel(){
   var pop1 = document.querySelector(".bg");
   var pop2 = document.querySelector(".reviewWrap");
   pop1.style.display='none';
   pop2.style.display='none';
 }
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
            <div class="tabList"  style="margin: 0 auto;">
                <div class="tabb" ><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 같이가요</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 여행후기</a></div>
                <div class="tabb"><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb"><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
                <div class="tabb"><a class="pic8" href="${pageContext.request.contextPath}/user/mypage/mypageTab8">여행 문의내역</a></div>
            </div>
        </div>

        <div id="detail_content">
            <div id="detail">
                <table align="center" style="border-collapse: collapse;margin:0 auto;">
                    <thead>
                        <tr>
                            <th>여행제목</th>
                            <th>신청일자</th>
                            <th>가이드</th>
                            <th>1인당 가격</th>
                            <th>결제금액</th>
                            <th>취소여부</th>
                            <th>진행상태</th>
                        </tr>
                    </thead>
                    <tbody style="margin-top: 20px;">
                    	<c:forEach items="${gApplyList}" var="g">
                        <tr>
                            <td><c:out value="${g.gTripTitle}"/></td>
                            <td><c:out value="${g.gTripDate}"/></td>
                            <td><c:out value="${g.gName}"/></td>
                            <td><c:out value="${g.price}"/></td>
                            <td><c:out value="${g.payment}"/></td>
                            <td><c:out value="${g.status.tripCancelYN}"/></td>
                            <c:set var="today" value="<%= new java.util.Date() %>"/>
                            <%-- <c:set var="endDate" value="${g.status.tripEndDate}"/> --%>
                            <fmt:formatDate var="now" type="date" value="${today}" pattern="yyyy-MM-dd"/>
                            <fmt:parseDate var="endDate" value="${g.status.tripEndDate}" pattern="yyyy-MM-dd"/>
                            <c:choose>
                            <c:when test="endDate le now"><td>참여</td></c:when>
                            <c:when test="endDate ge now && ${g.status.reviewCode == null}"><td>후기쓰러가기</td></c:when>
                            <c:when test="${g.status.reviewCode != null}"><td>후기보러가기</td></c:when>
                            <c:otherwise><td>불참</td></c:otherwise>
                            </c:choose>
                        </tr>
                        </c:forEach>
                        
                    
                    </tbody>

                </table>

            </div>
        </div>
    </div>
            <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
    
    <jsp:include page="../common/footer.jsp"/>

    <div class="bg"></div>
    <div class="reviewWrap" style="height: 400px;">
        <div class="reviewDetail">
        <h2 style="line-height: 40px;  display: block;

  font-size: 1.5em;

  margin-top: 0.83em;

  margin-bottom: 0.83em;

  margin-left: 0;

  margin-right: 0;

  font-weight: bold;">가이드 리뷰 작성하기</h2>
  <form action="${ pageContext.servletContext.contextPath }/user/mypage/insert/review" method="post" enctype="multipart/form-data" >
        <div class="startRadio" >
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="1">
              <span class="startRadio__img"><span class="blind">별 1개</span></span>
            </label>
           <!--  <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 1.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="2">
              <span class="startRadio__img"><span class="blind">별 2개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 2.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="3">
              <span class="startRadio__img"><span class="blind">별 3개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 3.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="4">
              <span class="startRadio__img"><span class="blind">별 4개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 4.5개</span></span>
            </label> -->
            <label class="startRadio__box">
              <input type="radio" name="star" id="" value="5">
              <span class="startRadio__img"><span class="blind">별 5개</span></span>
            </label>
            <!-- <label class="startRadio__box">
              <input type="radio" name="star" id="">
              <span class="startRadio__img"><span class="blind">별 5.5개</span></span>
            </label> -->
          </div>
          <input type="text" name="reviewTitle" style="width: 100%; height: 40px; border: 1px solid rgba(0, 0, 0, 0.3);" placeholder="리뷰 제목을 입력하세요" >
        <textarea name="reviewInfo" id="mytripreview" cols="30" rows="10" style="border: 1px solid rgba(0, 0, 0, 0.3);"></textarea>
        <div class="thumblist" style="width: 45%; height: 70px; display: flex; margin-top: 10px; float: left; justify-content: space-between;">
        
        <!-- <div class="thumbview"  style="width: 320px; height: 120px; float: left"> -->
        <input style=" display: block; height: 20px; width: 200px;" type="file" id="input-multiple-image" multiple name="multiFiles" >
		<!-- <div id="multiple-container">
		</div> -->
        <!-- </div> -->
        
        
        
        
        <!-- <div class="thumbnail-insert-area">
				<table align="center">
					<tr>
						<td>
							<div class="content-img-area1" id="contentImgArea1" style="border:none;">
								<img id="contentImg1" width="100" height="80">
							</div>
							<div class="content-img-area2" id="contentImgArea2" style="border:none;">
								<img id="contentImg2" width="100" height="80">
							</div>
							<div class="content-img-area3" id="ImgArea3" style="border:none;">
								<img id="contentImgcontent3" width="100" height="80">
							</div>
						</td>
						
					</tr>
				</table>
				<div class="thumbnail-file-area">
					<input type="file" id="thumbnailImg1" name="MultipartFile" onchange="loadImg(this,1)">
					<input type="file" id="thumbnailImg2" name="MultipartFile" onchange="loadImg(this,2)">
					<input type="file" id="thumbnailImg3" name="MultipartFile" onchange="loadImg(this,3)">
				</div>
			</div> -->
			
			
			
			
			</div>
        <div class="modalbutton">
        <button onclick="cancel();" style="border:1px solid rgba(0,0,0,0.3);">취소</button>
        <button type="submit" style="border:1px solid rgba(0,0,0,0.3);">확인</button>
        </div>
        </form>
    </div>
    </div>
    <!-- <script>
			
			const $contentImgArea1 = document.getElementById("contentImgArea1");
			const $contentImgArea2 = document.getElementById("contentImgArea2");
			const $contentImgArea3 = document.getElementById("contentImgArea3");
			
			
			$contentImgArea1.onclick = function() {
				document.getElementById("thumbnailImg1").click();
			}
			
			$contentImgArea2.onclick = function() {
				document.getElementById("thumbnailImg2").click();
			}
			
			$contentImgArea3.onclick = function() {
				document.getElementById("thumbnailImg3").click();
			}
			
			function loadImg(value, num) {
				if (value.files && value.files[0]) {
					const reader = new FileReader();
					reader.onload = function(e) {
						switch(num){
						case 1:
							document.getElementById("contentImg1").src = e.target.result;
							break;
						case 2:
							document.getElementById("contentImg2").src = e.target.result;
							break;
						case 3:
							document.getElementById("contentImg3").src = e.target.result;
							break;
						}
					}
					reader.readAsDataURL(value.files[0]);
				}
			}
			
		</script> -->
		<!-- <script>
			
			
		
		
		function readMultipleImage(input) {
    const multipleContainer = document.getElementById("multiple-container");
    
    // 인풋 태그에 파일들이 있는 경우
    if(input.files) {
        // 이미지 파일 검사 (생략)
        console.log(input.files);
        // 유사배열을 배열로 변환 (forEach문으로 처리하기 위해)
        const fileArr = Array.from(input.files);
        const $colDiv1 = document.createElement("div");
        const $colDiv2 = document.createElement("div");
        const $colDiv3 = document.createElement("div");
        $colDiv1.classList.add("column");
        $colDiv2.classList.add("column");
        $colDiv3.classList.add("column");
        fileArr.forEach((file, index) => {
            const reader = new FileReader();
            const $imgDiv = document.createElement("div")  ; 
            const $img = document.createElement("img");
            $img.classList.add("image");
            const $label = document.createElement("label");
            $label.classList.add("image-label");
            $label.textContent = file.name;
            $imgDiv.appendChild($img);
            $imgDiv.appendChild($label);
            reader.onload = e => {
                $img.src = e.target.result;
                
                $imgDiv.style.width = /* ($img.naturalWidth) * 0.5 */ 100 + "px";
                $imgDiv.style.height = /* ($img.naturalHeight) * 0.5 */ 80 + "px";
            }
            
            console.log(file.name)
            if(index % 3 == 0) {
                $colDiv1.appendChild($imgDiv);
            } else if {
                $colDiv2.appendChild($imgDiv);
            } else {
            	$colDiv3.appendChild($imgDiv);
            }
            
            reader.readAsDataURL(file);
        })
        multipleContainer.appendChild($colDiv1);
        multipleContainer.appendChild($colDiv2);
        multipleContainer.appendChild($colDiv3);
    }
		const inputMultipleImage = document.getElementById("input-multiple-image");
		inputMultipleImage.addEventListener("change", e => {
		    readMultipleImage(e.target);
		})
}}
</script> -->
    
</body>
</html>