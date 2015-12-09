function formCheck( e ) {
	//半角英数とエンターキーの入力を検知
	$("textarea").keypress(function( e ){
		$("#dropFlag").get(0).value = "true";
		console.log($("#dropFlag").get(0).value);
	});

	//backspace key と delete key の入力を検知
	$("textarea").keyup(function( e ){
		//console.log($(this).val(e.KeyCode));
		if(e.KeyCode === 8 || e.KeyCode === 46){
			$("#dropFlag").get(0).value = "true";
			console.log($("#dropFlag").get(0).value);
		}
	});
}