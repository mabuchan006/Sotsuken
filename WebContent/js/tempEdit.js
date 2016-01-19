var textVal = "" , fcEle = "";
//一時マスタ用
function f_temp_drag() {
	$(".drag-target td , .drag-target li").draggable({
		appendTo : "body",
		revert : "invalid",
		helper : "clone",
		cursor : "pointer",
		start : function(){
			$(this).trigger("focusout");
		}
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
					$(ele).trigger("focusin");
					$(ele).trigger("focusout");
				} else {
					ele.value = ui.draggable.text();
					$(ele).trigger("focusin");
					$(ele).trigger("focusout");
				}
			} else {
				disabled: true;
			}
		}// drop
	})// droppable
}// f_drop

function f_temp_formCheck(e) {
	$("textarea.teacher").on({
		"focusin" : function(e) {
			textVal = $(this).val();
			console.log("focusin:"+ textVal);
			//fcEle = $(this).children("textarea").get(0);
		},
		"keyup" : function(e) {
			textVal = $(this).val();
			console.log("keyup:"+ textVal);
		},
		"focusout" : function(e){
			var insVal = "";
			$.each($(".drag-target li"), function(k,teacher){
				if (textVal.indexOf($(teacher).text()) != -1) {
					if(insVal.length > 0){
						insVal = insVal + "/" + $(teacher).text();
					} else {
						insVal = $(teacher).text();
					}
				}
			})
			console.log("focusout textVal :" + textVal);
			console.log("focusout insVal :" + insVal);
			$(this).val(insVal);
		}
	})
}
function tempClickEvent(e){
	$("#regBtn").click(function(e){
		$("#").modal("show");
	})
}