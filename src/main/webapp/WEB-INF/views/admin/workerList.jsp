<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta
            name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <title>트리플 악셀</title>
        <link
            href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
            rel="stylesheet"/>
       
		<link href="${ pageContext.servletContext.contextPath }/resources/admin/css/style.css" rel="stylesheet"/>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/scripts.js"></script>
        <script src="${ pageContext.servletContext.contextPath }/resources/admin/js/datatables-simple-demo.js"></script>
        
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/js/all.min.js"
            crossorigin="anonymous"></script>
            
			<script src="http://code.jquery.com/jquery-3.5.1.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.min.js"></script>
            <script src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap4.min.js"></script>
            <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
            <link rel="stylesheet" href="https://cdn.datatables.net/1.10.25/css/dataTables.bootstrap4.min.css">
            <script>
                $(document).ready(function(){
                    $("#datatablesSimple").DataTable({
                        "info":false,
                        dom: '<lf<t>>',
                        "language":{
                            "lengthMenu":'<select>'+
                                '<option value="10">10</option>'+
                                '<option value="20">20</option>'+
                                '<option value="30">30</option>'+
                                '</select>'
                        }
                    });
                   
                });
    
            </script>
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="CustomerMain.html" style="width: 180px;">Tripful axcel</a>
            <!-- Sidebar Toggle-->
            <button
                class="btn btn-link btn-sm order-1 order-lg-0 me-4 me-lg-0"
                id="sidebarToggle"
                href="#!">
                <i class="fas fa-bars"></i>
            </button>
            <!-- Navbar-->
            <ul style="padding: 20px 0px 0px 1260px;">
                <a
                    class="sb-nav-link-icon"
                    id="navbarDropdown"
                    href="CustomerLogin.html"
                    role="button"
                    style="background-color: gray; width: 50px; height: 50px;">
                    <img src="./pic/log-in.png" style="width: 30px; height: 30px;">
                </a>
            </ul>
        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link collapsed" href="AdminNoticeManagement.html">
                                공지사항
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminReportManagement.html">
                                신고처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminGuideEnroll.html">
                                가이드 가입 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminGuideLevelUp.html">
                                가이드 등업 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminGuideCalculate.html">
                                가이드 정산 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminTax.html">
                                세금계산서 발행
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminAnswerManagement.html">
                                문의 내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminWorkerManagement.html">
                                사원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="AdminMemberManagement.html">
                                회원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                        </div>
                    </div>
                    <div class="sb-sidenav-footer">
                        <div class="small">
                            Copyright &copy; Tripful axcel
                        </div>
                    </div>
                </nav>
            </div>

            <div id="layoutSidenav_content">
                <main>
                    	<div class="container-fluid px-4" style="margin-top: 30px;">
                        	<div class="card mb-4">
	
	                            <div class="card-header" style="font-size: x-large;">
	                                <i class="fas fa-table me-1"></i>
	                                                                      사원관리
	                            </div>
	
	                            <div class="card-body">
	                                <table id="datatablesSimple" class="table table">
	                                    <thead>
	                                        <tr>
	                                            <th>관리자 사원번호</th>
	                                            <th>직책</th>
	                                            <th>이름</th>
	                                            <th>이메일</th>
	                                            <th>입사일</th>
	                                            <th>삭제</th>
	                                        </tr>
	                                    </thead>
	                                    <tbody>
	                                      <c:forEach items="${selectAdmin}" var = "list">
	                                        <tr>
	                                            <td><c:out value="${list.adminNo}"/></td>
	                                            <td><c:out value="${list.adminPosition}"/></td>
	                                            <td><c:out value="${list.adminName}"/></td>
	                                            <td><c:out value="${list.adminEmail}"/></td>
	                                            <td><c:out value="${list.hireDate}"/></td>
	                                            <td>
	                                                <label><input type="radio" name="delete" value="delete">Delete</label>   
	                                            </td>
	                                        </tr>
	                                        </c:forEach>
	                                    </tbody>
	                                </table>
	                            </div>
	                            <button class="btn btn-outline-info text-dark" style="width: 100px; margin: 0 auto;">등록</button>
	                            <button class="btn btn-outline-info text-dark" style="width: 100px; margin: 0 auto;">삭제</button>
                        	</div>
                    	</div>
                	</main>
            	</div>
        </div>

    </body>
</html>