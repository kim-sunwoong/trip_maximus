<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
       
		<link href="/tripfulaxel/resources/admin/css/style.css" rel="stylesheet"/>
        <script src="/tripfulaxel/resources/admin/js/scripts.js"></script>
        <script src="/tripfulaxel/resources/admin/js/datatables-simple-demo.js"></script>
        
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

        </nav>
        <div id="layoutSidenav">
            <div id="layoutSidenav_nav">
                <nav class="sb-sidenav accordion sb-sidenav-dark" id="sidenavAccordion">
                
                    <div class="sb-sidenav-menu">
                        <div class="nav">
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/notice">
                                	공지사항
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/reportList">
                              		  신고처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/guideList">
                                	가이드 가입 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/guideInforamtionList">
                                	가이드 정보 수정 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/levelUpList">
                               	 	가이드 등업 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/calculateList">
                                	가이드 정산 처리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/answerList">
                                	문의 내역
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed"  href="${ pageContext.servletContext.contextPath }/admin/workerList">
                                	사원 관리
                                <div class="sb-sidenav-collapse-arrow"><i class="fas fa-angle-down"></i></div>
                            </a>
                            <a class="nav-link collapsed" href="${ pageContext.servletContext.contextPath }/admin/memberList">
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
                                	공지사항
                            </div>

                            <div class="card-body">
                                <table id="datatablesSimple"  class="table table">
                                    <thead>
                                        <tr>
                                            <th>공지번호</th>
                                            <th>제목</th>
                                            <th>작성날짜</th>
                                            <th>상세보기</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <tr>
                                            <td>1</td>
                                            <td></td>
                                            <td>2021-06-25</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                         <tr>
                                            <td>2</td>
                                            <td></td>
                                            <td>2021-06-26</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>3</td>
                                            <td></td>
                                            <td>2021-06-27</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>4</td>
                                            <td></td>
                                            <td>2021-06-28</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>5</td>
                                            <td></td>
                                            <td>2021-06-29</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>6</td>
                                            <td></td>
                                            <td>2021-06-30</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>7</td>
                                            <td></td>
                                            <td>2021-07-01</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>8</td>
                                            <td></td>
                                            <td>2021-07-02</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>9</td>
                                            <td></td>
                                            <td>2021-07-03</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>10</td>
                                            <td></td>
                                            <td>2021-07-04</td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td>11</td>
                                            <td>2021-07-05</td>
                                            <td></td>
                                            <td>
                                                <button type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeDetail'">
                                                    	상세보기
                                                </button>
                                            </td>
                                        </tr>
                                    </tbody>
                                </table>
                            </div>
                            <button class="btn btn-outline-info text-dark" style="width: 100px; margin: 0 auto;" type="submit" onclick="location.href='${ pageContext.servletContext.contextPath }/admin/noticeWrite'">
                            	작성하기
                            </button>

                        </div>
                    </div>
                </main>
            </div>

        </div>
<!--         <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
            crossorigin="anonymous"></script>
        <script src="js/scripts.js"></script>
        <script
            src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
            crossorigin="anonymous"></script>
        <script src="assets/demo/chart-area-demo.js"></script>
        <script src="assets/demo/chart-bar-demo.js"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
            crossorigin="anonymous"></script>
        <script src="js/datatables-simple-demo.js"></script> -->
    </body>
</html>