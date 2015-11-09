/**
 * 講師登録画面
 * テーブルクリック時イベント用
 */

$(function(){
		//tableの要素がクリックされたら
		$(".select").each(function(){
			$(this).click(function(){

				$("#teacherName").val( $(this).html());
				$("#labelName").html(( $(this).html()));

				if($("#labelName") !="" ){

					$("#labelName").css("padding","10px");

				}

			});//this.click
	});//select.each



});//function()