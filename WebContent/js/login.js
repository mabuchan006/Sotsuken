/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function(){
		$(function clkEvent() {
			var pw = $("#enterPw").val();
			var id = $("#enterId").val();

			//toDO
			//・ID、パスワードが登録テーブルになかった場合のエラー表示(loginControlへ実装)
			//・パスワード、IDを間違えてる状態でのページ遷移処理(loginControlへ実装)

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
			if ( id === "" || id.length(0) ) {
				$("#msg").html("IDを入力してください。" );
				$("#msg").css("color","red");
			} else if ( !isNaN( id ) ) {
				$("#msg").html("IDを入力し直してください。" );
				$("#msg").css("color","red");
			}//ID_check else if

			//パスワード入力チェック
			if (  pw === "" || pw.length(0) ) {
				$("#msg").html("パスワードを入力してください。");
				$("#msg").css("color","red");
			}//pasword check if

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