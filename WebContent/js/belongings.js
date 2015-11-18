/*$(function cd() {
	try {
		$("#sldRow").css("display","table-row");
	} catch(e) {}
});
*/
$(function belongings () {
	var speed = 500;
	$("#fade_btn").click(function() {
		$(".sldCell100").fadeToggle(speed);
		$(".sldCell101").fadeToggle(speed);
		$(".sldCll").effect( "size" , { to:
			{ height: 100 , width: 400 } } , speed );

/*		setTimeout(function() {
			$("sldRow").hide();
		} , speed);

*/
	});
});