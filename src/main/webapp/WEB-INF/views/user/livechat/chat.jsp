<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
	height:800px;
	background:#eff3f7;
	margin:0 auto;
	font-size:0;
	border-radius:5px;
	overflow:hidden;
}
aside{
	width:260px;
	height:800px;
	background-color:#3b3e49;
	display:inline-block;
	font-size:15px;
	vertical-align:top;
}
main{
	width:490px;
	height:800px;
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

#chat{
	padding-left:0;
	margin:0;
	list-style-type:none;
	overflow-y:scroll;
	height:535px;
	border-top:2px solid #fff;
	border-bottom:2px solid #fff;
}
#chat li{
	padding:10px 30px;
}
#chat h2,#chat h3{
	display:inline-block;
	font-size:13px;
	font-weight:normal;
}
#chat h3{
	color:#bbb;
}
#chat .entete{
	margin-bottom:5px;
}
#chat .message{
	padding:20px;
	color:#fff;
	line-height:25px;
	max-width:90%;
	display:inline-block;
	text-align:left;
	border-radius:5px;
}
#chat .me{
	text-align:right;
}
#chat .you .message{
	background-color:#58b666;
}
#chat .me .message{
	background-color:#6fbced;
}
#chat .triangle{
	width: 0;
	height: 0;
	border-style: solid;
	border-width: 0 10px 10px 10px;
}
#chat .you .triangle{
		border-color: transparent transparent #58b666 transparent;
		margin-left:15px;
}
#chat .me .triangle{
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
<script src="http://code.jquery.com/jquery-latest.min.js"></script>

<!-- SockJs를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

<!-- stomp를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script>

window.onload = function connect() {
	alert(1);
 	var userCode = ${sessionScope.loginUser.userCode};
	    var socket = new SockJS('/chat');
	    stompClient = Stomp.over(socket);
	    stompClient.connect({}, function () {
	        stompClient.subscribe('/topic/' + nickname, function (e) {
	            showMessage(JSON.parse(e.body));
	            alertClosing('comeMessage',2000);
	        });
	    });
	}

function disconnect() {
    if (stompClient !== null) {
        stompClient.disconnect();
    }
}

function send() {
 	var userCode = ${sessionScope.loginUser.userCode};
 	var roomCode = ${room.roomCode};
 	/* const userEmail = ${sessionScope.loginUser.userEmail}; */
 	alert(roomCode);
	data = {'userCode' : userCode, 'roomCode': roomCode, 'messageContent' : $("#message").val()}; 
    stompClient.send("/app/chat/send", {}, JSON.stringify(data));
    showMessage(data);
    $("#message").val('');
    alertClosing('successMessage',2000);
}

function showMessage(e) {
    space = document.getElementById("space");
    space.innerHTML = "<div class='row'> <div class='col-lg-12'> <div class='media'> <div class='media-body'> <h4 class='media-heading'>" +
        e.userCode + "</h4><h4 class='small pull-right'>방금</h4> </div> <p>" +
        e.messageContent + "</p> </div> </div> </div> <hr>" + space.innerHTML;
};
window.onbeforeunload = function(e){
    disconnect();
}

/* function alertClosing(selector, delay){
    console.log(selector);
    document.getElementById(selector).style.display = "block";
    window.setTimeout(function(){
        document.getElementById(selector).style.display = "none";
    },delay);
} */

</script>
</head>
<body>
	<div id="container">
		<aside>
			<header>
				<input type="text" placeholder="search">
			</header>
			<ul>
				<c:forEach var="email" items="${ room.joinUserList}">
					<li style="margin-left:20px;">
						<div>
							<h2><c:out value="${email.userEmail }"/></h2>
							<h3>
								<span class="status green"></span>
								접속중 입니다.
							</h3>
						</div>
					</li>
				</c:forEach>
			</ul>
		</aside>
		<main>
			<header>
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/chat_avatar_01.jpg" alt="">
				<div>
					<h2>Chat with Vincent Porter</h2>
					<h3>already 1902 messages</h3>
				</div>
				<img src="https://s3-us-west-2.amazonaws.com/s.cdpn.io/1940306/ico_star.png" alt="">
			</header>
			<ul id="chat">
			
				<li class="you">
					<div id="space"></div>

				</li>
				
				<li class="me">
					<div class="entete">
						<h3>10:12AM, Today</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
					</div>
				</li>
				<li class="me">
					<div class="entete">
						<h3>10:12AM, Today</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">
						OK
					</div>
				</li>
				<li class="you">
					<div class="entete">
						<span class="status green"></span>
						<h2>Vincent</h2>
						<h3>10:12AM, Today</h3>
					</div>
					<div class="triangle"></div>
					<div class="message">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
					</div>
				</li>
				<li class="me">
					<div class="entete">
						<h3>10:12AM, Today</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">
						Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor.
					</div>
				</li>
				<li class="me">
					<div class="entete">
						<h3>10:12AM</h3>
						<h2>Vincent</h2>
						<span class="status blue"></span>
					</div>
					<div class="triangle"></div>
					<div class="message">
						OK
					</div>
				</li>
			</ul>
			<footer>
				<textarea placeholder="Type your message" id="message"></textarea>
				<button onclick="send()">Send</button>
			</footer>
		</main>
	</div>
</body>

</html>