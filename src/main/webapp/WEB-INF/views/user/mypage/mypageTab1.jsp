<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    
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
	<style type="text/css">
	#detail thead th {
            text-align: center;
            
        }
        #detail tbody th {text-align: center;}
	/* .card-body th {height: 30px !important;} */
	</style>
	<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
    <script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
    <script>
        jQuery(function($){
            $("#data-table").DataTable();
        });
    </script>
    <style type="text/css">
     #detail thead th {
            text-align: center;
            
        }
    </style>
</head>
<body>
	<jsp:include page="../common/header.jsp"/>
	
	<div id="wrapp">
	
        <div id="tabwrap" style="margin:0 auto;">
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
                <div class="tabb" style="border: 3px solid blue;"><a class="pic1" href="${pageContext.request.contextPath}/user/mypage/mypageTab1">같이가요 신청내역</a></div>
                <div class="tabb"><a class="pic2" href="${pageContext.request.contextPath}/user/mypage/mypageTab2">가이드여행 신청내역</a></div>
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
                <table align="center" style="border-collapse: collapse; margin:0 auto; text-align: center;">
                    <!-- <div class="line" style="border: 1px solid black;"></div> -->
                    <thead>
                        <tr>
                            <th>여행제목</th>
                            <th>신청일자</th>
                            <th>인원현황</th>
                            <th>취소여부</th>
                            <th>진행상태</th>
                        </tr>
                    </thead>
                    <tbody style="padding-top: 20px;">
                    	<c:forEach items="${joinList}" var="j">
                        <tr>
                            <td><c:out value="${j.tripTitle}"/></td>
                            <td><c:out value="${j.joinTripDate}"/></td>
                            <td><c:out value="${j.countUser}"/></td>
                            <td><c:out value="${j.status.tripCancelYN}"/></td>
                            <c:set var="today" value="<%= new java.util.Date() %>"/>
                            <c:set var="endDate" value="${j.status.tripEndDate}"/>
                            <c:choose>
                            <c:when test="endDate > today"><td>참여</td></c:when>
                            <c:when test="endDate < today && ${j.status.reviewCode == null}"><td>후기쓰러가기</td></c:when>
                            <c:when test="${j.status.reviewCode != null}"><td>후기보러가기</td></c:when>
                            <c:otherwise><td>불참</td></c:otherwise>
                            </c:choose>
                        </tr>
                        </c:forEach>
                        <script>
                        if(document.getElementsByTagName("td")) {
                			const $tds = document.getElementsByTagName("td");
                			for(let i = 0; i < $tds.length; i++) {
                				
                				$tds[i].onclick = function() {
                					/* 게시물 번호까지 알아왔으니 이제 상세보기는 할 수 있겠지? */
                					const no = this.parentNode.children[0].innerText;
                					location.href = "${ pageContext.servletContext.contextPath }/jointrip/detail?no=" + no;
                				}
                				
                			}
                			
                		}
						</script>
                        
                        
                        
                        <!-- <tr>
                        	<td colspan="4">
                        		<div class="card w-100" style="border: none; padding: 20px;">
                        <div class="card-body">
                            <h5 class="card-title" style="text-align: center;">인원 보기</h5>
                            <div id="tableWrap" style="width: 60%; height: auto; padding: 10px; margin: 0 auto;">
                                <table align="center" style="border-collapse: collapse; margin: 0 auto;">
                                    <thead>
                                        <tr style="background: none;">
                                            <th>신청자 이름</th>
                                            <th>성별</th>
                                            <th>전화번호</th>
                                            <th>생년월일</th>
                                        </tr>
                                    </thead>
                                    <tbody style="margin-top: 20px;">
                                        <tr>
                                            <td>홍길동</td>
                                            <td>남자</td>
                                            <td>010-1234-5678</td>
                                            <td>1995/03/27</td>
                                        </tr>
                                        <tr>
                                            <td>홍길동</td>
                                            <td>남자</td>
                                            <td>010-1234-5678</td>
                                            <td>1995/03/27</td>
                                        </tr>
                                        <tr>
                                            <td>홍길동</td>
                                            <td>남자</td>
                                            <td>010-1234-5678</td>
                                            <td>1995/03/27</td>
                                        </tr>
                                        <tr>
                                            <td>홍길동</td>
                                            <td>남자</td>
                                            <td>010-1234-5678</td>
                                            <td>1995/03/27</td>
                                        </tr>
                                    </tbody>
        
                                </table>
                            </div>
                        </div>
                    </div>
                        	</td>
                        </tr> -->
                        
                        
                        
                    </tbody>

                </table>

            </div>
        </div>
    </div>
        <div class="clearbothsite" style="clear:both; width:1px; height: 1px;" ></div>
	<jsp:include page="../common/footer.jsp"/>
</body>
</html>