<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TRIPFUL AXEL - 여행에 가속을</title>


<link rel="shortcut icon" href="${pageContext.servletContext.contextPath }/resources/images/common/airplane.png">
<style>
*{
	box-sizing:border-box;
}
body{
	background-color:#abd9e9;
	font-family:Arial;
}
#container{
	width:750px;
	height:860px;
	background:#eff3f7;
	margin:0 auto;
	font-size:0;
	border-radius:5px;
	overflow:hidden;
}
aside{
	width:260px;
	height:860px;
	background-color:#3b3e49;
	display:inline-block;
	font-size:15px;
	vertical-align:top;
}
main{
	width:490px;
	height:860px;
	display:inline-block;
	font-size:15px;
	vertical-align:top;
}
aside header{
	padding:30px 20px;
}
aside input{
	width:100%;
	height:50px;
	line-height:50px;
	padding:0 50px 0 20px;
	background-color:#5e616a;
	border:none;
	border-radius:3px;
	color:#fff;
	background-image:url(https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_search.png);
	background-repeat:no-repeat;
	background-position:170px;
	background-size:40px;
}
aside input::placeholder{
	color:#fff;
}
aside ul{
	padding-left:0;
	margin:0;
	list-style-type:none;
	overflow-y:scroll;
	height:690px;
}
aside li{
	padding:10px 0;
}
aside li:hover{
	background-color:#5e616a;
}
h2,h3{
	margin:0;
}
aside li img{
	border-radius:50%;
	margin-left:20px;
	margin-right:8px;
}
aside li div{
	display:inline-block;
	vertical-align:top;
	margin-top:12px;
}
aside li h2{
	font-size:14px;
	color:#fff;
	font-weight:normal;
	margin-bottom:5px;
}
aside li h3{
	font-size:12px;
	color:#7e818a;
	font-weight:normal;
}
.status{
	width:8px;
	height:8px;
	border-radius:50%;
	display:inline-block;
	margin-right:7px;
}
.green{
	background-color:#58b666;
}
.orange{
	background-color:#ff725d;
}
.blue{
	background-color:#6fbced;
	margin-right:0;
	margin-left:7px;
}
main header{
	height:110px;
	padding:30px 20px 30px 40px;
}
main header > *{
	display:inline-block;
	vertical-align:top;
}
main header img:first-child{
	border-radius:50%;
}
main header img:last-child{
	width:24px;
	margin-top:8px;
}
main header div{
	margin-left:10px;
	margin-right:145px;
}
main header h2{
	font-size:16px;
	margin-bottom:5px;
}
main header h3{
	font-size:14px;
	font-weight:normal;
	color:#7e818a;
}
#chatting{
	padding-left:0;
	margin:0;
	list-style-type:none;
	overflow-y:scroll;
	height:600px;
	border-top:2px solid #fff;
	border-bottom:2px solid #fff;
}
#chatting li{
	padding:10px 30px;
}
#chatting h2,#chatting h3{
	display:inline-block;
	font-size:13px;
	font-weight:normal;
}
#chatting h3{
	color:#bbb;
}
#chatting .entete{
	margin-bottom:5px;
}
#chatting .message{
	padding:20px;
	color:#fff;
	line-height:25px;
	max-width:90%;
	display:inline-block;
	text-align:left;
	border-radius:5px;
}
#chatting .me{
	text-align:right;
}
#chatting .you .message{
	background-color:#58b666;
}
#chatting .me .message{
	background-color:#6fbced;
}
#chatting .triangle{
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 0 10px 10px 10px;
}
#chatting .you .triangle{
		border-color: transparent transparent #58b666 transparent;
		margin-left:15px;
}
#chatting .me .triangle{
		border-color: transparent transparent #6fbced transparent;
		margin-left:375px;
}
main footer{
	height:155px;
	padding:20px 30px 10px 20px;
}
main footer textarea{
	resize:none;
	border:none;
	display:block;
	width:100%;
	height:80px;
	border-radius:3px;
	padding:20px;
	font-size:13px;
	margin-bottom:13px;
}
main footer textarea::placeholder{
	color:#ddd;
}
main footer img{
	height:30px;
	cursor:pointer;
}
main footer a{
	text-decoration:none;
	text-transform:uppercase;
	font-weight:bold;
	color:#6fbced;
	vertical-align:top;
	margin-left:333px;
	margin-top:5px;
	display:inline-block;
}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- SockJs를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

