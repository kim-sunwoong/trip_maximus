<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>test</h1>
	<br>
	<table>
	<c:forEach items="${test}" var="test">
      <tr>
          <td><c:out value="${test.userCode}"/></td>
          <td><c:out value="${test.tripCode}"/></td>
      </tr>
      </c:forEach>
     </table>
</body>
</html>