//function excelExport(){
$(function(){
	$(".excel").click(function(){
		var data = {classID : $(this).parents(".select").children(".classid").text()};
		$.ajax({
			type: "POST",
			url : "/Sotsuken/excelExport",
			data : data
		}).done(function(){
			toastSelect("success","DLに成功しました。")
		}).fail(function(){
			toastSelect("error","時間割がありません。");
		});
	});
})