$(document).ready(function() {

	$("#addTb-tbody > tr").clone(true).insertAfter(
			$("#addTb-tbody > tr")
			);


	//+ボタン押されたら行の追加
	$(document).on("click",".addList",function(){

		//parent().parent() => td > tr
		$("#addTb-tbody > tr").eq(0).clone(true).insertAfter(
				$(this).parent().parent()
				);

			alert($(this).parent().parent().text());
	});

	//　-ボタン押されたら行の削除
	$(document).on("click",".removeList",function(){
		$(this).parent().parent().empty();
	});

});