var elem = "";

function clickEvent(){
	// 登録ボタンがクリックされた時
	$("#submitBtn").click(function() {
		$("#modal2").modal("show");
		// ボタンにname（submit）を付加
		$("button").attr("name", "submit");
	});

	// labelがクリックされた時
	$("label").click(function(){
		// クリックされたlabelの親要素(p)内にある子要素(textarea)のvalueを初期化
		$(this).parents("p").children("textarea").get(0).value = "";
	});

	// 一括削除ボタンがクリックされた時
	$().click(function(){
		for(var i = 0; i < $("textarea").length; i++){
			$("textarea").get(i).value = "";
		}
	});
}

function f_active( dropFlag ) {
	// タブがクリックされた時
	$('#weekTab li').click(function() {
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

		if( dropFlag ){
			$("#modal1").modal("show")
		} else {
			$.ajax({
				type : "POST",
				url : "/Sotsuken/php/divideAjax.php",
				//data : { "week" : elem.name}
			}).done(function(){
				console.log("ok");
			}).fail(function(){
				console.log("no");
			})
		}
	})
}