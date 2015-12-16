var repComma = "", str = "", ele = "";

// ドラッグ
function f_drag(e) {
	$("#drag-target li").draggable({
		appendTo : "body",
		revert : "invalid",
		helper : "clone",
		cursor : "pointer"
	})// draggable
}// f_drag

// ドロップ
function f_drop(e) {
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
			} else {
				disabled: true;
			}// if
		}// drop
	})// droppable
}// f_drop


//一時マスタ用

function f_temp_drag(e) {
	$("#drag-target td").draggable({
		appendTo : "body",
		revert : "invalid",
		helper : "clone",
		cursor : "pointer"
	})// draggable
}// f_drag



//ドロップ
function f_temp_drop(e) {
	$(".drop-target").droppable({
		drop : function(e, ui) {

			// 子要素の取得
			ele = $(this).children("textarea").get(0);
			console.log(ele);
			ele.value = ui.draggable.text();
			console.log(ele.value);
			console.log(ele);
			/**
			// 同値チェック
			if (ele.value.indexOf(ui.draggable.text()) === -1) {
				ele.value = ui.draggable.text();
			} else {
				disabled: true;
			}// if
			**/
		}// drop
	})// droppable
}// f_drop
