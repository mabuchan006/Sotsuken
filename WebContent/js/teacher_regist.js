/**
 * 講師登録画面
 * テーブルクリック時イベント用
 */

$(function(){
	$(document).ready(function(){
		//tableの要素がクリックされたら
		$(".select").click(function(){

			$("#teacherName").value( $("#select").html());

		});
	});
});