/*! jQuery v2.1.1 | (c) 2005, 2014 jQuery Foundation, Inc. | jquery.org/license */

$(function login() {
$("#login").click(function(e){
	$("#loginForm").submit(function(e){
			//form送信キャンセル


			var pw = $("#enterPw").val();
			var id = $("#enterId").val();
			spcTrim ( id , pw )

			//error識別子
			var code = "error_2";
			//IDとPass入力チェック
			if ( id==""|| pw==""){
				code="error_1";

				}
			else{code=dataCheck(id, pw)}


			//code毎のログイン処理
			switch(code){
			case "error_1":

				$("#msg").html("IDまたはパスワードを正しく入力してください。");
				$("#msg").css("color","red");
				return false;

			case "error_2":
				$("#msg").html("IDまたはパスワードがアカウントと一致しません。");
				$("#msg").css("color","red");
				return false;

			case "success":
				alert("test");
				return true;

			default:
				return false;
			}
	});
	});//submit()
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

	function dataCheck(id,pw){
		data = { id : id,pw : pw};


		$.ajax({
			type: "get",
			url : "http://localhost:8080/Sotsuken/loginControl",
			dataType:"json",
			data : data
		}).done(function(res){//成功 res=out.print
			alert(res["status"])
			if(res["status"]=="true"){
			return "success"
		}
			else {
				return "error_2"
			}


		}).fail(function(jqXHR, textStatus, errorThrown ){//失敗
			console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
		})

	}

	//Enterキーを押したらclickに飛ぶ
	$("body").keypress(function ( event ) {
		if ( event.which === 13 ) {
			$("#login").trigger("click");
		}
	});//onkeypress()


});//login()