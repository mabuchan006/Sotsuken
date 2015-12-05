var elem = "";

function clickEvent( e ){
	//登録ボタンがクリックされた時
	$("#submitBtn").click(function(e) {
		//ボタンにname（submit）を付加
		$("button").attr("name", "submit");
	});

	//labelがクリックされた時
	$("label").click(function( e ){
		//クリックされたlabelの親要素(p)内にある子要素(textarea)のvalueを初期化
		$(this).parents("p").children("textarea").get(0).value = "";
	});
}

function f_active(e) {
	// タブがクリックされた時
	$('#weekTab li').click(function(e) {
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
	});
}