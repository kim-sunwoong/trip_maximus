<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>트리풀 악셀 </title>
<link href="${pageContext.servletContext.contextPath}/resources/user/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<script src="${pageContext.servletContext.contextPath}/resources/user/js/jquery.min.js"></script>
<script src="${pageContext.servletContext.contextPath}/resources/user/js/scripts.js"></script>
<link href="${pageContext.servletContext.contextPath}/resources/user/css/styles.css" rel="stylesheet">
<link href="${pageContext.servletContext.contextPath}/resources/user/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<script src="${pageContext.servletContext.contextPath}/resources/user/js/responsiveslides.min.js"></script>
</head>

<style>
	th {
		background-color : #87ceeb7a !important; 
	}
 	.description {
  		color : #337ab7 !important;
 	}
</style>

<!-- <script>
 참고할 사항
    function to_ajax(){
  
 
        var queryString = $("form[name=testForm]").serialize() ;
 
        $.ajax({
            type : 'post',
            url : '/test.jsp',
            data : queryString,
            dataType : 'json',
            error: function(xhr, status, error){
                alert(error);
            },
            success : function(json){
                alert(json)
            }
        });
  
    }
 </script>
 
 <form id="form2" name="form2" method="post" enctype="multipart/form-data">
    <input type="file" id="files" name="files" multiple/>
    <input type="button" value="확인" onclick="test2(); return false;">
</form>
 
