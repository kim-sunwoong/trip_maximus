<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>


<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">


    <script src="https://www.travelmaker.co.kr/js/modernizr.custom.70111.js"></script>
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css"/>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.0/css/swiper.min.css">

    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/main.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/common.css?ver=20210620">
    <link rel="stylesheet" href="https://www.travelmaker.co.kr/css/html/style.css?ver=20210620">
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

            <div id="detail">
              <div id="detatl-content" style="background-color: #f7fafc;">
                  <c:forEach var="selectGuideDetail" items="${ selectGuideDetail }" >
                    <form name="ContactDetailReply"
                    	  action="${ pageContext.servletContext.contextPath }/user/guidepage/contactDetailReply"
                    	  method="post">
                    	<table style="margin-left:35%;">
                    		<tbody>
                    			<tr>
                    				<th colspan="2">
                    				 <div style="width: 90% ; margin : 0 auto;">
                    				  <h2 style="display: block;
                                        margin-top: 1em;  margin-bottom: 1em;  margin-left: 0;  margin-right: 0; ">
                                                                                       문의 답변하기</h2></div></th>
            				</tr>
            				</tbody>
            				<tbody>
            				
                    			<tr>
                    				<th>작성자 : &nbsp;&nbsp;</th>
                    				<th><textarea readonly name="Name" id="Name" style="width: 227%;"><c:out value="${ selectGuideDetail.guideList[0].applyName }"/></textarea></th>
                    			</tr>
                    			
                    			<tr>
                    				<th>내용 : &nbsp;&nbsp;</th>
                    				<th><textarea name="title" id="title"  style="height: 159px; width: 227%;"><c:out value="${ selectGuideDetail.inquiryReason }"/></textarea></th>
                    			</tr>
                         	
                    			<tr>
                    				<th>답변 : &nbsp;&nbsp;</th>
                    				<th>
                    				 <input  type="hidden" name="tripInquiryCode" value="${selectGuideDetail.tripInquiryCode}"/>
                    			<textarea name="inquiryResponse" id="inquiryResponse"  style="height: 200px; width:227%; "></textarea></th>
                    			</tr>
                    
							<tr>
								<th></th>
								<th>
								<input type="submit" name="submit" value="제출하기" class="submit-button" style="background: skyblue; 
								  color: white ; margin-left: 74%; width: 131px; height: 40px;"/>
								</th>
							</tr>
                        </table>
                    </form>
                  </c:forEach>
                  </div>  
            </div>

	<jsp:include page="../common/footer.jsp"/>
</body>
</html>