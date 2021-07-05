<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>
        
        <link href="/tripfulaxel/resources/admin/css/style.css" rel="stylesheet"/>
        <script src="/tripfulaxel/resources/admin/js/scripts.js"></script>
        <script src="/tripfulaxel/resources/admin/js/datatables-simple-demo.js"></script>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
    </head>
    
    
<body style="
    text-align: center;">
 
 
 	<div class="wrapper" style="margin-top: 0px; display: inline-block; width: 340px; text-align: center; margin-top: 200px">
    	<form class="form-signin" action="${ pageContext.servletContext.contextPath }/admin/login" method="post">
        	<h1 class="form-signin-heading">관리자 로그인</h1>
        <div>
		    <lable class="text-label"><b>아이디</b></lable>
		    <input type="text" class="form-control" name="adminEmail" placeholder="이메일" required="" autofocus=""/>
		   	<br>
		    <lable class="text-label"><b>비밀번호</b></lable>
		    <input type="password" class="form-control" name="adminPwd" placeholder="비밀번호" required=""/>
 		   

		    <button class="btn btn-lg btn-primary btn-block" type="submit" style="height: 50px; margin-top: 30px;">로그인</button><br><br>
        </div>
		
      </form>
    </div>
 
</body>
</html>