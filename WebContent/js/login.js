/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function() {
		//confirm("ログイン情報を入力してください。");

		$(function ckInfo() {
			var pw = prompt( "パスワードを入力してください。" , "PassWord" );
			var id = prompt("IDを入力してください。" , "ID");
			//pw = document.getElementById("EnterPassWord").value;
			//id = document.getElementById("EnterId").value;
			if ( pw == null || id == null ) {
				alert("ログインをキャンセルします。");
			} else if ( pw != "pw" || id != "id" ) {
				alert("ログイン情報が違います。半角英数字で入力し直してください。");
			} else {
				//ログイン処理
				location.href = "";
			}
		});//ckInfo
/*
		$confirm({
			title			:	"管理者画面ログイン",
			message	:	"ログイン情報を入力してください。",
			buttons	:	{
				"ログイン"		: function() {
					$(this).dialog("close");
				},
				"キャンセル"	: function() {
					$(this).dialog("close");
				}
			}
		});
*/

	});//クリックイベント

});//login()
