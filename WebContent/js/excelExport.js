//function excelExport(){
$(function(){
	$("#cBtn").click(function(){
		var classID = $("title").attr("title");
		var data = {page : "R4A1"};

		$.ajax({
			type: "POST",
			url : "/Sotsuken/excelExport",
			data : data
		}).done(function(){
			alert("success!!");
		});
	});
})