<script>
    function test2(){
        var form = $("form")[0];        
        var formData = new FormData(form);

        $.ajax({
            cache : false,
            url : "${pageContext.request.contextPath}/testForm2", // 요기에
            processData: false,
            contentType: false,
            type : 'POST', 
            data : formData, 
            success : function(data) {
                var jsonObj = JSON.parse(data);
            }, // success 
    
            error : function(xhr, status) {
                alert(xhr + " : " + status);
            }
        }); // $.ajax */    }
 
</script> -->
<body>
<!-- <script>
	const loginMember = '${ requestScope.loginMember }';
	if(loginMember != null && loginMember !== '') {
		alert(loginMember);
	}
</script> -->

<jsp:include page="../common/header.jsp"></jsp:include>

<table id="registTb" class="table table-bordered">
	<thead></thead>
	
	<!-- 1. 가이드 기본 정보   -->
		<tbody>
			<tr class="tr1">
				<th>
					<p class="thName">
						 가이드 <br>
						기본정보
					</p>
				</th>
				<td>
				
				<!-- 기본정보 텍스트 부분 시작  -->
				<form id="insertGuideForm" name="insertGuideForm" method="post" enctype="multipart/form-data">
				
					<!-- 회원번호 (invisible) -->
					<input id="userCode" name="userCode" value="${ requestScope.loginMember.userCode }"/ hidden="true">
				
					<!-- 성명 -->
					<div class="form-layer">
					<span class="form-title" style="display:inline-block";>성명  </span>
				   	<input type="text" class="select-nomalsize" name="userName" value="${ requestScope.loginMember.userName }" readonly="readonly">	
					</div>
				
					<!-- 닉네임 -->			
					<div class="form-layer">
					<span class="form-title" style="display:inline-block";>닉네임  </span>
				   	<input type="text" class="select-nomalsize" name="guideNickname" required="required">	
					</div>
					
					<!-- 개인 차량 여부 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>개인차량 여부</span>
						  <label class="checkbox-inline icon-label"><input type="radio" value="Y" name="hasCar" >있음</label>
						<label class="checkbox-inline icon-label"><input type="radio" value="N" name="hasCar">없음</label>
					</div>
					
					<!-- 이동수단 선택 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>이동수단</span>
						<div class="transit" style="width:600px !important;">
							<label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="transit"/>도보</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="transit"/>버스</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="transit"/>본인자가용</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="transit"/>자전거</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="transit"/>스쿠터</label>
						</div>
					</div>
					
					<!-- 가이드 경험 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 경험</span>
						 <label class="checkbox-inline icon-label"><input type="radio" value="Y" name="hasExp" >있음</label>
						<label class="checkbox-inline icon-label"><input type="radio" value="N" name="hasExp">없음</label>
					</div>

                    <!-- 가이드 스타일  -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 스타일</span>
						<div class="guidetitle">
						<label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="theme">직접 체험하는 액티비티</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="theme">온몸으로 느끼는 자연</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="theme">가이드만 알고 있는 시크릿 스팟 여행</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="theme">이 곳에서만 맛 볼 수 있는 로컬 맛집/카페</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="theme">인생샷을 건지는 스냅</label>
						</div>
					</div>
					
					<!-- 거주기간 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block">거주기간</span>
						<span>
							<select name="periodCode" class="select-time">
								<option value="1">6개월이내</option>
								<option value="2">1년이내</option>
								<option value="3">3년이내</option>
								<option value="4">5년이내</option>
								<option value="5">5년이상</option>
							</select>
						</span>
					</div>
					
					<!-- 가이드 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="intro" placeholder="당신을 소개해주세요"></textarea>
                          <div class="maxText">(최대 1000자)</div>
					</div>
				</td>
			</tr>
			<!-- 기본 정보 텍스트 부분 끝   -->
			
			<!-- 기본 정보 서류 업로드 시작-->
			<tr>
				<th>
					<p class="thName">
						서류 <br>
						업로드<br>
						
					</p>
					
					
			    <!-- 신분증 사진 업로드  -->
				<td>
				<div class="form-layer">
					<span class="form-title" style="display:inline-block";>신분증</span>
                    <input type="file" name="imageID" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
					  <p class="description" style="margin-bottom: 3px;">*신분증은 뒷번호를 가린 후 업로드 해주세요. </p>
				</div>
				
				<!-- 프로필 사진  -->
			    <div class="form-layer">						
			      <span class="form-title" style="display:inline-block";>프로필 사진</span>
			      <input type="file" name="imageFace" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
                  <p class="description" style="margin-bottom: 3px;">*가이드 프로필 사진을 업로드 해주세요</p>
				</div>

			    <!-- 기타 첨부 서류 -->
			    <div class="form-layer">						
			      <span class="form-title" style="display:inline-block";>기타 첨부 서류</span>
			      <input multiple="multiple" name="imageCerti" type="file" class="btn btn-default btn_add[]" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
                  <p class="description" style="margin-bottom: 3px;">*본인의 전문성을 증명할 수 있는 서류를 업로드 해주세요.</p>
                  <p class="description" style="margin-bottom: 3px;">*다중 선택 가능합니다.</p>
				</div>
					</td>
				</th>
			</tr>
		<!-- 기본 정보 서류 업로드  끝 -->
			
		
			<tr class="tr1">
				<th>
					<p class="thName">
						 여행 <br>
						상품등록
					</p>
				</th>
			 
			 <!-- 여행 상품 등록 시작  -->
			 <td>
			 
			 <!--여행 날짜  -->
			 	<div class="form-layer">
						<span class="form-title" style="display:inline-block";>여행 날짜</span>
						<label><input type="date" name="peakStart"></label>
						<span>~</span>
						<label><input type="date" name="peakEnd"></label>
					</div>
			 
			 <!-- 여행 제목  -->
			 	<div class="form-layer">
					<span class="form-title" style="display:inline-block";>여행제목  </span>
			 	    <input type="text" class="select-nomalsize" name="tripName" placeholder="해변에서 즐기는 해돋이 요가">
			 	     <p class="description" style="margin-bottom: 3px;">*여행 테마, 본인 전문성을 강조한 제목을 입력해주세요. </p>
				</div>
				
			<!-- 여정 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>여행 소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="tripIntro" placeholder="가이드와 함께 해서 가능한 포인트와 여행 상품에 대한 전반적인 내용을 작성해주세요."></textarea>
                          <div remain-traffic_info" class="maxText">(최대 1000자)</div>
					</div>	
			 <hr>
			 
			 
			 <!-- 코스 이름  -->
			 <div id="courseContainer">
				 <div id="course">
					 <div class="form-layer">
						<span class="form-title" style="display:inline-block";>코스 이름  </span>
					 	<input type="text" id="courseTitle" class="select-nomalsize" name="courseTitle" placeholder="여행의 첫 시작 ! 애월 ">
					</div>
						
					<!-- 코스 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>코스 소개</span>
						<textarea class="form-control textarea-layer" rows="9" name="courseIntro" placeholder="이 코스에서 무엇을 할 수 있는지 상세하게 적어주세요"></textarea>
		                <div class="maxText">(최대 500자)</div>
		                <input type="file" id="imageCourse" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
					</div>		
					
					<!-- 코스 일 차 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block; width:200px !important;">몇째날 코스입니까?</span>
					 	<input type="number" class="select-nomalsize" id="tripDay" name="courseDay" min="1" style="width:50px !important; margin-left:70px;"/><br>
					</div>
					 	<input type="button" id="addTripCourse" style=" border-radius: 0px; box-shadow: none;
							 background-color:skyblue; color:white; width: 100px !important; height: 40px !important;" value="여행추가">
				</div>
			</div>
			
			<script>
				$(document).ready(function(){
					
				const $addTripCourse = document.getElementById("addTripCourse");
				
				var courseCopy = $('#course').clone();

				$addTripCourse.onclick = function() {
					/* var courseTitle = $('#courseTitle').val();
					var tripDay = $('#tripDay').val(); */
					
					$('#courseContainer').append(
	 						'<hr>'
	 				);
					
 					$('#courseContainer').append(
 							/* '<input type="text" name="courses" style="margin-left:200px" value="'+ tripDay + '-' + courseTitle +'">\
 							<button type="button" class="btnRemove">삭제</button><br>\
 			                <input type="file" id="photo" name="selectedPhoto" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
 							' */
 						courseCopy
 					);
					$('#courseContainer').append(
 						'<button type="button" class="btnRemove"  style=" border-radius: 0px; box-shadow: none;\
							 background-color:red; margin-top:15px; color:white; width: 100px !important; height: 40px !important;">삭제</button>'
 					);
 					
 					$('.btnRemove').on('click', function(){
 						$(this).prev().remove();
 						$(this).next().remove();
 						$(this).remove();
 					});
					}
				});
			</script>			
			<hr>
			<!-- 만나는 장소  -->
			 	<div class="form-layer">
					<span class="form-title" style="display:inline-block";>만나는 장소  </span>
				
			         <input type="text" name="zipCode" id="zipCode" readonly class="select-nomalsize"  style="margin-bottom: 8px;"  placeholder="만나는 장소를 입력해주새요" value="">
					 <input type="button"  id="searchZipCode" style="margin-left: 10px;  border-radius: 0px; box-shadow: none;
					 background-color:skyblue;" value=" 주소 검색 ">
				     <input type="text" name="address1" id="address1" readonly style="margin-left: 125px; margin-top: 0px;" class="select-nomalsize"
				      name="adrDetail" placeholder="나머지 주소를 입력하세요.">
				     <input type="text" name="address2" id="address2" style="margin-left: 125px; margin-top: 0px;" class="select-nomalsize"
				      name="adrDetail" placeholder="나머지 주소를 입력하세요." value=""> 
					 
			 	     <p class="description" style="margin-bottom: 3px;">*여행을 진행하기 전에 어디서 만날 건지 여행자에게 알려주세요. <br> 예약완료 시 메시지를 통해 자세한 장소를 공유해주세요. </p>
					 <br>
				</div>
			 </td>
		 <!-- 여행 상품 등록 끝  -->
	
		<tr class="tr1">
				<th>
					<p class="thName">
						 여행 <br>
						가격정보
					</p>
				</th>
		
		<!-- 가격 정보 시작 -->
			   <td>
			   	<p class="description" style="margin-bottom: 3px;">*트리풀악셀 플랫폼 수수료(20%)가 포함된 가격임을 고려해 설정해주세요. </p>
			     <p class="description" style="margin-bottom: 3px;">*원화 기준으로 입력해주세요. </p>
			   	 <!-- 최소인원   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>최소 인원  </span>
			 	    <input type="number" class="select-nomalsize" name="minimum" placeholder="최소인원(1이상)을 입력해주세요." min="1">
				  </div>
				  
				  <!-- 최대인원   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>최대 인원  </span>
			 	    <input type="number" class="select-nomalsize" name="maximum" placeholder="최대인원(1이상)을 입력해주세요." min="1">
				  </div>
				  
				 <!-- 1인당 가격   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>1인당 가격  </span>
			 	    <input type="number" class="select-nomalsize" name="price" placeholder="1인당 가격  ex)150,000">
				  </div>
			   
			   	 <!-- 포함 사항    -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>가격 포함<br>(포함 사항)  </span>
			 	    <input type="text" class="select-nomalsize" name="include" placeholder="예시) 여행 관련 모든 비용, 식비, 교통비, 입장권 등" value="">
			 	     <p class="description" style="margin-bottom: 3px;">*여행 가격에 포함되어 있는 모든 항목을 적어주세요. </p>
				  </div>
			   
			   
		    	<!-- 불포함 사항    -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>불포함 사항  </span>
			 	    <input type="text" class="select-nomalsize" name="exclude" placeholder="예시) 식비 등 "  value="">
				  </div> 
			   
			   </td>
		<!-- 가격 정보 끝 -->
 			<tr>
				<br>
				<th colspan="2" style="background-color: white !important; ">
						<input type="button" class="submit-btn" style="margin-top: 10px; margin-bottom: 10px; width: 200px; 
						box-shadow: none;  border-radius: 0px;  background-color:skyblue;" value="제출하기">
						
				</th>
			</tr> 
			
             </form>
		</tbody>
 </table>

<!-- REST API 사용을 위한 form에 작성한 값을 Controller에 보내기 -->
<script>



</script>


<!-- 주소 api 사용 -->
<script
		src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js">
</script>
<script>
		const $searchZipCode = document.getElementById("searchZipCode");
		
		$searchZipCode.onclick = function() {
		
			//다음 우편번호 검색 창을 오픈하면서 동작할 콜백 메소드를 포함한 객체를 매개변수로 전달한다.
			new daum.Postcode({
				oncomplete: function(data){
					//팝업에서 검색결과 항목을 클릭했을 시 실행할 코드를 작성하는 부분
					document.getElementById("zipCode").value = data.zonecode;
					document.getElementById("address1").value = data.address;
					document.getElementById("address2").focus();
				}
			}).open();
		}
</script>
<br><br><br>


<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>