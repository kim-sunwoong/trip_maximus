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



<body>
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
				<form action="" method="post">
				<!-- 성명 -->
					<div class="form-layer">
					<span class="form-title" style="display:inline-block";>성명  </span>
				   <input type="text" class="select-nomalsize" name="accomoName">	
					</div>
				
				<!-- 개인 차량 여부 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>개인차량 여부</span>
						  <label class="checkbox-inline icon-label"><input type="radio" value="있음" name="accomoType" >있음</label>
						<label class="checkbox-inline icon-label"><input type="radio" value="없음" name="accomoType">없음</label>
						
					</div>
					
					<!-- 가이드 경험 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 경험</span>
						 <label class="checkbox-inline icon-label"><input type="radio" value="있음" name="accomoType" >있음</label>
						<label class="checkbox-inline icon-label"><input type="radio" value="없음" name="accomoType">없음</label>
					</div>

                    <!-- 가이드 스타일  -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 스타일</span>
						<div class="guidetitle">
						<label class="checkbox-inline icon-label"><input type="checkbox" value="로컬색" name="accomoType" >로컬색이 짙은 트렌디</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="액티비티" name="accomoType">액티비티를 즐김</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">여행분야의 전문성이 높음</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">함께 신나게 놀 수 있음</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">오지 탐험 전문</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">인생샷을 남겨주는 스냅 전문</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">운동을 잘하는 가이드</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">맛집 탐방 위주의 여행</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="전문성" name="accomoType">방방곡곡 제주를 경험할 수 있음</label>
						</div>
					</div>
					
					<!-- 거주기간 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>거주기간</span>
						<span>
							<select name=checkIn class="select-time">
								<option value="3개월">3개월 이상</option>
								<option value="6개월">6개월 이상</option>
								<option value="1년">1년 이상</option>
								<option value="2년">2년 이상</option>
								<option value="3년">3년 이상</option>
								<option value="4년">4년 이상</option>
								<option value="5년">5년 이상</option>
							</select>
						</span>
					</div>
					
					<!-- 가이드 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>가이드 소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="near" placeholder="당신을 소개해주세요"></textarea>
                          <div remain-traffic_info" class="maxText">(최대 1000자)</div>
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
                    <input type="file" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
					  <p class="description" style="margin-bottom: 3px;">*신분증은 뒷번호를 가린 후 업로드 해주세요. </p>
				</div>
				
				<!-- 프로필 사진  -->
			    <div class="form-layer">						
			      <span class="form-title" style="display:inline-block";>프로필 사진</span>
			      <input type="file" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
                  <p class="description" style="margin-bottom: 3px;">*가이드 프로필 사진을 업로드 해주세요</p>
				</div>

			    <!-- 기타 첨부 서류 -->
			    <div class="form-layer">						
			      <span class="form-title" style="display:inline-block";>기타 첨부 서류</span>
			      <input  multiple="multiple" type="file" class="btn btn-default btn_add[]" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
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
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="해변에서 즐기는 해돋이 요가" value="">
			 	     <p class="description" style="margin-bottom: 3px;">*여행 테마, 본인 전문성을 강조한 제목을 입력해주세요. </p>
				</div>
				
			<!-- 여정 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>여행 소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="near" placeholder="가이드와 함께 해서 가능한 포인트와 여행 상품에 대한 전반적인 내용을 작성해주세요."></textarea>
                          <div remain-traffic_info" class="maxText">(최대 1000자)</div>
					</div>	
			 
			 <!-- 코스 이름  -->
			 <div class="form-layer">
					<span class="form-title" style="display:inline-block";>코스 이름  </span>
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="여행의 첫 시작 ! 애월 " value="">
			 	    
				</div>
				
				<!-- 코스 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block";>코스 소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="near" placeholder="이 코스에서 무엇을 할 수 있는지 상세하게 적어주세요"></textarea>
                          <div remain-traffic_info" class="maxText">(최대 500자)</div>
                          <input type="file" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
					</div>		
				
				
			<!-- 만나는 장소  -->
			 	<div class="form-layer">
					<span class="form-title" style="display:inline-block";>만나는 장소  </span>
				
			         <input type="text" class="select-nomalsize"  style="margin-bottom: 8px;"  placeholder="만나는 장소를 입력해주새요" value="">
					 <button class="submit-btn" type="submit" style="margin-left: 10px;  border-radius: 0px; box-shadow: none;
					 background-color:skyblue;" onclick="searchaddress()"> 주소 검색</button>
				     <input type="text" style="margin-left: 125px; margin-top: 0px;" class="select-nomalsize"
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
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="최소인원을 입력해주세요. " value="">
				  </div>
				  
				  <!-- 최대인원   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>최대 인원  </span>
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="최대인원을 입력해주세요. " value="">
				  </div>
				  
				 <!-- 1인당 가격   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>1인당 가격  </span>
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="1인당 가격  ex)150,000" value="">
				  </div>
			   
			   	 <!-- 포함 사항    -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>가격 포함<br>(포함 사항)  </span>
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="예시) 여행 관련 모든 비용, 식비, 교통비, 입장권 등" value="">
			 	     <p class="description" style="margin-bottom: 3px;">*여행 가격에 포함되어 있는 모든 항목을 적어주세요. </p>
				  </div>
			   
			   
		    	<!-- 불포함 사항    -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block";>불포함 사항  </span>
			 	    <input type="text" class="select-nomalsize" name="accomoName" placeholder="예시) 식비 등 "  value="">
				  </div> 
			   
			   </td>
		<!-- 가격 정보 끝 -->
 			<tr>
				<br>
				<th colspan="2" style="background-color: white !important; ">
						<button class="submit-btn" type="submit" style="margin-top: 10px; margin-bottom: 10px; width: 200px; 
						box-shadow: none;  border-radius: 0px;  background-color:skyblue;">
						제출하기</button>
				</th>
			</tr> 
			
             </form>
		</tbody>
 </table>

<script>

function searchaddress(){
	alert("아멀랑~");
	

}
</script>
<br><br><br>


<jsp:include page="../common/footer.jsp"></jsp:include>

</body>
</html>