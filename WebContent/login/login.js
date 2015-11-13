/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	var pw = ("#enterPw").text;
	var id = ("#enterId").text;

	$("#login").click(function(){

		$(function ckInfo() {
			if ( pw === null || id === null ) {
				alert("ログインをキャンセルします。");
			} else if ( pw == "syam" || id == "syam" ) {
				alert("ログイン情報が違います。");
			} else {
				//ログイン処理
				location.href = "http://yahoo.co.jp";
			}
		});//ckInfo_Events
	});//click_Event

});//login()


