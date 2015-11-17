$(function belongings () {

	/*$.slide( { ex : function( argElem , argDirc , argDisp ) {
		argElem.queue(function() {
			if ( $( this ).css("display") == "none" ) {
				$(this).show( "slide" , { direction : argDirc } ,
						argDisp , function(){
					$(this),clearQueue();
				})//$(this).show_Events
			}//if
		})//queueAction
	}})//.slide*/
	$("#lec").click(function () {
		$("p").toggle( "slide" , { direction : "left" } , 1000 );
	});

});