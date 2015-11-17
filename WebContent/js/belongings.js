$(function belongings () {
	$("#fade_btn").on("click",function () {
		$("sldCell100").hide();
		$($(this).attr( "href" ) ) .fadeToggle();
	});
	return false;
});