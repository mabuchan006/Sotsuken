//ドラッグ
function f_drag( e ) {
	$( "#class-room li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		helper: "clone"
	})
}
