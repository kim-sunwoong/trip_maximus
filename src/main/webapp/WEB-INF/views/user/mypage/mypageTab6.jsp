<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">
<script src="https://www.travelmaker.co.kr/js/modernizr.custom.70111.js"></script>
<link rel="icon" type="image/png" sizes="16x16"
	href="https://www.travelmaker.co.kr/img/favicon-16x16.png">
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/main.css?ver=20210620">
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/common.css?ver=20210620">
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/css/html/style.css?ver=20210620">
<!-- <script type="text/javascript" src=".\joon_script.js"></script> -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/css/mypage/joonho_new.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/resources/user/css/mypage/tab7menu.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	
<style>
/* #detail thead th {border-top: 3px solid rgba(0, 0, 0, 0.7);} */
#contact-area {
	font-size: 0.6rem;
}
</style>
<script type="text/javascript">
    function hide(){
		  var a = document.querySelector(".detailTable").tBodies[1];
		  if(a.style.display === 'none'){
          a.style.display = '';
		  } else{
		  
		  a.style.display = 'none';}
		  
		}
    </script>
</head>
<body>
	<jsp:include page="../common/header.jsp" />

	<div id="wrapp">
		<div id="tabwrap">
			<div style="width: 90%; margin: 0 auto;">
				<h2
					style="display: block; font-size: 1.5em; margin-block-start: 0.83em; margin-block-end: 0.83em; margin-inline-start: 0px; margin-inline-end: 0px; font-weight: bold; margin-left: 1rem;">마이페이지</h2>
			</div>
			<br> <br>
			<div class="tabList" style="margin: 0 auto;">
				<div class="tabb" ><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb" ><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic3" href="${pageContext.request.contextPath}/user/mypage/mypageTab3">나만의 같이가요</a></div>
                <div class="tabb" style="width: 270px;"><a class="pic4" href="${pageContext.request.contextPath}/user/mypage/mypageTab4">나만의 여행후기</a></div>
                <div class="tabb" ><a class="pic5" href="${pageContext.request.contextPath}/user/mypage/mypageTab5">회원정보 수정</a></div>
                <div class="tabb" style="border: 3px solid blue;"><a class="pic6" href="${pageContext.request.contextPath}/user/mypage/mypageTab6">문의 내역</a></div>
                <div class="tabb"><a class="pic7" href="${pageContext.request.contextPath}/user/mypage/mypageTab7">문의하기</a></div>
                <div class="tabb"><a class="pic8" href="${pageContext.request.contextPath}/user/mypage/mypageTab8">여행 문의내역</a></div>
			</div>
		</div>

		<div id="detail_content">
			<div id="detail">
			
				
				</div>
			
				<table align="center" class="detailTable"
					style="border-collapse: collapse; margin: 0 auto; table-layout: fixed;">

					<thead>
						<tr>
							<th style="width:200px; padding:0 5px; text-align: center;">문의 제목</th>
							<th style="width: 24%; text-align: center;">문의 진행상황</th>
							<th style="width: 24%; text-align: center;">문의 날짜</th>
						</tr>
					</thead>


					<tbody style="margin-top: 20px;" onclick="hide();">
					
					<c:forEach items="${reqList}" var="q">
						<%-- <c:set var="str" value="${q.reqReason}"/> --%>
                        <tr>
                            <td style="width:300px; display:block; overflow : hidden;text-overflow : ellipsis; height : auto; white-space: nowrap; margin: 0 auto; padding-top: 7%;">
                            <c:out value="${q.reqReason}"/></td>
                            <%-- <c:out value="${ fn:substring(str,0,17) }"/>...</td> --%>
                            <td><c:out value="${q.reqYN}"/></td>
                            <td><c:out value="${q.reqDate}"/></td>
                        </tr>
                        </c:forEach>





						<tr>
							<td colspan="4">
								<div id="contact-area" style="margin: 0 auto; clear: both;">
									<form style="background-color: #f7fafc;">
										<table>
											<tbody>
												<tr>
													<th colspan="2"><div
															style="width: 90%; margin: 0 auto;">
															<h2
																style="display: block; font-size: 1.17em; margin-top: 1em; margin-bottom: 1em; margin-left: 0; margin-right: 0; font-weight: bold;">문의
																답변하기</h2>
														</div></th>
												</tr>
											</tbody>

											<tbody>
												<tr>
													<th>제목 : &nbsp;&nbsp;</th>
													<th><input type="text" name="Name" id="Name"
														value="저속한 언어로 사이트를 혼란시키고 있습니다." /></th>
												</tr>
											</tbody>

											<tbody>
												<tr>
													<th>내용 : &nbsp;&nbsp;</th>
													<th><textarea name="Message" id="Message"
															style="min-height: 100px; height: auto;">지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..지속적인 비속어 사용으로 신고합니다..</textarea></th>
												</tr>
											</tbody>

											<tbody>
												<tr>
													<th>답변 : &nbsp;&nbsp;</th>
													<th><textarea name="Message" id="Message"
															style="min-height: 150px; height: auto;">해당 이용자의 제제가 승인되었습니다. 신고감사합니다.해당 이용자의 제제가 승인되었습니다. 신고감사합니다.해당 이용자의 제제가 승인되었습니다. 신고감사합니다.해당 이용자의 제제가 승인되었습니다. 신고감사합니다.해당 이용자의 제제가 승인되었습니다. 신고감사합니다.해당 이용자의 제제가 승인되었습니다. 신고감사합니다.</textarea></th>
												</tr>
											</tbody>

										</table>
									</form>
								</div>
							</td>
						</tr>




					
					</tbody>

				</table>

			</div>
		</div>
	</div>
	<div class="clearbothsite"
		style="clear: both; width: 1px; height: 1px;"></div>

	<jsp:include page="../common/footer.jsp" />
</body>
</html>