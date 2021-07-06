<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 푸터 영역 시작 -->
<script src="https://kit.fontawesome.com/676df56a46.js" crossorigin="anonymous"></script>
<style>

    ::selection {
        background-color: rgb(255, 89, 70) !important;
        color: rgb(255, 255, 255) !important;
    }

    .FW_normal{
        font-weight: normal;
    }
    .FW_bold{
        font-weight: bold;
    }

    .LS_-005{
        letter-spacing: -0.05px;
    }
    .LS_-01{
        letter-spacing: -0.1px;
    }
    .LS_-015{
        letter-spacing: -0.15px;
    }
    .LS_-02{
        letter-spacing: -0.20px;
    }
    .LS_-025{
        letter-spacing: -0.25px;
    }
    .LS_-03{
        letter-spacing: -0.30px;
    }
    .LS_-035{
        letter-spacing: -0.35px;
    }
    .LS_-04{
        letter-spacing: -0.4px;
    }
    .LS_-045{
        letter-spacing: -0.45px;
    }
    .LS_-05{
        letter-spacing: -0.5px;
    }
    .LS_-06{
        letter-spacing: -0.6px;
    }
    .LS_-07{
        letter-spacing: -0.7px;
    }
    .LS_-08{
        letter-spacing: -0.8px;
    }
    .LS_-09{
        letter-spacing: -0.9px;
    }
    .LS_-1{
        letter-spacing: -1px;
    }

    .FS_12{
        font-size: 13px;
    }
    .FS_13{
        font-size: 13px;
    }
    .FS_14{
        font-size: 13px;
    }
    .FS_15{
        font-size: 25px;
    }
    .FS_16{
        font-size: 25px;
    }
    .FS_17{
        font-size: 17px;
    }
    .FS_18{
        font-size: 18px;
    }

    .FC_black1000{
        color: rgb(0, 0, 0);
    }
    .FC_black900{
        color: rgb(14, 14, 14);
    }
    .FC_black800{
        color: rgb(43, 46, 47);
    }
    .FC_black700{
        color: rgb(54, 58, 60);
    }
    .FC_black600{
        color: rgb(100, 105, 108);
    }
    .FC_black500{
        color: rgb(125, 130, 133);
    }

    .TA_left{
        text-align: left;
    }
    .TA_center{
        text-align: center;
    }
    .TA_right{
        text-align: right;
    }
    .Footer_container{
        background-color: rgb(248, 248, 248);
        width:1080px;
        margin:0 auto;
        border-top: 1px solid #c6c6c6;
        padding-top: 40px;
        padding-bottom: 80px;
        transition-property: all;
    
    }

