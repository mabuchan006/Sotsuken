var regex = new RegExp(/([ajrs][1234][agm][12345],?)*/ig), txtVal = "", valArray = new Array, keyChar = "";
function formCheck( e ) {

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
			})
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
				})
			})
			//表示用にカンマ区切り
			while(insVal != insVal.replace(/(\w+)(\w{4})/, "$1,$2")){
				insVal = insVal.replace(/(\w+)(\w{4})/, "$1,$2");
			}
			$(this).val(insVal);
		}
	})
}