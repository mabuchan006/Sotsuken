/*$(function cd() {
	try {
		$("#sldRow").css("display","table-row");
	} catch(e) {}
});
*/
$(function belongings () {
	var speed = 200;
	$("#fade_btn").click(function() {
		$("#sldCell100").fadeToggle(speed);
		$("#sldCell101").fadeToggle(speed);
/*		setTimeout(function() {
			$("sldRow").hide();
		} , speed);


		$("#sldCell100").css("background-color","#6699ff");
		$("#sldCell101").css("background-color","#6699ff");
		$("#sldCell101").css("height","200px");
*/
	});
});