/*     .Footer_container div{
        transition-property: all;
        -moz-transition-property: all;
        -o-transition-property: all;
        -webkit-transition-property: all;
        transition-duration: 200ms;
        -moz-transition-duration: 200ms;
        -o-transition-duration: 200ms;
        -webkit-transition-duration: 200ms;
        transition-timing-function: ease;
        -moz-transition-timing-function: ease;
        -o-transition-timing-function: ease;
        -webkit-transition-timing-function: ease;
    } */


    /*{ 시작 / 회사정보 / Footer_travelMaker */
    .Footer_travelMaker{
        padding: 20px 40px;
        order: 1;
        float: left;
    }
    .Footer_travelMaker .travelMakerNaming{

    }
    .Footer_travelMaker .travelMakerFAQ {
        height: 30px;line-height: 30px;
    }
    .Footer_travelMaker .travelMakerCompanyIntroduction{
        height: 30px;line-height: 30px;
    }
    /* 끝 / 회사정보 / Footer_travelMaker }*/


    /*{ 시작 / TM / Footer_tm */
    .Footer_tm{
        order: 2;
        float: left;
        padding: 20px 40px;
    }
    .Footer_tm .tmtitle{

    }
    .Footer_tm .travelMakerJobOffer {
        height: 30px;line-height: 30px;
    }
    .Footer_tm .travelMakerJobBlog {
        height: 30px;line-height: 30px;
    }
    /* 끝 / TN / Footer_tm }*/

    /*{ 시작 / 고객센터 / Footer_info */
    .Footer_info{
        order: 3;
        float: left;
        padding: 20px 40px 20px 0px;
    }
    .Footer_info .infoBox{
        margin-bottom: 10px;
    }
    .Footer_info .infoTitle{
        float: left;
        width: 70px;
    }
    .Footer_info .infoContent{
        float: left;
        width: calc(100% - 70px);
    }
    .Footer_info .infoTel{
        float: left;
        width: calc(100%);
    }
    .Footer_info .InfoKakaoBtn{
        width: 100%;
        height: 40px;
        margin: 0 auto;
        padding: 10px 10px;
        border:1px solid #afafaf;
        text-align: center;
        clear: both;
    }
    .Footer_info .InfoKakaoBtn:hover{
        color: #ff7358;
        font-weight: bold;
        text-decoration: none;
    }
    .Footer_info > .InfoKakaoBtn div{

    }
    /* 끝 / 고객센터 / Footer_info }*/
    .Footer_nav{
        padding: 10px 40px;
        display: -ms-grid;
        display: grid;
        float: left;
        -ms-grid-columns: 52% 48%;
        grid-template-columns: 52% 48%;
        -ms-grid-rows: 50% 50% ;
        grid-template-rows: 50% 50%;
        -webkit-box-ordinal-group: 5;
        -ms-flex-order: 4;
        order: 4;
        font-size: 12px;
    }.Footer_nav > *:nth-child(1){
         -ms-grid-row: 1;
         -ms-grid-column: 1;
     }.Footer_nav > *:nth-child(2){
          -ms-grid-row: 1;
          -ms-grid-column: 2;
      }.Footer_nav > *:nth-child(3){
           -ms-grid-row: 2;
           -ms-grid-column: 1;
       }.Footer_nav > *:nth-child(4){
            -ms-grid-row: 2;
            -ms-grid-column: 2;
        }
    .Footer_nav div{
        height: 30px;
        list-style: none;
        margin: 0;
        padding: 0;
        text-decoration: underline !important;
    }

    .Footer_content{
        padding: 20px 40px 0 40px;
        /*display: -ms-grid;
        display: grid;*/
        float: left;
        /*-ms-grid-columns: 48% 2% 50%;
        grid-template-columns: 48% 50%;
        -ms-grid-rows: 22% 3% 22% 3% 22% 3% 56%;
        grid-template-rows: 22% 22% 22% 56%;
        grid-gap: 3% 2%;
        -webkit-box-ordinal-group: 6;
        -ms-flex-order: 5;*/
        order: 5;
        font-size: 13px;
    }
    .Footer_content div{
        float: left;padding-bottom: 5px;
    }
    .Footer_sns{
        height: 35px;
        margin-top: 5px;
    }
    .Footer_sns div.sns_logo_circle{
        width: 31px;
        height: 31px;
        padding: 3px;
        margin: 2px;
        line-height: 20px;
       /* background: #8a8a8a;*/
        border-radius: 20%;
       /* color: #ffffff;*/
        color: #8a8a8a;
        float: left;
    }
    .Footer_sns div.sns_logo_circle i{
        font-size: 25px;
    }

    .Footer_sns div.sns_logo_circle img{
        width: 22px;height: 22px;
        margin-top: 1px;margin-left: 1px;
    }

    @media screen and (min-width: 993px) and (max-width: 10000px) {/* l 993 이상 ~ */
        .Footer_travelMaker{
            width: 33.33333%;
        }
        .Footer_tm {
            width: 33.33333%;
        }
        .Footer_info {
            width: 33.33333%;
        }
        .Footer_nav {
            width: 33.33333%;
        }
        .Footer_content {
            width: 66.66666%;
        }
        .Footer_container{
            word-break:keep-all;
        }
        .flex-container {
            display: flex;
            flex-direction: column;
        }
        .flex-container-inner {
            display: flex;
            align-items: center;
            margin: auto;
        }
        .Footer_nav {
            /*margin-top: 40px;*/
            padding-top: 20px ;
        }

        .Footer_sns.type1{
            width: 33.33333%;
            padding-left:20px;
            text-align: center;float: left;
        }
        .Footer_sns{
            margin-top: 10px;
            margin-bottom: 20px;
            /*position: absolute;
            left: 20px;*/
        }
        .Footer_sns div.sns_logo_circle{
            width: 55px;
            height: 55px;
            padding: 3px;
            margin: 0;
        }
        .Footer_sns div.sns_logo_circle i{
            font-size: 44px;
        }
        .Footer_sns div.sns_logo_circle i.fa-facebook-square{
            margin-top: 3px;
            margin-left: 5px;
        }
        .Footer_sns div.sns_logo_circle i.fa-youtube{
            margin-top: 3px;
            margin-left: 0px;
            font-size: 42px;
        }
        .Footer_sns div.sns_logo_circle i.fa-instagram{
            margin-top: 2px;
            margin-left: 4px;
            font-size: 46px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_03.png') no-repeat center;
            background-size: 51px;
            margin-top: 5px;margin-left: 5px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo:hover{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_04_hover.png') no-repeat center;
            background-size: 51px;
            margin-top: 5px;margin-left: 5px;
        }
        .Footer_sns div.sns_logo_circle i.fa-google-play{
            margin-top: 3px;
            margin-left: 5px;
            font-size: 41px;
        }
        .Footer_sns div.sns_logo_circle i.fab fa-apple{
            margin-top: 3px;
            margin-left: 5px;
            font-size: 44px;
        }

        .Footer_sns div.sns_logo_cutting{
            padding-left:7px;font-size: 25px;line-height: 55px;height: 55px;
        }
    }
    @media screen and (min-width: 601px) and ( max-width: 992px) {/* m ~ 992 이하 */
        .Footer_travelMaker{
            width: 100%;
        }
        .Footer_tm {
            width: 100%;
        }
        .Footer_info {
            width: 100%;
        }
        .Footer_nav {
            width: 100%;
        }
        .Footer_content {
            width: 100%;
        }
        .flex-container {
            display: flex;
            flex-direction: column;
        }
        .flex-container-inner {
            display: flex;
            align-items: center;
            flex-direction: column;
        }
        .Footer_info{
            padding: 20px 40px;
        }
        .Footer_nav {
            margin-top: 0;
           /* margin-bottom: 20px;*/
        }

        .Footer_sns{
            margin-top: 10px;
            margin-bottom: 20px;
           /* position: absolute;
            right: 10px;*/
        }
        .Footer_sns div.sns_logo_circle{
            width: 46px;
            height: 46px;
            padding: 3px;
            margin: 2px 2px 2px 5px;
        }
        .Footer_sns div.sns_logo_circle i{
            font-size: 35px;
        }
        .Footer_sns div.sns_logo_circle i.fa-facebook-square{
            margin-top: 2px;
            margin-left: 3px;
            font-size: 37px;
        }
        .Footer_sns div.sns_logo_circle i.fa-youtube{
            margin-top: 3px;
            margin-left: 1px;
            font-size: 34px;
        }
        .Footer_sns div.sns_logo_circle i.fa-instagram{
            margin-top: 1px;
            margin-left: 2px;
            font-size: 39px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_03.png') no-repeat center;
            background-size: 31px;
            margin-top: 1px;margin-left: 1px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo:hover{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_04_hover.png') no-repeat center;
            background-size: 32px;
            margin-top: 1px;margin-left: 0px;
        }
        .Footer_sns div.sns_logo_circle i.fa-google-play{
            margin-top: 3px;
            margin-left: 4px;
            font-size: 33px;
        }
        .Footer_sns div.sns_logo_circle i.fab fa-apple{
            margin-top: 2px;
            margin-left: 4px;
            font-size: 36px;
        }

        .Footer_sns div.sns_logo_cutting{
            padding-left:5px;font-size: 23px;line-height: 42px;height: 42px;
        }
    }
    @media screen and (min-width: 0px) and (max-width: 600px) {/* s ~ 600 이하 */
        .Footer_travelMaker{
            width: 100%;
        }
        .Footer_tm {
            width: 100%;
        }
        .Footer_info {
            width: 100%;
        }
        .Footer_nav {
            width: 100%;
        }
        .Footer_content {
            width: 100%;
        }
        .flex-container {
            display: flex;
            display: -ms-flexbox;
            flex-direction: column;
        }
        .flex-container-inner {
            display: flex;
            align-items: center;
            flex-direction: column;
        }

        .Footer_travelMaker{
            padding: 20px 20px;
        }
        .Footer_tm{
            padding: 20px 20px;
        }
        .Footer_info{
            padding: 20px 20px;
        }
        .Footer_nav {
            padding: 20px 10px;
            text-align: left;
        }
        .Footer_content {
            font-size: 14px;
            padding: 20px 20px 0 20px;
        }
        .Footer_sns{
            /*margin-top: 30px;*/
            margin-bottom: 20px;
            /*position: absolute;
            right: 10px;*/
        }
        .Footer_sns div.sns_logo_circle{
            width: 40px;
            height: 40px;
            padding: 3px;
            margin: 2px 2px 2px 5px;
        }
        .Footer_sns div.sns_logo_circle i{
            font-size: 30px;
        }
        .Footer_sns div.sns_logo_circle i.fa-facebook-square{
            margin-top: 1px;
            margin-left: 3px;
            font-size: 32px;
        }
        .Footer_sns div.sns_logo_circle i.fa-youtube{
            margin-top: 2px;
            margin-left: 0px;
        }
        .Footer_sns div.sns_logo_circle i.fa-instagram{
            margin-top: 1px;
            margin-left: 2px;
            font-size: 34px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_03.png') no-repeat center;
            background-size: 27px;
            margin-top: -2px;margin-left: -3px;
        }
        .Footer_sns div.sns_logo_circle i.naver_logo:hover{
            width: 38px;height: 38px;
            background: url('/img/logo/naver_logo_04_hover.png') no-repeat center;
            background-size: 28px;
            margin-top: -2px;margin-left: -2px;
        }
        .Footer_sns div.sns_logo_circle i.fa-google-play{
            margin-top: 2px;
            margin-left: 3px;
            font-size: 30px;
        }
        .Footer_sns div.sns_logo_circle i.fab fa-apple{
            margin-top: 2px;
            margin-left: 3px;
            font-size: 31px;
        }
        .Footer_sns div.sns_logo_cutting{
            padding-left:2px;font-size: 17px;line-height: 38px;height: 38px;
        }
    }

    @media screen and (min-width: 0px) and (max-width: 339px) { /* 소형 디스플레이 */
        .Footer_travelMaker{
            width: 100%;
        }
        .Footer_tm {
            width: 100%;
        }
        .Footer_info {
            width: 100%;
        }
        .Footer_nav {
            width: 33.33333%;
        }
        .Footer_content {
            width: 66.66666%;
        }
        .Footer_travelMaker{
            padding: 20px 10px;
        }
        .Footer_tm{
            padding: 20px 10px;
        }
        .Footer_info{
            padding: 20px 10px;
        }
        .Footer_nav {
            padding: 20px 10px;
            text-align: center;
        }
        .Footer_content {
            padding: 20px 20px 0 20px;
        }
        .Footer_sns{
            margin-top: 40px;
        }
        .Footer_sns div.sns_logo_circle{
            margin: 2px 2px 2px 2px;
        }
        .Footer_sns div.sns_logo_cutting{
            padding-left:0px;font-size: 14px;line-height: 40px;height: 40px;
        }
    }

    .Footer_container a:hover {
        color: #ff7358;
        font-weight: bold;
        text-decoration: none;
    }
    .Footer_container a:link {
        text-decoration: none;
    }
    .Footer_container a:visited {
        text-decoration: none;
    }
    .Footer_container a:active {
        text-decoration: underline;
    }
</style>

    <footer>
        <div class="canteen">
            <div class="row justify-content-center" style="margin-left:10%">
                <div class="col-sm-4 col-md-3 item" style="float: left; width: 240px !important; padding:10px; margin-left:0px;">
                    <h3 style="font-family: BME; font-size: 24px; color: black; margin: 15px;">약관 및 방침</h3>
                    <ul style="font-family: icomoon; font-size: 14px; list-style: none; padding-left:0px; color: black; line-height:30px; ">
                        <li><a>이용약관</a></li>
                        <li><a>개인정보 및 처리방침</a></li>
                        <li><a>취소환불규정</a></li>
                      
                      
                    </ul>
                </div>
                <div class="col-sm-4 col-md-3 item" style="float: left; width: 240px; padding:10px;">
                    <h3 style="font-size: 24px; color: black; margin: 15px;">로컬가이드</h3>
                    <ul style="font-size: 14px; list-style: none; padding-left:0px; color: black;">
                        <li style="margin-left: 15px;"><a>로컬가이드 지원하기</a></li>
                      	<li style="margin-left: 15px;"><a>로컬가이드 목록보기</a></li>
                    </ul>
                </div>
                <div class="col-sm-4 col-md-3 item" style="float: left; width: 240px; padding:10px;">
                    <h3 style="font-size: 24px; color: black; margin: 15px;">고객센터</h3>
                    <ul style="font-size: 14px; list-style: none; padding-left:0px; color: black; line-height:30px;">
                    
                        <li style="margin-left: 15px;">이메일 : admin@greedy.com</li>
                        <li style="margin-left: 15px;">고객센터 :  02-1234-5678</li>
                        <li style="margin-left: 15px;">업무시간 : 10:00 ~ 16:00 (주말/공휴일 휴무)</li>
                    </ul>
                </div>
                <div class="col-sm-4 col-md-3 item" style="float: left; width: 240px; padding:10px;">
                    <h3 style="font-size: 24px; color: black; margin: 15px;">회사소개</h3>
                    <ul style="list-style: none; padding-left:0px;">
                        <li style="margin-left: 15px;">대표 : 유승제</li>
                        <li style="margin-left: 15px;">주소 : 서울시 서초구 강남대로 441 5층</li>
                        <li style="margin-left: 15px;">이메일문의 : tripful_axel@kakao.com</li>
                        <li style="margin-left: 15px;">사업자등록번호 : 123-45-67890</li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>
</body>
</html>