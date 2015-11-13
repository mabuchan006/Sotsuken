$(function belongings () {

	$("#lec").click(function () {
		if ( $("#lec :checked") ) {
			$("#lec").animate ({"left" : "500px"} , 100 );
		} else {
			$("#lec").animate ({"right" : "500px"} , 100 );
		}
	});

});