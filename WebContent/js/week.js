function f_active(e) {
	// タブがクリックされた時
	$('#weekTab li').click(function(e) {
		// クリックされたタブの要素取得
		var elem = $(this).children("input").get(0)
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