// 넘어온 값이 빈값인지 체크합니다.
// !value 하면 생기는 논리적 오류를 제거하기 위해
// 명시적으로 value == 사용
// [], {} 도 빈값으로 처리
function isEmpty(value){
	if( value == "" || value == null || value == undefined || ( value != null && typeof value == "object" && !Object.keys(value).length ) ){
		return true;
	} else {
		return false;
	}
}

// 숫자에 , 달아주기
function numberWithCommas(num) {
    return parseInt(num).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ',');
}

// ???? 삭제함
function regexQuestionMark(str) {
	// return str.replace(/\?\?\?\?/gi,'');
	var returnStr = str.replace(/\?\?\?\?/gi,'');
	// str = str.replace(/\xF0|\x9F|\x98|\x88/gi,'');
	return returnStr;
}

//숫자만 입력
function onlynum(event) {
    event = event || window.event;
    var keyID = (event.which) ? event.which : event.keyCode;
    if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) {
		return;
	} else {
		event.target.value = event.target.value.replace(/[^0-9]/g, "");
	}
}

// 특수문자 막기
$('input[name="mb_nick"], input[name="keyword_1"], input[name="keyword_2"]').on("keyup", function(e) {
	$(this).val( $(this).val().replace( /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi, '' ) );
	//$(this).val( $(this).val().replace( /^[ㄱ-ㅎ가-힣a-zA-Z0-9\*]+$/, '' ) );
});

//한글입력 막기
$('input[name="mb_1"]').on("blur keyup", function() {
	$(this).val( $(this).val().replace( /[ㄱ-ㅎ|ㅏ-ㅣ|가-힣]/g, '' ) );
});

/*
=========================================================================================================
| Function : Print Emoji (List Emoji)																	| 
| Writer : Kim Hyun Joon																				|
| Date : 2019-10-28 19:45																				|
| Description : 데이터베이스에 저장한 Emoji(이모티콘) 출력하기 위해 사용								|
|				없을 경우는 JSON.parse 없이 진행, 유니코드일 때에만 JSON.parse 진행						|
|				리스트에 표시할 리스트는 이모지 있는 경우 200자 없을 경우 기준 글자 수를 기준으로 함	|
=========================================================================================================
*/
function emoji_List(data, limit) {
	var memo = '';
	var cutting = '';
	if (data.indexOf('\\u') != -1) {
		memo = JSON.parse(data).replace(/\\'/gi, "'");
		memo = memo.replace(/\\\"/gi, "\"").replace(/\\/gi, "");
		if (memo.length > 200) {
			memo = memo.substring(0,200);
			cutting = '&nbsp;&nbsp;...';
		} else {
			cutting = '';
		}
	} else {
		if (data.indexOf('"\\') != -1) {
			memo = JSON.parse(data).replace(/\\'/gi, "'");
			memo = memo.replace(/\\"/gi, "\"").replace(/\\/gi, "");
			if (memo.length > limit) {
				memo = memo.substring(0,limit);
				cutting = '...';
			} else {
				cutting = '';
			}
		} else {
			memo = data.replace(/\\'/gi, "'");
			memo = memo.replace(/\\"/gi, "\"").replace(/\\/gi, "");
			if (memo.length > limit) {
				memo = memo.substring(0,limit);
				cutting = '...';
			} else {
				cutting = '';
			}
		}
	}

	return regexQuestionMark(memo) + cutting;
}

/*
==================================================================================================
|											END													 |
==================================================================================================
*/

/*
==================================================================================================
| Function : Print Emoji (Detail Emoji)															 | 
| Writer : Kim Hyun Joon																		 |
| Date : 2019-10-28 19:45																		 |
| Description : 데이터베이스에 저장한 Emoji(이모티콘) 출력하기 위해 사용						 |
==================================================================================================
*/
function emoji_detail(data) {
	var txt = '';
	
	if (data.indexOf('\\u') != -1) {
		txt = JSON.parse(data).replace(/\\'/gi, "'");
		txt = txt.replace(/\\"/gi, "\"").replace(/\\/gi, "");
	} else {
		if (data.indexOf('"\\') != -1) {
			txt = JSON.parse(data).replace(/\\'/gi, "'");
			txt = txt.replace(/\\"/gi, "\"").replace(/\\/gi, "");
		} else {
			txt = data.replace(/\\'/gi, "'");
			txt = txt.replace(/\\"/gi, "\"").replace(/\\/gi, "");
		}
	}

	return regexQuestionMark(txt);
}

/*
==================================================================================================
|											END													 |
==================================================================================================
*/

// 두개의 날짜를 비교하여 차이를 알려준다.
function dateDiff(_date1, _date2) {
    var diffDate_1 = new Date(_date1);
    var diffDate_2 = new Date(_date2);
 
    diffDate_1 =new Date(diffDate_1.getFullYear(), diffDate_1.getMonth()+1, diffDate_1.getDate());
    diffDate_2 =new Date(diffDate_2.getFullYear(), diffDate_2.getMonth()+1, diffDate_2.getDate());
 
    var diff = diffDate_2.getTime() - diffDate_1.getTime();
    diff = Math.ceil(diff / (1000 * 3600 * 24));
 
    return diff;
}

// 날짜 변환 함수
Date.prototype.format = function(f) {
    if (!this.valueOf()) return " ";
 
    var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
    var d = this;
     
    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
        switch ($1) {
            case "yyyy": return d.getFullYear();
            case "yy": return (d.getFullYear() % 1000).zf(2);
            case "MM": return (d.getMonth() + 1).zf(2);
            case "dd": return d.getDate().zf(2);
            case "E": return weekName[d.getDay()];
            case "HH": return d.getHours().zf(2);
            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
            case "mm": return d.getMinutes().zf(2);
            case "ss": return d.getSeconds().zf(2);
            case "a/p": return d.getHours() < 12 ? "오전" : "오후";
            default: return $1;
        }
    });
};
 
String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};


function replaceAll(str, searchStr, replaceStr) {
	return str.split(searchStr).join(replaceStr);
}

function combineStr(selector, separator){
	var result = [];
	$(selector).each(function(){
		result.push($(this).val());
	});
	return result.join(separator);
}

// XSS 공격 방지
function filterXSS (txt) {
	var str = txt.replace(/<script>|<\/script>/g, '')
		.replace("<", "&lt;")
		.replace(">", "&gt;")
		.replace("'", "&quot;")
		.replace('"', '&#39;');
	return str;
}

function fnMove(seq,focusTarget=''){
	var offset = $(seq).offset();
	$('html, body').animate({scrollTop : offset.top-70}, 400);

	if(focusTarget!==''&&focusTarget!=null){
		$(focusTarget).focus();
	}
}
