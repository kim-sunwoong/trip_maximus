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
        
    </head>
    <body class="sb-nav-fixed">
        <nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
            <!-- Navbar Brand-->
            <a class="navbar-brand ps-3" href="CustomerMain.html" style="width: 180px;">Tripful axel</a>
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
                            Copyright &copy; Tripful axel
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
                                가이드 가입
                            </div>

                            <div class="card-body">
                                <table class="table table">
                                    <tr>
                                        <td style="width: 15%;">이름</td>
                                        <td><input type="text"  class="form-control" name="writer"></td>
                                    </tr>

                                    <tr>
                                        <td style="width: 15%;">성별</td>
                                        <td><input type="text"  class="form-control" name="writer"></td>
                                    </tr>

                                    <tr>
                                     <td style="width: 15%;">활동명</td>
                                     <td><input type="text"  class="form-control" name="writer"></td>
                                    </tr>
                                    <tr>
                                     <td>가이드 경험 여부</td>
                                     <td><input type="text"  class="form-control" name="subject" value=></td>
                                    </tr>
                                    <tr>
                                        <td>개인차량여부</td>
                                        <td><input type="text"  class="form-control" name="subject" value=></td>
                                       </tr>

                                    <tr>
                                     <td>가이드 소개</td>
                                     <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
                                    </tr>

                                                                    
                                    <tr>
                                        <td>신분증 사진</td>
                                        <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
                                    </tr>

                                    <tr>
                                        <td>가이드 사진</td>
                                        <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
                                    </tr>

                                    <tr>
                                        <td>활동 사진</td>
                                        <td><textarea rows="10" cols="50" name="content" class="form-control"></textarea></td>
                                    </tr>

                                     <tr> 
                                     <td colspan="2"  class="text-center">
                                     
                                      <input type="submit" value="가입승인" class="btn btn-success">
                                      <input type="reset" value="가입취소" class="btn btn-warning">
                                      <!-- <input type="button"  class="btn btn-primary" onclick="location.href='BoardList.jsp'" value="전체글보기"> -->
                                     </td>
                                    </tr>
                                    
                                    </table>
                            </div>

                        </div>
                    </div>
                </main>
            </div>

        </div>
        <!-- <script
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