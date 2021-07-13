<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>TripfulAxel - 여행에 가속을 </title>
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

<h5 align="center" style="color:skyblue; margin-top:20px;">*같이가요 여행플래너를 여행을 만들고, 다른 회원님들과 함께 할 수 있습니다</h5>
<form id="insertTripTogetherForm" name="insertTripTogetherForm" method="post" enctype="multipart/form-data">

<table id="registTb" class="table table-bordered">
	<thead></thead>
	
	<!-- 1. 방장 기본 정보   -->
		<tbody>
			<tr class="tr1">
				<th>
					<p class="thName">
						방장<br>
						기본정보
					</p>
				</th>
				<td>
				
				<!-- 기본정보 텍스트 부분 시작  -->
				
					<!-- 회원번호 (invisible) -->
					<div class="form-layer">
					
					<input type="number" id="userCode" name="userCode" value="${ sessionScope.loginUser.userCode }" hidden="true">
					<span class="form-title" style="display:inline-block"> 이름  </span>
				   	<input type="text" class="select-nomalsize" name="userName" value="${ sessionScope.loginUser.userName }" readonly="readonly">	
					</div>
					
					<!-- 프로필 사진  -->
				    <div class="form-layer">						
				      <span class="form-title" style="display:inline-block">프로필 사진</span>
				      <input type="file" name="imageFace" onchange="selectedImage(this)" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
	                  <p class="description" style="margin-bottom: 3px;">*회원님의 프로필 사진을 업로드 해주세요</p>
					</div>
					
					<!-- 이동수단 선택 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block">이동수단</span>
						<div class="transit" style="width:600px !important;">
							<label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="transit"/>도보</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="transit"/>버스</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="transit"/>자가용(렌트카)</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="transit"/>자전거</label>
							<label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="transit"/>스쿠터</label>
						</div>
					</div>
					
					
				</td>
			</tr>
			<!-- 기본 정보 텍스트 부분 끝   -->
			
			<tr class="tr1">
				<th>
					<p class="thName">
						 여행 <br>
						기본정보
					</p>
				</th>
			 
			 <!-- 여행 상품 등록 시작  -->
			 <td>
			 
			 <!--여행 날짜  -->
			 	<div class="form-layer">
						<span class="form-title" style="display:inline-block">여행 날짜</span>
						<label><input type="date" name="peakStart"></label>
						<span>~</span>
						<label><input type="date" name="peakEnd"></label>
					</div>
			 
			 <!-- 여행 테마  -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block">여행 테마</span>
						<div class="guidetitle">
						<label class="checkbox-inline icon-label"><input type="checkbox" value="1" name="theme">직접 체험하는 액티비티</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="2" name="theme">온몸으로 느끼는 자연</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="3" name="theme">회원님만 알고 있는 시크릿 스팟 여행</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="4" name="theme">이 곳에서만 맛 볼 수 있는 로컬 맛집/카페</label>
						<label class="checkbox-inline icon-label"><input type="checkbox" value="5" name="theme">인생샷을 건지는 스냅</label>
						</div>
					</div>
			 
			 <!-- 여행 제목  -->
			 	<div class="form-layer">
					<span class="form-title" style="display:inline-block">여행제목  </span>
			 	    <input type="text" class="select-nomalsize" name="tripName" placeholder="다른 회원들의 이목을 끌 수 있도록 적어주세요!">
				</div>
				
			<!-- 여정 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block">여행소개</span>
						 <textarea class="form-control textarea-layer" rows="9" name="tripIntro" placeholder="간략하지만 여행의 전반적인 소개를 해주세요"></textarea>
                          <div class="maxText">(최대 1000자)</div>
					</div>	

					<div class="form-layer">
						<span class="form-title" style="display:inline-block">사진공유</span>
						<input type="file"  name="imageTrip" onchange="selectedImage(this)" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8" multiple="multiple"> 
                  		<p class="description" style="margin-bottom: 3px;">*다중 선택 가능합니다.</p>
					</div>
			 <hr>
			 
			 
			 <!-- 코스 이름  -->
			 <div class="courseContainer">
				 <div class="course">
					 <div class="form-layer">
						<span class="form-title" style="display:inline-block">코스이름  </span>
					 	<input type="text" id="courseTitle" class="select-nomalsize" name="courseTitle" placeholder="여행의 첫 시작 ! 애월 ">
					</div>
						
					<!-- 코스 소개 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block">코스소개</span>
						<textarea class="form-control textarea-layer" rows="9" name="courseIntro" placeholder="이 코스에서 무엇을 할 수 있는지 상세하게 적어주세요"></textarea>
		                <div class="maxText">(최대 500자)</div>
		                <input type="file" name="imageCourse" onchange="selectedImage(this)" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">
					</div>		
					
					<!-- 코스 일 차 -->
					<div class="form-layer">
						<span class="form-title" style="display:inline-block; width:200px !important;">몇째날 코스입니까?</span>
					 	<input type="number" class="select-nomalsize" id="tripDay" name="courseDay" min="1" style="width:50px !important; margin-left:70px;"/><br>
					</div>
					 	<input type="button" name="addTripCourse" style=" border-radius: 0px; box-shadow: none;
							 background-color:skyblue; color:white; width: 100px !important; height: 40px !important;" value="코스추가">
					
					<button type="button" class="btnRemove" value="" style=" border-radius: 0px; box-shadow: none; background-color:red; color:white; width: 100px !important; height: 40px !important;">삭제</button>
					<hr>
				</div>
			</div>
			
			<script>
				$(document).ready(function(){

				$(document).on("click", "input[name='addTripCourse']", function (e) {

					$(e.target).parent().after('<div class="course"  name="lastcourse">'
								 +'<div class="form-layer">'
								 +'<span class="form-title" style="display:inline-block";>코스이름  </span>'
								 +'<input type="text" class="select-nomalsize" name="courseTitle" placeholder="여행의 첫 시작 ! 애월 ">'
								 +'</div>'
								 +'<div class="form-layer">'
								 +'<span class="form-title" style="display:inline-block">코스소개</span>'
								 +'<textarea class="form-control textarea-layer" rows="9" name="courseIntro" placeholder="이 코스에서 무엇을 할 수 있는지 상세하게 적어주세요"></textarea>'
								 +'<div class="maxText">(최대 500자)</div>'
								 +'<input type="file"  name="imageCourse" onchange="selectedImage(this)" class="btn btn-default btn_add" data-role="img-uploader" data-ano="2826" data-armno="0" data-type="8">'
								 +'</div>'		
										
								 								 
								 
								 +'<div class="form-layer">'
								 +'<span class="form-title" style="display:inline-block; width:200px !important;">몇째날 코스입니까?</span>'
								 +'<input type="number" class="select-nomalsize" name="courseDay" min="1" style="width:50px !important; margin-left:70px;"/><br>'
								 +'</div>'
								 +'	<input type="button" name="addTripCourse" style=" border-radius: 0px; box-shadow: none;'
								 +'		 background-color:skyblue; color:white; width: 100px !important; height: 40px !important;" value="코스추가">'
								
								 +'<button type="button" class="btnRemove" value="" style=" border-radius: 0px; box-shadow: none; background-color:red; color:white; width: 100px !important; height: 40px !important;">삭제</button>'
								 +'<hr>'
								 +'</div>');
						
						$('.btnRemove').on('click', function(e){
							$(e.target).parent().remove();
/* 							deletedCourse(e);
 */						});
				    });
				});
			</script>			
			<hr>
			<!-- 출발 장소  -->
			 	<div class="form-layer">
					<span class="form-title" style="display:inline-block">만나는 장소</span>
				
			         <input type="text" name="zipCode" id="zipCode" readonly class="select-nomalsize"  style="margin-bottom: 8px;"  placeholder="만나는 장소를 입력해주새요" value="">
					 <input type="button"  id="searchZipCode" style="margin-left: 10px;  border-radius: 0px; box-shadow: none;
					 background-color:skyblue;" value=" 주소 검색 ">
				     <input type="text" name="address1" id="address1" readonly style="margin-left: 125px; margin-top: 0px;" class="select-nomalsize"
				      name="adrDetail" placeholder="나머지 주소를 입력하세요.">
				     <input type="text" name="address2" id="address2" style="margin-left: 125px; margin-top: 0px;" class="select-nomalsize"
				      name="adrDetail" placeholder="나머지 주소를 입력하세요." value=""> 
					 
					 <br>
				</div>
			 </td>
		 <!-- 여행 상품 등록 끝  -->
	
		<tr class="tr1">
				<th>
					<p class="thName">
						 같이가요 여행 <br>
						정보
					</p>
				</th>
		
		<!-- 평가 정보 시작 -->
			   <td>
			   	<p class="description" style="margin-bottom: 3px;">*회원님의 같이가요 여행을 더 알려주세요 </p>
			   	 <!-- 방장의 한마디   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block">방장의 한마디 </span>
			 	    <input type="text" class="select-nomalsize" name="tripInfo" placeholder="ex)야심차게 준비했어요">
				  </div>
				  
				  <!-- 최대인원   -->
			      <div class="form-layer">
					<span class="form-title" style="display:inline-block">최대 인원  </span>
			 	    <input type="number" class="select-nomalsize" name="maximum" placeholder="최대인원(1이상)을 입력해주세요." min="1">
				  </div>
				  
					 <!-- 1인당 가격   -->
				      <div class="form-layer">
						<span class="form-title" style="display:inline-block">예상 여행비용  </span>
				 	    <input type="number" class="select-nomalsize" name="price" placeholder="1인당 가격  ex)150,000">
				 	    <p class="description" style="margin-bottom: 3px;">*TripfulAxel에서는 같이가요 결제를 진행하지 않습니다. </p>
					  </div>
			   
			   	 	<!-- 포함 사항    -->
				      <div class="form-layer">
						<span class="form-title" style="display:inline-block">가격 포함<br>(포함 사항)  </span>
				 	    <input type="text" class="select-nomalsize" name="include" placeholder="예시) 여행 관련 모든 비용, 식비, 교통비, 입장권 등">
				 	     <p class="description" style="margin-bottom: 3px;">*예상 포함 사항을 알려주세요 </p>
					  </div>
			   
			   
		    		<!-- 불포함 사항    -->
				      <div class="form-layer">
						<span class="form-title" style="display:inline-block";>불포함 사항  </span>
				 	    <input type="text" class="select-nomalsize" name="exclude" placeholder="예시) 주유비 등 " >
					  </div> 
				   
				   </td>
					<!-- 가격 정보 끝 -->
		 			<tr>
						<br>
						<th colspan="2" style="background-color: white !important; ">
								<input type="button" id="submitButton" class="submit-btn" style="margin-top: 10px; margin-bottom: 10px; width: 200px; 
								box-shadow: none;  border-radius: 0px;  background-color:skyblue;" value="제출하기">
								
						</th>
					</tr> 
			
             
		</tbody>
 </table>
