//formCheck
var regex = new RegExp(/([ajrs][1234][agm][12345],?)*/ig), txtVal = "", valArray = new Array;

//dragdrop
var repComma = "", str = "", ele = "";

//clickEvent
var elem = "", data = "";

$(function(e){
	//accordion
	$(".accordionJS").accordion();

	//formCheck
	$("textarea").on({
		//フォーカスしたときにテキストエリアの内容を取得
		"focusin" : function(e) {
			txtVal = $(this).val().toUpperCase();
		},
		//入力された内容を取得
		"keyup" : function(e){
			txtVal = $(this).val().toUpperCase();
			$("#checkFlag").get(0).value = "true";
		},
		//フォーカスが外れたとき
		"focusout" : function(e){
			//テキストエリアの内容に対して正規表現に当てはまる文字列を取得
			valArray = txtVal.match(regex);
			var thisVal = "";
			var insVal = "";
			console.log(valArray);
			//matchで返された配列の内容を変数に代入
			$.each(valArray, function(k,v){
				thisVal += v;
			});
			//splitを用いてeach文を回すためにカンマ区切り
			thisVal = thisVal.replace(/,/g,"");
			while(thisVal != thisVal.replace(/(\w+)(\w{4})/, "$1,$2")){
				thisVal = thisVal.replace(/(\w+)(\w{4})/, "$1,$2");
			}
			//入力された内容に正しいクラスが入力されているか
			$.each(thisVal.split(","), function(k,v){
				//ドラッグするクラスを比較対象に
				$.each($("#drag-target li"),function(liKey,classID){
					//入力されたクラスが正しい場合
					if(v === $(classID).text()){
						insVal += v;
						return;
					}
				});
			});
			//表示用にカンマ区切り
			while(insVal != insVal.replace(/(\w+)(\w{4})/, "$1,$2")){
				insVal = insVal.replace(/(\w+)(\w{4})/, "$1,$2");
			}
			$(this).val(insVal);

			if($("#checkFlag").val() === "true"){
				$("#sBtn").prop("disabled", false);
			}
		}
	});//formCheck

	//f_drag
	$("#drag-target li").draggable({
		appendTo : "body",
		revert : "invalid",
		helper : "clone",
		cursor : "pointer",
	})// draggable

	//f_drop
	$(".drop-target").droppable({
		drop : function(e, ui) {

			// 子要素の取得
			ele = $(this).children("textarea").get(0);
			$("#checkFlag").get(0).value = "true";

			// 同値&5クラスまでのチェック
			if ( (ele.value.indexOf(ui.draggable.text()) === -1 ) && ( ele.value.length < 24 ) ) {

				// テキストボックスの中身とドロップされたテキストを入れる
				str = (ele.value + ui.draggable.text());
				// 一度カンマを取り除く
				repComma = str.replace(/,/g, "");
				// 下４桁ずつカンマ区切りにしていく
				while (repComma != repComma.replace(/(\w+)(\w{4})/, "$1,$2")) {
					repComma = repComma.replace(/(\w+)(\w{4})/, "$1,$2")
				}// while
				// テキストボックスに追加
				ele.value = repComma;
				txtVal = repComma;

				if($("#checkFlag").val() === "true"){
					$("#sBtn").prop("disabled", false);
				}
			} else {
				disabled: true;
			}// if
		}// drop
	})// droppable

	//clickEvent
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
					//form
					$(this).attr("method"),
					$(this).attr("action"),
					"json",
					data
			);
			//modal呼び出し
			toastSelect("success","登録しました。");
			$("#checkFlag").get(0).value = "false";
			$("#sBtn").prop("disabled", true);
		});
	});

	// 一括削除ボタンがクリックされた時
	$("#cBtn").click(function( e ){
		if(confirm("削除してもよろしいですか？")){
			for(var i = 0; i < $("textarea").length; i++){
				$("textarea").get(i).value = "";
			}
			$("#checkFlag").get(0).value = "true";
			$("#sBtn").prop("disabled", false);
		}
	});

	//f_active
	// タブがクリックされた時
	$('#weekTab li').click(function(e) {

		if($("#checkFlag").val() === "true"){
			toastSelect("error","登録されていません。");
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
	});
})

//method,action,json,
function f_ajax(type, url, dataType,data){
	$.ajax({
		type : type,
		url : url,
		dataType : dataType,
		data : data
	}).done(function(res){//成功 res=out.print
		f_ajax_done(res);
	}).fail(function(jqXHR, textStatus, errorThrown ){//失敗
		console.log("NG:" + jqXHR.status + ":" + textStatus.status + ":" + errorThrown);
	})
}
//成功処理
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
