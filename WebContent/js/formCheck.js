function formCheck( e ) {
	//半角英数とエンターキーの入力を検知
	$("textarea").keypress(function( e ){
		$("#dropFlag").get(0).value = "true";
	});

	//backspace key と delete key の入力を検知
	$("textarea").keyup(function( e ){
		if(e.which === 8 || e.which === 46){
			$("#dropFlag").get(0).value = "true";
		}
	});
}