var classIDArray = "", regExp = "";
function formCheck( e ) {

	$("textarea").focusout(function(e){
		regExp = /([agjmrs][1234][agjmrs][12345],?)*/ig;
		console.log($(this).val());
		if( !( regExp.test( $(this).val() ) ) ){
		}
	})

	//半角英数とエンターキーの入力を検知
	$("textarea").keypress(function( e ){
		$("#checkFlag").get(0).value = "true";
	});

	//backspace key と delete key の入力を検知
	$("textarea").keyup(function( e ){
		if(e.which === 8 || e.which === 46){
			$("#checkFlag").get(0).value = "true";
		}
	});
}