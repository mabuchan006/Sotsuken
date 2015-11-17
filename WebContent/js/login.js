/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {

	$("#login").click(function(){
		$(function clkEvent() {
			var pw = $("#enterPw").val();
			var id = $("#enterId").val();

			if (  pw == "" || id == ""  ) {

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