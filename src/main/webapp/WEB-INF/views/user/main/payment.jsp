<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="content-language" content="kr">
<meta name="title" property="title" content="트리플악셀 :: 당신의여행에 가속을">
<meta name="viewport"
	content="width=device-width,initial-scale=1.0,minimum-scale=0,maximum-scale=10,user-scalable=yes">
<title>TRIPFUL AXEL - 당신의 여행에 가속을 더하다</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>

<!-- 웹 폰트 확인 후 변경 -->
<link rel="stylesheet"
	href="https://www.travelmaker.co.kr/js/font-awesome/css/font-awesome.min.css">
	
<script src="http://code.jquery.com/jquery-3.6.0.min.js"/>

<script src="/tripfulaxel/resources/user/js/modernizr.custom.70111.js"></script>

<!-- 결제부분 스타일 추가추가추가 -->
<style>

.pay_btn_area .btn {
    width: 100% !important;
}

.btnBgC{
   background: skyblue !important ;color: white;
   
   }


</style>

<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/main.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/common.css?ver=20210620">
<link rel="stylesheet"
	href="/tripfulaxel/resources/user/css/html/style.css?ver=20210620">


<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/main.js"></script>
<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/style.js"></script>
<script type="text/javascript"
	src="/tripfulaxel/resources/user/js/html/function.js"></script>

<script src="https://kit.fontawesome.com/676df56a46.js"
	crossorigin="anonymous"></script>
<link
	href="https://fonts.googleapis.com/css?family=Noto+Sans+KR&display=swap"
	rel="stylesheet">
</head>

