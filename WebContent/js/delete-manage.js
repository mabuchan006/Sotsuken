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
		$("#endFlagid").val("0");
		var flg=0;
		$(".ui-selected").each(function () {

			if($(this).text()=="ALL"){
			$("#period").val("1,2,3,4");
			$("#1").removeClass();
			  $("#endFlagid").val("1");
			}else
			if(flg == 0){
         $("#period").val($("#period").val()+$(this).text());

         flg=1;
         }else{
        	 $("#period").val($("#period").val()+","+$(this).text());
         }

		});
		alert($("#endFlagid").val())
		return false;

	})
});
