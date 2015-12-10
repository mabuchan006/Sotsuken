var elem = "", data = "";

function clickEvent( e ){
	// 登録ボタンがクリックされた時
	$("#submitBtn").click(function(e) {
		$("#modal2").modal("show");
		// ボタンにname（submit）を付加
		$("button").attr("name", "submit");
	});

	// labelがクリックされた時
	$("label").click(function( e ){
		// クリックされたlabelの親要素(p)内にある子要素(textarea)のvalueを初期化
		$(this).parents("p").children("textarea").get(0).value = "";
	});

	// 一括削除ボタンがクリックされた時
	$().click(function( e ){
		for(var i = 0; i < $("textarea").length; i++){
			$("textarea").get(i).value = "";
		}
	});
}

function f_active(e) {
	// タブがクリックされた時
	$('#weekTab li').click(function(e) {

		if($("#dropFlag").get(0).value === "true"){
			$("#modal1").modal("show")
		} else {
			// クリックされたタブの要素取得
			elem = $(this).children("input").get(0)
			// form送信用にあるinput hiddenからname削除
			$("input").removeAttr("name");
			// クリックしたタブにli要素のIDをnameとして設定
			$(elem).attr("name", $(this).get(0).id);
			// 全li要素のclassからactiveを削除
			$("li").removeClass("active");
			// クリックしたタブのliにあるクラスにactiveを追加
			$(this).addClass("active");


			switch( elem.name ){
				case "mon" :
					data = { week : "月" };
					break;
				case "tue" :
					data = { week : "火" };
					break;
				case "wed" :
					data = { week : "水" };
					break;
				case "thu" :
					data = { week : "木" };
					break;
				case "fri" :
					data = { week : "金" };
					break;
			}
			$.ajax({
				type : "POST",
				url : "/Sotsuken/php/divideAjax.php",
				dataType : "jsonp",
				jsonpCallback : "callback",
				data : data
			}).done(function(res){
				console.log(res);
			}).fail(function(jqXHR, textStatus, errorThrown ){
				console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
			})
		}
	})
}