<body>
	<section class="container pcWrap">
		<div class="payment_wrap mainT" style="clear: both;">
			<!-- clearfix -->
			<div class="floatL payment_prod">
				<div class="thumb">
					<img  src="${pageContext.servletContext.contextPath }/resources/images/trip/guidetrip/${pay.saveName}"
						alt="test">
				</div>
				<div class="prod_info_wrap">
					<div class="prod_info">
						<h2 class="tit ellipsis">제주 맛집 투어 ! 저녁 투어</h2>
						<div class="offer_main_local clearfix">
					
							<ul class="prod_info_detail txt_md">
								<li class="clearfix">
									<p class="floatL">여행일</p>
									<p class="floatR">
										<span><c:out value="${pay.tripDay }"/></span>
									</p>
								</li>
								<li class="clearfix">
									<p class="floatL">여행인원</p>
									<p class="floatR">
										<span>1</span> 명
									</p>
								</li>
							</ul>
						</div>
						<div class="payment_total clearfix txt_md" style="padding-left: 0px; padding-right: 0px;">
							<p class="floatL txtC">결제 금액</p>
							<p class="floatR txtC">
								<span><c:out value="${pay.totalPay }"/></span> 원
							</p>
						</div>
					</div>

				</div>
			</div>
			<div class="floatR payment_info_wrap">
				<ul class="payment_info">
					<li>
						<h3 class="txt_big">여행자 이름</h3> 
						<label class="clearfix subm_wrap" style="font-size:23px;">
								<c:out value="${sessionScope.loginUser.userName }" />
					    </label>
					</li>
					<li>
						<h3 class="txt_big">여행자 연락처</h3> 
						<label class="clearfix subm_wrap" style="font-size:23px;">
						    	<c:out value="${sessionScope.loginUser.userPhone }" />
					    </label>
					</li>
					<!-- <li>
						<h3 class="txt_big">요청사항</h3> 
						<textarea class="wishtext" placeholder="TM에게 요청하고 싶은 내용을 입력해주세요 :)" name="wish"></textarea>
					</li> -->
					<li>
						<h3 class="txt_big">결제 수단</h3> 
						<label class="clearfix subm_wrap" style="font-size:23px;">
							카카오페이
					    </label>
				
					</li>
					<li>
						<h3 class="txt_big">이용약관</h3>
						<div class="pay_terms" style="padding: 10px;">
							<p class="second">트리풀악셀(이하 "회사"라 합니다)는, 자사에서 제공하는 커스터마이징 여행 서비스(이하 “서비스”라 합니다)와 관련하여 이용자 가입 및 관리, 서비스 제공에 관한 계약 이행 및 광고 활용 등의 목적으로 수집되는 이용자들의 개인정보를 보호하고, 이에 대한 고충을 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보처리지침을 수립•공개합니다.</p>

        <p class="title">총 칙</p>

        <p class="second">1) 회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률, 개인정보보호법, 통신비밀보호법, 전기통신사업법등 정보통신서비스제공자가 준수하여야 할 관련 법령상의 개인정보보호 규정을 준수하며, 관련 법령에 의거한 개인정보취급방침을 정하여 이용자 권익 보호에 최선을 다하고 있습니다.</p>
        <p class="second">2) 회사는 개인정보보호 방침을 웹사이트 내 약관에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.</p>

        <p class="title">1. 개인정보의 처리 목적</p>

        <p class="second">회사는 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적 이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</p>
        <p class="third">가. 서비스 이용자가입 및 관리</p>
        <p class="forth">이용자 가입의사 확인, 이용자 신원 식별·인증, 이용자 자격 유지·관리, 제한적 본인확인제 시행에 따른 본인확인, 서비스 부정이용 방지, 만14세 미만 아동 개인정보 수집 시 법정대리인 동의 여부 확인, 분쟁 조정을 위한 기록보존, 불만처리 등 민원처리, 고지사항 전달 등을 목적으로 개인정보를 처리합니다.</p>
        <p class="third">나. 서비스 제공에 관한 계약 이행 </p>
        <p class="forth">가이드 정보 제공 및 매칭 서비스, 특정 여행 맞춤서비스, 가이드 중개 대금결제, 대금추심</p>
        <p class="third">다. 마케팅 및 광고에의 활용</p>
        <p class="forth">신규 서비스 홍보, 이벤트 및 광고성 정보 제공 및 참여기회 안내, 접속빈도 파악 또는 이용자의 서비스 이용에 대한 통계, 서비스의 유효성 확인 등을 목적으로 개인정보를 처리합니다.</p>

        <p class="title">2. 처리하는 개인정보의 항목</p>

        <p class="second">가. 회사는 다음의 개인정보 항목을 처리하고 있습니다.</p>
        <p class="third"> ① &lt;입력정보&gt;</p>
        <p class="forth">- 필수항목: 이름, 휴대전화번호, 성별, 출생연도 등의 정보는 정보주체가 그 수집에 동의하는 경우 수집됩니다.  </p>
        <p class="forth">- 선택항목: 직업, 신분증, 거주도시, SNS ID, 기타 라이센스, 여행과 관련한 이용자의 기호 등  활동하기 위해 제출하는 항목</p>
        <p class="forth">- 수집방법: 사이트 내 이용자 기입</p>
        <p class="third"> ② &lt;서비스 이용 과정이나 사업처리 과정&gt;</p>
        <p class="forth">서비스 이용과정이나 사업처리 과정에서 단말기정보(OS, 화면사이즈, 디바이스 아이디), IP주소, 쿠키, 방문일시, 부정이용기록, 서비스 이용 기록 등의 정보가 자동으로 생성되어 수집될 수 있습니다.</p>
        <p class="forth">나. 또한 아래의 항목들에 대해서도 안정된 서비스 제공을 위해 합법적인 절차와 이용자의 동의를 거쳐 추가로 수집할 수 있습니다.</p>
        <p class="five">1) IP Address, 쿠키, 방문 일시, 서비스 이용 기록, 불량 이용 기록, 가상 화폐(에이드) 사용기록, 매칭 이력, 결제이력</p>
        <p class="five">2) 사용 이동통신사, 계좌번호 등</p>
        <p class="five">3) 신용카드 결제시: 카드사명, 카드번호 등</p>
        <p class="five">4) 휴대전화 결제시: 이동전화번호, 통신사, 결제승인번호 등</p>
        <p class="five">5) 계좌이체로 결제시: 은행명, 계좌번호 등</p>
        <p class="five">6) 상품권 이용시: 상품권 번호 등</p>
        <p class="five">7) 서비스 사용 당시 귀하의 모바일 기기의 지리적 위치</p>
        <p class="forth">나. 개인정보 수집 방법</p>
        <p class="five">모든 이용자가 회사로부터 서비스를 제공받기 위해서는 이용자의 개인정보가 필요하며, 개인정보는 이용자가입 시 이용자가입양식에 가입신청자의 동의를 통해 수집됩니다.  이외에 회사는 다음과 같은 방법으로 개인정보를 수집하고 있습니다.</p>
        <p class="six">- 홈페이지, 모바일웹, 서면양식, 팩스, 전화, 상담 게시판, 이메일</p>
        <p class="six">- 생성정보 수집 툴을 통한 정보 수집</p>

        <p class="title">3. 개인정보의 처리 및 보유 기간</p>

        <p class="second">이용자의 개인정보는 이용자가입 후 서비스이용기간이 종료되거나 이용자가 계약해지, 탈퇴 등의 사유로 이메일이나 서면을 통해 개인정보 삭제를 요구하는 경우에는 제3자의 열람과 이용이 불가능한 상태로 처리되며, ‘전자상거래 등에서의 소비자보호에 관한 법률’ 제6조(거래기록의 보존 등)에 의하여 아래의 명시 기간 동안 보관관리 합니다.</p>
        <p class="third">1) 계약, 청약철회, 이용자서비스의 제공 등의 거래에 관한 기록: 5년 </p>
        <p class="third">2) 대금결제 및 재화 등의 공급에 관한 기록: 5년</p>
        <p class="third">3) 소비자 불만 또는 분쟁처리에 관한 기록: 5년 </p>

        <p class="title">4. 개인정보의 제3자 제공에 관한 사항</p>

        <p class="second">회사는 정보통신망 이용촉진 및 정보보호 등에 관한 법률 제17조에 따라 이용자의 동의가 있거나 타 법령에 특별한 규정이 있는 경우를 제외하고, 개인정보를 고지•명시한 범위를 초과하여 이용하거나 제3자에게 제공하지 않습니다.</p>
        <p class="second">또한 개인정보보호법 제59조(금지행위)에 따라 회사의 서비스 제공을 위하여 개인정보를 취급하거나 취급하였던 회사의 관계자는 다음 각호의 행위를 하지 않습니다.</p>
        <p class="third">가. 거짓이나 그 밖의 부정한 수단이나 방법으로 개인정보를 취득하거나 처리에 관한 동의를 받는 행위</p>
        <p class="third">나. 업무상 알게 된 개인정보를 누설하거나 권한 없이 다른 사람이 이용하도록 제공하는 행위</p>
        <p class="third">다. 정당한 권한 없이 또는 허용된 권한을 초과하여 다른 사람의 개인정보를 훼손, 멸실, 변경, 위조 또는 유출하는 행위</p>

        <p class="title">5. 개인정보처리 위탁</p>
        <p class="second">(위탁업체 추가예정)</p>

        <p class="title">6. 정보주체의 권리, 의무 및 그 행사방법</p>

        <p class="second">이용자는 개인정보주체로서 다음과 같은 권리를 행사할 수 있습니다.</p>
        <p class="third">가. 정보주체는 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.</p>
        <p class="forth">1. 개인정보 열람(조회) 요구</p>
        <p class="forth">2. 오류 등이 있을 경우 정정 요구</p>
        <p class="forth">3. 삭제(이용자탈퇴) 요구</p>
        <p class="forth">4. 처리정지 요구 또는 개인정보수집에 관한 동의 철회 요구</p>
        <p class="third">나. 정보주체는 서비스 가입을 탈퇴함으로써 회사가 수집한 개인정보를 직접 삭제·파기할 수 있습니다. </p>
        <p class="third">다. 가항에 따른 권리행사는 회사에 대해 서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 이에 대해 지체 없이 조치하겠습니다.</p>
        <p class="third">라. 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.</p>
        <p class="third">마. 가항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출해야 합니다.</p>
        <p class="third">바. 회사는 이용자의 개인정보처리에 대하여 법정대리인이나 위임을 받은 자 등에게 고지하여야 할 사유가 발생한 경우에 정보통신부 고시 [개인정보보호지침]의 고지방법을 준수합니다.</p>
        <p class="third">사. 회사가 정보주체 이외로부터 수집한 개인정보를 처리하게 되는 경우, 정보주체의 요구가 있으면 신속히 수집 출처, 처리 목적, 개인정보 처리의 정지를 요구할 권리가 있다는 사실을 정보주체에게 알려드립니다.</p>
        <p class="third">자. 회사는 개인정보 보호법 제20조 제4항 각 호에 근거하여 사항에 따른 정보주체의 요구를 거부하는 경우에는 정보주체의 요구가 있은 날로부터 3일 이내에 그 거부의 근거와 사유를 정보주체에게 알려 드립니다.</p>
        <p class="third">차. 이용자는 자신의 개인정보를 최신의 상태로 유지해야 하며, 이용자의 부정확한 정보 입력으로 발생하는 문제의 책임은 이용자 자신에게 있습니다.</p>
        <p class="third">카. 타인의 개인정보를 도용한 이용자가입의 경우 이용자 자격을 상실하거나 관련 개인정보보호 법령에 의해 처벌 받을 수 있습니다.</p>
        <p class="third">타. 이용자는 전자우편, 비밀번호 등에 대한 보안을 유지할 책임이 있으며 제3자에게 이를 양도하거나 대여할 수 없습니다.</p>

        <p class="title">7. 개인정보의 파기절차 및 방법</p>

        <p class="second">가. 회사는 개인정보 보유기간의 경과, 처리목적 달성 등 개인 정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.  </p>
        <p class="second">나. 개인정보 파기의 절차 및 방법은 다음과 같습니다.</p>
        <p class="third">- 전자적 파일 : 파일 삭제, 디스크 포맷</p>
        <p class="third">- 종이 문서 : 파쇄 또는 소각</p>


        <p class="title">8. 개인정보의 안전성 확보 조치</p>

        <p class="second">회사는 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</p>
        <p class="third">가. 비밀번호 암호화</p>
        <p class="forth">이용자의 비밀번호는 일방향 암호화하여 저장 및 관리되고 있으며, 개인정보의 확인, 변경은 비밀번호를 알고 있는 본인에 의해서만 가능합니다.</p>
        <p class="third">나. 개인식별 가능한 개인정보 암호화: 전화번호, 이메일, 계정, 위치정보</p>
        <p class="third">다. 해킹 등에 대비한 대책</p>
        <p class="forth">- 회사는 해킹, 컴퓨터 바이러스 등 정보통신망 침입에 의해 이용자의 개인정보가 유출되거나 훼손되는 것을 막기 위해 최선을 다하고 있습니다.</p>
        <p class="forth">- 최신 백신프로그램을 이용하여 이용자들의 개인정보나 자료가 누출되거나 손상되지 않도록 방지하고 있습니다.</p>
        <p class="third">다. 개인정보 취급 최소화 및 교육</p>
        <p class="forth">회사는 개인정보 관련 취급 담당자를 최소한으로 제한하며, 개인정보 취급자는 법령 및 내부방침 등의 준수를 강조하고 있습니다.</p>


        <p class="title">9. 개인정보 보호책임자 작성</p>

        <p class="second">가. 회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.</p>
        <p class="third">▶ 개인정보 보호책임자</p>
        <p class="forth">담당자: 정주영</p>
        <p class="forth">전자우편: MaximusPower@greedy.com</p>
        <p class="forth">나. 정보주체께서는 회사의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 회사는 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.</p>

        <p class="title">10. 개인정보 처리방침 변경</p>

        <p class="second">개인정보처리방침은 시행일로부터 적용되며, 법령, 정부의 정책 또는 회사 내부정책 등에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.</p>
        <p class="third">- 공고일자: 2021년 6월 21일</p>
        <p class="third">- 시행일자: 2021년 6월 22일</p>
				
						</div>
						<div class="agree_area">
							<label for="terms-agree"> <input type="checkbox"
								id="terms-agree"> <i class="check_ico"></i> <span
								class="pay_txt">약관을 읽었으며 내용에 동의합니다.</span>
							</label>
						</div>
					</li>
					<div align="Center" style="font-size:25px; color:white; background:skyblue;"><button id="doPay" style="background:skyblue;">결제하기</button></div>
				</ul>
			</div>
		</div>
	</section>
	
	<script>
    $("#doPay").click(function(){
		var IMP = window.IMP; // 생략가능 
        
        IMP.init('imp61135991');
        //전달해야하는 변수
        var msg;
        var userCode = ${sessionScope.loginUser.userCode};
        var tripRegistCode = ${pay.tripRegistCode};
        var totalPay = ${pay.totalPay};
        var userEmail = "${sessionScope.loginUser.userEmail}";
        var userPhone = "${sessionScope.loginUser.userPhone}";
        var userName = "${sessionScope.loginUser.userName}";
        
        IMP.request_pay({
            pg : 'kakaopay',
            pay_method : 'card',
            merchant_uid : 'merchant_' + new Date().getTime(),
            name : 'Tripful Axel 여행 결제',
            amount : totalPay,
            buyer_email : userEmail,
            buyer_name : userName,
            buyer_tel : userPhone,
            buyer_addr : '서울시 강남구 상섬동',
            buyer_postcode : '123-456'
            //m_redirect_url : 'http://www.naver.com'
        }, function(rsp) {
            if ( rsp.success ) {
                //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                jQuery.ajax({
                    url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                    type: 'POST',
                    dataType: 'json',
                    data: {
                    	imp_uid : rsp.imp_uid,
                    }
                }).done(function(data) {
                    //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                    if ( everythings_fine ) {
                        msg = '결제가 완료되었습니다.';
                        msg += '\n고유ID : ' + rsp.imp_uid;
                        msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                        msg += '\결제 금액 : ' + rsp.paid_amount;
                        msg += '카드 승인번호 : ' + rsp.apply_num;
                        
                        alert(msg);
                        
                    } else {
                    	alert("결제에 실패했습니다.");
                    	return;
                        //[3] 아직 제대로 결제가 되지 않았습니다.
                        //[4] 결제된 금액이 요청한 금액과 달라 결제를 자동취소처리하였습니다.
                    }
                });
                //성공시 이동할 페이지
                $.ajax({
    			    		url:"${pageContext.servletContext.contextPath}/trip/payment",
    				    	type:"post",
    				    	data:{
    				    		
    				    		"userCode" : userCode,
    				    		"tripRegistCode" : tripRegistCode,
    				    		"totalPay" : totalPay,
    				    		"userEmail" : userEmail,
    				    		"userPhone" : userPhone,
    				    		"userName" : userName
    				    		
    				    		
    				    	},
    				    	success:function(data, textStatus, xhr){
    				    		alert(data);
    				    		location.replace("${pageContext.servletContext.contextPath}/trip/select?tripCode=${pay.tripCode }&tripType=1");
    				    	},
    				    	error:function(xhr,status,error){
    				    		console.log(error);
    				    	}
    				    });
                
                ;
            } else {
                msg = '결제에 실패하였습니다.';
                msg += '에러내용 : ' + rsp.error_msg;
                //실패시 이동할 페이지
                alert("결제 실패하였습니다.!")
            }
        });
        
    });
    </script>
	
</body>
</html>