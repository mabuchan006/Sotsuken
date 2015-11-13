//ドラッグ
function f_drag( e ) {
	$( "#class-grade li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		helper: "clone"
	})
}
