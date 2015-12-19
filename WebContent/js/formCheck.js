var regex = new RegExp(/([ajrs][1234][agm][12345],?)*/ig), txtVal = "", valArray = new Array, keyChar = "";
function formCheck( e ) {

	$("textarea").on({
		"focusin" : function(e) {
			txtVal = $(this).val();
		},
		//半角英数とエンターキーの入力を検知
		"keypress" : function(e){
			if( e != null){
				keyChar = String.fromCharCode(e.which).toUpperCase();
				if(keyChar == "A" || keyChar == "G" || keyChar == "J" || keyChar == "M" || keyChar == "R" || keyChar == "S"
					|| keyChar == "1" || keyChar == "2" || keyChar == "3" || keyChar == "4" || keyChar == "5"){
					txtVal += keyChar;
					console.log(txtVal);
					$("#checkFlag").get(0).value = "true";
				}
			}
		},
		//backspace key と delete key の入力を検知
		"keyup" : function(e){
			if(e.which === 8 || e.which === 46){
				txtVal = $(this).val();
				console.log(txtVal);
			}
			$("#checkFlag").get(0).value = "true";
		},
		"focusout" : function(e){
			valArray = txtVal.match(regex);
			var thisVal = "";
			$.each(valArray, function(k,v){
				thisVal += v;
			})
			thisVal = thisVal.replace(/,/g,"");
			while(thisVal != thisVal.replace(/(\w+)(\w{4})/, "$1,$2")){
				thisVal = thisVal.replace(/(\w+)(\w{4})/, "$1,$2");
			}
			$(this).val(thisVal);
		}
	})
}