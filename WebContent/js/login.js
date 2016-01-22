/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function(){
		$(function clkEvent() {
			var pw = $("#enterPw").val();
			var id = $("#enterId").val();

			//半角、全角スペース削除処理
			function spcTrim ( id , pw ) {
				var sId = id;
				var sPw = pw;

				//ID 半角スペース削除
				sId = sId.replace( /^[\s]*/ , "" );
				//ID 全角スペース削除
				sId = sId.replace( /^[\s]*$/ , "" );

				//パスワード 半角スペース削除
				sPw = sPw.replace( /^[\s]*/ , "" );
				//パスワード 全角スペース削除
				sPw = sPw.replace( /^[\s]*$/ , "" );

				return sId , sPw;
			}//spcTrim

			//ID入力チェック
			if ( id == "" || id.length(0)  ) {
				$("#msg").html("IDを入力してください。" );
				$("#msg").css("color","red");
			}

			//パスワード入力チェック
			if (  pw == "" || pw.length(0) ) {
				$("#msg").html("パスワードを入力してください。");
				$("#msg").css("color","red");
			}

			//IDへの文字列チェック
			if ( isNaN( id ) == false ) {
				$("#msg").html("IDに入力された値が正しくありません。もう一度入力してください。");
				$("#msg").css("color","red");
			}


		});//clkEvent
		return false;
	});//click()

	//Enterキーを押したらclickに飛ぶ
	$("body").keypress(function ( event ) {
		if ( event.which === 13 ) {
			clkEvent();
		}
	});//onkeypress()


});//login()