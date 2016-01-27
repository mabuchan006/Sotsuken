var textVal = "";

$(function(e){
	//f_temp_drag
	$(".drag-target td , .drag-target li").draggable({
		appendTo : "body",
		revert : "invalid",
		helper : "clone",
		cursor : "pointer",
		start : function(){
			$(this).trigger("focusout");
		}
	})// draggable

	//f_temp_drop
	$(".drop-target").droppable({
		drop : function(e, ui) {

			var array = new Array();
			// 子要素の取得
			var ele = $(this).children("textarea").get(0);
			dragEle = ui.draggable.get(0);
			if (ele.classList.contains("subject") && dragEle.classList.contains("subject")) {
				var array = ui.draggable.text().split(":");
				ele.value = array[1];
				var eleInput = $(this).children("input:hidden").get(0);
				console.log(eleInput);
				eleInput.value = ui.draggable.text();
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

	//f_temp_formCheck
	$("textarea.teacher").on({
		"focusin" : function(e) {
			textVal = $(this).val();
			console.log("focusin:"+ textVal);
		},//focusin
		"keyup" : function(e) {
			textVal = $(this).val();
			console.log("keyup:"+ textVal);
		},//keyup
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
		}//focusout
	});//f_temp_drag

	//tempClickEvent
	$("#confBtn").click(function(){
		$("#dateReq").removeAttr("required");
	});//tempClickEvent
})