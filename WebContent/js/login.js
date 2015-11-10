/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function() {
		//confirm("ログイン情報を入力してください。");

		$(function confirmDialog() {
			var pass;
			pass = prompt("ログイン情報を入力してください。","パスワード","ID");
			if ( pass == null ) {
				alert("ログインをキャンセルします。");
			} else {
				alert("ログインします。")
			}
		});
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
