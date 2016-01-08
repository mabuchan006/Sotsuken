var elem = "", data = "";

function clickEvent( e ){
	// 登録ボタンがクリックされた時
	$("#sBtn").click(function(e) {
		$("form").submit(function(e){
			//form送信キャンセル
			e.preventDefault();
			//formの情報を配列化
			data = $(this).serializeArray();
			//delete実行のための情報
			data.push({ name : "regist" , value : ""});
			//アクティブになっているタグの曜日を取得
			elem = $(".active").children("input").get(0);
			//曜日の情報をform情報に入れる
			switch( elem.name ){
				case "mon" :
					data.push({ name : "ajaxWeek" , value : "月" });
					break;
				case "tue" :
					data.push({ name : "ajaxWeek" , value : "火" });
					break;
				case "wed" :
					data.push({ name : "ajaxWeek" , value : "水" });
					break;
				case "thu" :
					data.push({ name : "ajaxWeek" , value : "木" });
					break;
				case "fri" :
					data.push({ name : "ajaxWeek" , value : "金" });
					break;
				default :
					data.push({ name : "ajaxWeek" , value : "月" });
					break;
			}
			f_ajax(
					$(this).attr("method"),
					$(this).attr("action"),
					"json",
					data
			);
			//modal呼び出し
			$("#modal2").modal("show");
			$("#checkFlag").get(0).value = "false";
		});
	});

	// 一括削除ボタンがクリックされた時
	$("#cBtn").click(function( e ){
		for(var i = 0; i < $("textarea").length; i++){
			$("textarea").get(i).value = "";
		}
		$("#checkFlag").get(0).value = "true";
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
			f_ajax(
					$("form").attr("method"),
					$("form").attr("action"),
					"json",
					data
					);
		}
	})
}

function f_ajax(type, url, dataType,data){
	$.ajax({
		type : type,
		url : url,
		dataType : dataType,
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