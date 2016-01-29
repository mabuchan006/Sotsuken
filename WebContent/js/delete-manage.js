$(document).ready(function(){

	    $( "#selectable" ).selectable();

	$(".delete").click(function(e){

			if(confirm("削除してもよろしいですか？")){return true;}
			return false;
	});

	$("#notice-slide").click(function(e){
		$("#noticeID").slideToggle();
	});

	$("button[name=regist_event]").click(function(e){
		$("#period").val("");
		var flg=0;
		$(".ui-selected").each(function () {
			if(flg == 0){
         $("#period").val($("#period").val()+$(this).text());
         flg=1;
         }else{
        	 $("#period").val($("#period").val()+","+$(this).text());
         }

		});


	})
});
