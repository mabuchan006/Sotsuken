var textVal = "" , fcEle = "";
//一時マスタ用
function f_temp_drag(e) {
	$(".drag-target td , .drag-target li").draggable({
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
			var ele = $(this).children("textarea").get(0);
			dragEle = ui.draggable.get(0);
			if (ele.classList.contains("subject") && dragEle.classList.contains("subject")) {
				ele.value = ui.draggable.text();
			} else
			if (ele.classList.contains("teacher") && dragEle.classList.contains("teacher")) {
				if (ele.value.length > 0) {
					ele.value = ele.value + "/" + ui.draggable.text();
				} else {
					ele.value = ui.draggable.text();
				}
			} else {
				disabled: true;
			}
		}// drop
	})// droppable
}// f_drop

function f_temp_formCheck(e) {
	$("textarea").on({
		"focusin" : function(e) {
			textVal = $(this).val();
			fcEle = $(this).children.get(0);
		},
		"keyup" : function(e) {
			textVal = $(this).val();
		},
		"focusout" : function(e){
			$.each($(".drag-target td"), function(k,teacher){

			})
		}
	})
}