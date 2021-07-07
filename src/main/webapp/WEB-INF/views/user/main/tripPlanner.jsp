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


<div id="container" style="width:80%; height:800px; margin:auto;" >

<!-- 	<h1 style="font-size: 30px; color: skyblue; margin-top:50px" align="center"> 어떤 여행을 플랜하겠어요? </h1>
 -->	
 	<div id="arrows" style="width:100%; height:200px;">
 		
 	</div>
	<div id="images" style="width:100%; height:1000px;">
			
			<img src="${pageContext.servletContext.contextPath}/resources/images/common/selfTrip.jpg" class="rounded float-start">
			
			<img src="${pageContext.servletContext.contextPath}/resources/images/common/friendsTrip.jpg" class="rounded float-end" alt="...">
		</div>

	</div>


<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>