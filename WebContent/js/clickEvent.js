var elem = "", data = "";

function clickEvent( e ){
	// 登録ボタンがクリックされた時
	$("#sBtn").click(function(e) {
		// ボタンにname（submit）を付加
		$("#sBtn").attr("name", "regist");
		$("#modal2").modal("show");
	});

	// labelがクリックされた時
	$("label").click(function( e ){
		// クリックされたlabelの親要素(p)内にある子要素(textarea)のvalueを初期化
		$(this).parents("p").children("textarea").get(0).value = "";
		$("#checkFlag").get(0).value = "true";
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

		if($("#checkFlag").val() === "true"){
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
					data = { ajaxWeek : "月" };
					break;
				case "tue" :
					data = { ajaxWeek : "火" };
					break;
				case "wed" :
					data = { ajaxWeek: "水" };
					break;
				case "thu" :
					data = { ajaxWeek : "木" };
					break;
				case "fri" :
					data = { ajaxWeek : "金" };
					break;
				default :
					data = { ajaxWeek : "月" };
					break;
			}
			f_ajax(data);
		}
	})
}

function f_ajax(data){
	$.ajax({
		type : "POST",
		url : "http://localhost:8080/Sotsuken/divideUpdate",
		dataType : "json",
		data : data
	}).done(function(res){
		f_ajax_done(res);
	}).fail(function(jqXHR, textStatus, errorThrown ){
		console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
	})
}

function f_ajax_done(res){
	//全テキストエリアをクリア
	for(var i = 0; i < $("textarea").length; i++){
		$("textarea").get(i).value = "";
	}
	//受け取ったJSONのKeyごとに処理
	$.each(res,function(roomID, val1){
		$.each(val1,function(period, classID){
			//セレクタに対応するテキストエリアに追加
			$("#" + roomID + "-" + period.substr(1)).val(classID);
		})
	})
}