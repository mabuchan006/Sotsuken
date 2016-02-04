//function excelExport(){
$(function(){
	$(".excel").click(function(){
		$(".excel").prop("disabled",true);
		var _classID = $(this).parents(".select").children(".classid").text();
		var _DownloadUrl ="/Sotsuken/toExcel?page=export&classID=" + _classID;
		var data = {classID : _classID};
		$.ajax({
			type: "GET",
			url : "/Sotsuken/toExcel?page=create",
			data : data,
			dataType : "json"
		}).done(function(res){
			toastSelect(res.key, res.value);
			window.location = _DownloadUrl;
			$(".excel").prop("disabled",false);
		}).fail(function(){
			toastSelect("error","エラーが発生しました");
			$(".excel").prop("disabled",false);
		});
	});
})