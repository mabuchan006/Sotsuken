/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function password() {

	$(document).ready(function() {
		alert("test")
	    $('#identicalForm').formValidation({
	        framework: 'bootstrap',
	        icon: {
	            valid: 'glyphicon glyphicon-ok',
	            invalid: 'glyphicon glyphicon-remove',
	            validating: 'glyphicon glyphicon-refresh'
	        },
	        fields: {
	            confirmPassword: {
	                validators: {
	                    identical: {
	                        field: 'password',
	                        message: 'The password and its confirm are not the same'
	                    }
	                }
	            }
	        }
	    });
	});
$("#modal").click(function(e){
	$("#msg").html("");
})

	$("form").submit(function(e){
			//form送信キャンセル

			var pw = $("#enterPw").val();
			var id = $("#enterId").val();
			spcTrim ( id , pw )

			//error識別子
			var code = "error_2";
			//IDとPass入力チェック
			if ( id==""|| pw==""){
				code="error_1";}
			else{code=dataCheck(id, pw)}

			//code毎のログイン処理
			switch(code){
			case "error_1":

				$("#msg").html("IDまたはパスワードを正しく入力してください。");
				$("#msg").css("color","red");
				$("#enterPw").val("");
				$("#enterId").val("");
				return false;

			case "error_2":
				$("#msg").html("IDまたはパスワードがアカウントと一致しません。");
				$("#msg").css("color","red");
				$("#enterPw").val("");
				$("#enterId").val("");
				return false;

			case "success":

				return true;

			default:
				return false;
			}
	});



	function dataCheck(id,pw){
		data = { id : id,pw : pw};
		code= "error_2";

		$.ajax({
			type: "get",
			url : "http://localhost:8080/Sotsuken/loginControl",
			dataType:"json",
			data : data,
			async: false
		}).done(function(res){//成功 res=out.print

			if(res["status"]=="true"){
			code= "success";
		}//if
		}).fail(function(jqXHR, textStatus, errorThrown ){//失敗
			console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
		})

		return code;

	}

	//Enterキーを押したらclickに飛ぶ
	$("body").keypress(function ( event ) {
		if ( event.which === 13 ) {
			$("#login").trigger("click");
		}
	});//onkeypress()


});//login()