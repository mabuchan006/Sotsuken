$(document).ready(function() {



	if($("#addTb-tbody > tr").size() < 2){
	$("#addTb-tbody > tr").clone(true).insertAfter(
			$("#addTb-tbody > tr")
			);
	}//if
	firstID();


	//+ボタン押されたら行の追加
	$(document).on("click",".addList",function(){

		//parent().parent() => td > tr
		$("#addTb-tbody > tr").eq(0).clone(true).insertAfter(
				$(this).parent().parent()
				);


			firstID();

	});

	//　-ボタン押されたら行の削除
	$(document).on("click",".removeList",function(){
		$(this).parent().parent().empty();
		firstID();

	});

});

//動的にIDの連番を格納
function firstID(){
	var cnt = 1;
	$(".grade").each(function(){

		$(this).attr("name","grade_name" + cnt);
		$(this).attr("id","grade_id" + cnt);
		$(this).attr("onchange","selectChange(" + cnt + ")");

         cnt++;
    });
	var cnt = 1;
	$(".cource").each(function(){

		$(this).attr("name","cource_name" + cnt);
        $(this).attr("id","cource_id" + cnt);
         cnt++;
    });



}