<!-- stomp를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script>
window.onload = function connect() {
 		var userCode = ${sessionScope.loginUser.userCode};
	    var socket = new SockJS('http://localhost:8999/tripfulaxel/chat');
	    stompClient = Stomp.over(socket);
	    stompClient.connect({}, function () {
	        stompClient.subscribe('/topic/group/${room.roomCode}', function (e) {
	            showMessage(JSON.parse(e.body));
	        });
	        stompClient.send("/app/message", {}, JSON.stringify({'roomCode': ${room.roomCode},'userCode': ${sessionScope.loginUser.userCode}, 'userEmail' : "${sessionScope.loginUser.userEmail}", 'messageType' : 'join'}));
	    });
	    
	}
window.onbeforeunload = function(e){
    disconnect();
}
function disconnect() {
    if (stompClient !== null) {
    	stompClient.send("/app/message", {}, JSON.stringify({'roomCode': ${room.roomCode},'userCode': ${sessionScope.loginUser.userCode}, 'userEmail' : "${sessionScope.loginUser.userEmail}", 'messageType' : 'out'}));
        stompClient.disconnect();
    }
}
function send() {
	var userName = ("${sessionScope.loginUser.userEmail}").split('@');
 	var userCode = ${sessionScope.loginUser.userCode};
 	var roomCode = ${room.roomCode};
 	var messageType;
 	if(messageImage == ''){
 		messageType = "message";
 	} else {
 		messageType = "image";
 	}
	data = {'userEmail': ("${sessionScope.loginUser.userEmail}"), 'roomCode': roomCode, 'messageContent' : $("#message").val(), 'userCode' : userCode, 'messageType': messageType, 'messageImage': messageImage}; 
    stompClient.send("/app/message", {}, JSON.stringify(data));
    /* showMessage(data, time); */
    
    if(messageImage != ''){
	    messageImage = '';
	    $("#imgMessage").val("");
	    imgView();
    }
	    $("#message").val('');
    /* alertClosing('successMessage',2000); */
}
function showMessage(e, time) {
	
	var today = new Date();
	var year = today.getFullYear(); // 년도
	var month = today.getMonth() + 1;  // 월
	var date = today.getDate();  // 날짜
	var hours = today.getHours(); // 시
	var minutes = today.getMinutes();  // 분
	var seconds = today.getSeconds(); // 초
	var time = (year + '-'+ month + '-' + date + ' ' + hours + ':' + minutes + ':' + seconds);
	
    var space = document.getElementById("chatting");
    
    if(e.messageType == 'join'){
    	space.innerHTML = space.innerHTML + "<li align='center'><h2>" + e.messageContent + "</h2></li>";
	    space.scrollTop = space.scrollHeight;
	    
	    joinMember(e);
    } else if(e.messageType == 'out'){
    	space.innerHTML = space.innerHTML + "<li align='center'><h2>" + e.messageContent + "</h2></li>";
	    space.scrollTop = space.scrollHeight;
	    
	    joinMember(e);
    } else {
    	
    	if(e.messageImage != '' && e.messageImage != null){
    		
    		if(e.userCode == ${sessionScope.loginUser.userCode}){
    	    	space.innerHTML = space.innerHTML + "<li class='me'> <div class='entete'> <h3>" + time + 
    	    	"</h3> <h2> ${sessionScope.loginUser.userEmail} </h2> <span class='status blue'></span> </div> <div>" 
    	    	+ "<img src='${pageContext.servletContext.contextPath}/resources/images/message/" + e.messageImage 
    	    	+ "' style='width:130px; height:130px; object-fit:cover;'> </div> </li> ";
    	    	space.scrollTop = space.scrollHeight;
    	
    	    } else {
    	    	space.innerHTML = space.innerHTML + "<li class='you'> <div class='entete'> <span class='status green'></span><h2>" + e.userEmail + 
    	    	"</h2> <h3>" + time + "</h3> </div> <div>" 
    	    	+ "<img src='${pageContext.servletContext.contextPath}/resources/images/message/" + e.messageImage 
    	    	+ "' style='width:130px; height:130px; object-fit:cover;'> </div> </li> ";
    	    	space.scrollTop = space.scrollHeight;
    	    }
    	}
    	
    	if(e.messageContent != '' && e.messageContent != null){
    		
    		if(e.userCode == ${sessionScope.loginUser.userCode}){
    	    	space.innerHTML = space.innerHTML + "<li class='me'> <div class='entete'> <h3>" + time + 
    	    	"</h3> <h2> ${sessionScope.loginUser.userEmail} </h2> <span class='status blue'></span> </div> <div class='triangle'></div> <div class='message'>" +
    	    	e.messageContent + "</div> </li>";
    	    	space.scrollTop = space.scrollHeight;
    	
    	    } else {
    	    	space.innerHTML = space.innerHTML + "<li class='you'> <div class='entete'> <span class='status green'></span><h2>" + e.userEmail + 
    	    	"</h2> <h3>" + time + "</h3> </div> <div class='triangle'></div> <div class='message'>" +
    	    	e.messageContent + "</div> </li>";
    	    	space.scrollTop = space.scrollHeight;
    	    }
    		
    	}
    	
    }
    
};
function joinMember(data) {
	joinList = document.getElementById("joinList");
	
	if(data.messageType == 'out'){
		
		const joins = joinList.getElementsByTagName('li');
		for(let i = 0; i < joins.length; i++){
			let join = joins[i].innerText;
			let email = join.split(" ");
			let reEmail = email[0].trim();
			if(reEmail == data.userEmail){
				joins[i].remove();
			}
		}
	} else {
		joinList.innerHTML = "<li style='margin-left:20px;'> <div> <h2 style='font-size:16px;'>" + data.userEmail  
		+ "</h2> <h3> <span class='status green'></span> 접속중 입니다. </h3> </div> </li>" + joinList.innerHTML;
	}
};
function imgView(data) {
	var imgDiv = document.getElementById("imgDiv");
	
	if(imgDiv.style.display == 'none'){
		
		imgDiv.style.display = 'block';
		
		$('#chatting').height(520);
		
		var img = $("#img");
		img.attr("src", "${pageContext.servletContext.contextPath}/resources/images/message/" + data);
		
		var space = document.getElementById("chatting");
	    space.scrollTop = space.scrollHeight;
	    
	} else if(imgDiv.style.display == 'block'){
		
		imgDiv.style.display = 'none';
		
		$('#chatting').height(600);
		
		var img = $("#img");
		img.attr("src", "");
		
		var space = document.getElementById("chatting");
	    space.scrollTop = space.scrollHeight;
		
	}
	
}
var messageImage = '';
function uploadFile(){
    
    var form = new FormData();
    form.append( "imgMessage", $("#imgMessage")[0].files[0] );
 
    $.ajax({
        type: "POST",
        enctype: 'multipart/form-data',
        url: "${pageContext.servletContext.contextPath}/share/insert/imgMessage",
        data: form,
        processData: false,
        contentType: false,
        success: function (data) {
        	imgView(data)
        	messageImage = data;
        },
        error: function (e) {
            alert('fail');
        }
    });
}
</script>
</head>
<body>

	<div id="container">
		<aside>
			<header>
				<label style="color:white; font-size:14px;"><c:out value="${sessionScope.loginUser.userEmail }"/> 님 환영 합니다!</label>
				<label style="color:white; font-size:22px;">현재 접속중 인원 입니다.</label>
			</header>
			
			<ul id="joinList">
				<c:forEach var="email" items="${ room.joinUserList}">
							<c:if test="${email.userEmail != sessionScope.loginUser.userEmail }">
								<li style="margin-left:20px;" id="joinUser">
									<div>
										<h2 style="font-size:16px;"><c:out value="${email.userEmail }"/></h2>
										<h3>
											<span class="status green"></span>
											접속중 입니다.
										</h3>
									</div>
								</li>
							</c:if>
					</c:forEach>
			</ul>
		</aside>
		<main>
			<header>
				<div style="width:450px;">
					<label style="font-size:25px; font:bold;">채팅방에 접속하셨습니다.</label> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;<button style="width:80px; height:30px;" onclick="location.href='${pageContext.servletContext.contextPath}/share/select/chatRoom?roomCode=0&userCode=0'"><h2>뒤로가기</h2></button><br>
					<label style="font-size:30px; font:bold;"><c:out value="${room.roomTitle }"/></label>
				</div>
			</header>
			<!-- <div id="space"> -->
				<ul id="chatting">
				
					<c:forEach var="chat" items="${room.messageList }">
						
						<c:choose>
							<c:when test="${chat.userCode == sessionScope.loginUser.userCode }">
										
								<c:if test="${chat.messageImage != ''}">
								
									<li class="me">
										<div class="entete">
											<h3><c:out value="${chat.messageDate }"/></h3>
											<h2><c:out value="${chat.userEmail }"/></h2>
											<span class="status blue"></span>
										</div>
										<div>
											<img src="${pageContext.servletContext.contextPath}/resources/images/message/${chat.messageImage}" style='width:130px; height:130px; object-fit:cover;'>
										</div>
									</li>
									
								</c:if>
										
								<c:if test="${chat.messageContent != null && chat.messageContent != ''}">
									
									<li class="me">
										<div class="entete">
											<h3><c:out value="${chat.messageDate }"/></h3>
											<h2><c:out value="${chat.userEmail }"/></h2>
											<span class="status blue"></span>
										</div>
										<div class="triangle"></div>
										<div class="message">
											<c:out value="${chat.messageContent }"/>
										</div>
									</li>
									
								</c:if>		
									
							</c:when>
							<c:otherwise>
							
								<c:if test="${chat.messageImage != ''}">
								
									<li class="you">
										<div class="entete">
											<span class="status green"></span>
											<h2><c:out value="${chat.userEmail }"/></h2>
											<h3><c:out value="${chat.messageDate }"/></h3>
										</div>
										<div>
											<img src="${pageContext.servletContext.contextPath}/resources/images/message/${chat.messageImage}" style='width:130px; height:130px; object-fit:cover;'>
										</div>
									</li>
								
								</c:if>
								
								<c:if test="${chat.messageContent != null && chat.messageContent != ''}">
								
									<li class="you">
										<div class="entete">
											<span class="status green"></span>
											<h2><c:out value="${chat.userEmail }"/></h2>
											<h3><c:out value="${chat.messageDate }"/></h3>
										</div>
										<div class="triangle"></div>
										<div class="message">
											<c:out value="${chat.messageContent }"/>
										</div>
									</li>
								
								</c:if>
							
							</c:otherwise>
							
						</c:choose>
					
					</c:forEach>
						
				
				</ul>
					<div id="imgDiv" style="width:80px; height:80px; display:none;">
						<img id="img" style="object-fit:cover; width:80px; height:80px; margin-left:15px; margin-top:10px; border-style:solid; border-color:black;">
					</div>
			<footer>
				<textarea placeholder="TripfulAxel 유저들과 실시간으로 여행 정보를 공유해 보세요!!" id="message"></textarea>
				<button onclick="send()" style="font-size:17px;">Send</button>
				<input id="imgMessage" type="file" onchange="uploadFile()" />
			</footer>
		</main>
	</div>
	
	
</body>
</html>