/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function(){
		$(function clkEvent() {
			var pw = $("#enterPw").val();
			var id = $("#enterId").val();

			//ID入力チェック
			if ( id == ""  ) {
				$("#msg").html("IDを入力してください。" );
				$("#msg").css("color","red");
			}

			//パスワード入力チェック
			if (  pw == "" ) {
				$("#msg").html("パスワードを入力してください。");
				$("#msg").css("color","red");
			}

			//IDへの文字列チェック
			if ( isNaN( id ) == false ) {
				$("#msg").html("IDに入力された値が正しくありません。もう一度入力してください。");
				$("#msg").css("color","red");
			}

		});

	});//click()

	//Enterキーを押したらclickに飛ぶ
	$("body").keypress(function ( event ) {
		if ( event.which === 13 ) {
			clkEvent();
		}
	});//onkeypress()


});//login()