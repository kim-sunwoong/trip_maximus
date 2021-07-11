<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>TripfulAxel - 여행에 가속을 </title>
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


<div id="container" style="width:80%; height:1000px; margin:auto;" >

 	<div id="arrows" style="width:100%; height:300px;">
 			<img src="${pageContext.servletContext.contextPath}/resources/images/common/newImage.png" class="rounded float-start">
 	</div>
	<div id="images" style="width:100%; height:1000px;" align="center">
			<a href="${pageContext.servletContext.contextPath}/user/tripAlone/" target="_blank">
				<img src="${pageContext.servletContext.contextPath}/resources/images/common/selfTrip2.jpg" class="rounded float-start">
			</a>
			
			<a href="${pageContext.servletContext.contextPath}/user/tripTogetger/" target="_blank">
			<img src="${pageContext.servletContext.contextPath}/resources/images/common/friendsTrip2.png" class="rounded float-end" alt="...">
			</a>
		</div>

	</div>


<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>