</form>
<script>
	var formMap = new Map();
	var courseImage = new Array();
 	var formdata;
	var totalData = {};

	<!-- 사진이 선택되었을때, 사진이 저장되고 그 정보값을 json으로 저장 -->
 	function selectedImage(e){
    	var fileList = e.files;
    	
    	formData = new FormData();	

    	for(var i = 0; i < fileList.length; i ++){
    		var file = fileList[i];
    		
    		formData.append('imageFile', file);
    	}

    	formData.append('imageCategory', e.name)

    	$.ajax({             
        	type: "POST",          
            enctype: 'multipart/form-data',  
            url: "${pageContext.request.contextPath}/imageUpload/guide",        
            data: formData,          
            processData: false,    
            contentType: false,      
            cache: false,           
            timeout: 600000,       
            success: function (data) { 
            	if(e.name == "imageCourse"){
            		courseImage.push(JSON.parse(data.imageList));
	            	formMap.set(e.name, courseImage);
            	}else {
	            	formMap.set(e.name, JSON.parse(data.imageList));
            	}
            	
            	formMap.forEach((value, key) => {
            		totalData[key] = value
            	});
            	
             	console.log(JSON.stringify(totalData));
            },          
            error: function (e) {  
            	console.log("ERROR : ", e);     
                $("#btnSubmit").prop("disabled", false);    
                alert("fail");      
             }     
    	});  
 	}
 	
 	<!-- 코스여행을 추가했지만, 코스삭제했을때 해당 사진 DB 및 JSON에서 삭제 -->
 	function deletedCourse(e){
 		console.log(e);
 	}
 	
 	
 	<!-- REST API 사용을 위한 form에 작성한 값을 JSON으로 변환 후 Controller에 보내기 -->
	$('#submitButton').click(function(){
			var totalDataMap = new Map();
			var totalDataJson = {};
			var formData = $('#insertTripTogetherForm').serializeObject();
		   
			totalDataMap.set("formData", formData);
			totalDataMap.set("imageData", totalData);
			
			totalDataMap.forEach((value, key) => {
				totalDataJson[key] = value
        	});
			
			var sendData = JSON.stringify(totalDataJson);
			console.log(sendData);
			
	        $.ajax({
	            url : "${pageContext.request.contextPath}/api/insert/tripTogether",
	            type : 'post', 
	            data : sendData, 
	            dataType : 'json',
	            contentType: 'application/json; charset=utf-8',
	            processData: false,
	            cache : false,
	            async : false,
	            success : function(data) {
	                if(data.httpStatus == "OK"){
	                	alert("같이가요 여행 등록이 정상으로 완료되었습니다!\n상단의 같이가요에서 확인할 수 있습니다\n좋은 여행파트너를 만나시길 바랄게요");
					 	window.location.href = "${pageContext.servletContext.contextPath}/trip/select/list?tripType=2&sortCondition=최신순"

	                }else if(data.httpStatus == "400"){
	                	alert("같이가요 여행 등록 중 알수없는 에러가 발생하였습니다\n 다시 시도해주세요! ");
					 	window.location.href = "${pageContext.request.contextPath}/"
	                }
	            },
	            error : function(xhr, status, error) {
	                alert(error);
	            }
	       	 });
		});
	
	$.fn.serializeObject = function () {
		  'use strict';
		  var result = {};
		  var extend = function (i, element) {
		    var node = result[element.name];
		    if ('undefined' !== typeof node && node !== null) {
		      if ($.isArray(node)) {
		        node.push(element.value);
		      } else {
		        result[element.name] = [node, element.value];
		      }
		    } else {
		      result[element.name] = element.value;
		    }
		  };

		  $.each(this.serializeArray(), extend);
		  return result;
		};
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