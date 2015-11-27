function f_active(e) {
	$('#weekTab li').click(function(e) {
		var elem = $(this).children("input").get(0)
		$("input").removeAttr("name");
		$(elem).attr("name", $(this).get(0).id);
		$("li").removeClass("active");
		$(this).addClass("active");
	});
}