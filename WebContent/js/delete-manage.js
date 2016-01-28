$(document).ready(function(){
	$(".delete").click(function(e){

			if(confirm("削除してもよろしいですか？")){return true;}
			return false;
	});

	$(".notice-slide").click(function(e){
		$(".notie").slideToggle();


	});
});
