function f_active(e) {
	$('#addClassTest li').click(function(e) {
		var elem = $(this).get(0);
		$("li").removeAttr("name");
		$(this).attr("name", elem.id);
		$("li").removeClass("active");
		$(this).addClass("active");
	});
}