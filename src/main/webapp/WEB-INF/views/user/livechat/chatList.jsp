<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<style>
#customers {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#customers td, #customers th {
  border: 1px solid #ddd;
  padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: skyblue;
  color: white;
}
</style>
<script src="http://code.jquery.com/jquery-3.6.0.min.js"></script>

<!-- SockJs를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdn.jsdelivr.net/npm/sockjs-client@1/dist/sockjs.min.js"></script>

<!-- stomp를 사용하기 위한 라이브러리 추가 -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/stomp.js/2.3.3/stomp.min.js"></script>
<script src="/tripfulaxel/resources/admin/js/scripts.js"></script>
<script src="/tripfulaxel/resources/admin/js/datatables-simple-demo.js"></script>
        
<script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.css"/> 
<script src="https://cdn.datatables.net/t/bs-3.3.6/jqc-1.12.0,dt-1.10.11/datatables.min.js"></script>
            
            
            <script>
                $(document).ready(function(){
                    $("#customers").DataTable();
                });
    
            </script>
<script>


function newRoom(){
	
	const roomTitle = document.getElementById("roomTitle").value; 
	
	location.href="${pageContext.servletContext.contextPath}/share/insert/chatRoom?roomTitle=" + roomTitle + "&userCode=${sessionScope.loginUser.userCode}&userEmail=${sessionScope.loginUser.userEmail}";
}
</script>
</head>

<body>
<jsp:include page="../common/header.jsp"></jsp:include>
<div style="height:1300px;">
<div style="width:800px; margin-left: 25%;">
<table id="customers" class="table table">
<h1 style="font-color:skyblue; margin-left: 20%;">실시간 정보공유 채팅방 리스트</h1>
  <tr>
    <th>채팅방 타이틀</th>
  </tr>
  <c:forEach var="room" items="${roomList }">
	  <tr onclick="location.href='${pageContext.servletContext.contextPath}/share/select/chatRoom?userCode=${sessionScope.loginUser.userCode}&roomCode=${room.roomCode}'">
	    <td><c:out value="${room.roomTitle }"/></td>
	  </tr>
  </c:forEach>
  <tr>
    <th>채팅방 만들기</th>
  </tr>
  <tr>
  	<th>
  		채팅방 제목 : <input type="text" id="roomTitle" style="width:350px; height:30px;"> <button onclick = "newRoom()" style="width:70px; height:30px;">만들기</button>
  	</th>
  </tr>
</table>
</div>
</div>
<jsp:include page="../common/footer.jsp"></jsp:include>
</body>
</html>

