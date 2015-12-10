function formCheck( dropFlag) {
	//半角英数とエンターキーの入力を検知
	$("textarea").keypress(function( e ){
		dropFlag = new Boolean(true);
		console.log(dropFlag);
	});

	//backspace key と delete key の入力を検知
	$("textarea").keyup(function( e ){
		if(e.which === 8 || e.which === 46){
			dropFlag = new Boolean(true);
			console.log(dropFlag);
		}
	});
	return dropFlag;
}