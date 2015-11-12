/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	var pw = ("#EnterPw").value;
	var id = ("#EnterId").value;

	//EnterKeyを押した時
	$("body").keypress( function( e ) {
		if ( e.which === 13 ) {
			//ckInfo_Events
			ckInfo();
		}
	});

	$("#login").click(function() {
		//ckInfo_Events
		ckInfo();
	});//click_Events

	$(function ckInfo() {
		if ( pw == null || id == null ) {
			alert("ログインをキャンセルします。");
		} else if ( pw != "pw" || id != "id" ) {
			alert("ログイン情報が違います。半角英数字で入力し直してください。");
		} else {
			//ログイン処理
			location.href = "";
		}
	});//ckInfo_Events

});//login()
