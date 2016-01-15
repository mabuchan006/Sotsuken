/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function(){
		$(function clkEvent() {
			var pw = $("#enterPw").val();
			var id = $("#enterId").val();
			var login{};

			login.doLogin = function doLogin(loginForm) {

				//ID & PASS null check
				if ( loginForm.id.value == '' ) {
					return login.doError('IDを入力してください。');
				}
				if ( loginForm.pw.value == '' ) {
					return login.doError('パスワードを入力してください。');
				}
				//NOT Error
				return true;
			}

			login.doError = function doError(msg) {
				alert(msg);
				return false;
			}

			if (  pw == "" || id == "" || pw == 0 || id == 0 ) {

				$("#msg").html("未入力があります、入力してください。");
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