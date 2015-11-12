var commaFlag = new boolean();
function f_hold( e ){
	if($("#hold").val()=="true"){
		commaFlag=true;
	}
}

//ドラッグ
function f_drag( e ) {
	$( "#class-grade li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		helper: "clone"
	})
}

//ドロップ
function f_drop( e ) {
	$( ".class-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlag ) {
				$( ".class-divide"  ).text( $( ".class-divide"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( ".class-divide" ).text( ui.draggable.text() ).appendTo( this );
				commaFlag = true;
				$("#hold").val( commaFlag );
			}

		}
	})
	DragOver();
}

function DragOver( e ) {
	event.preventDefault();
}

//ドラッグ要素がドロップ要素の上にあるとき
function DragHover( e ) {
	var d_name = e.currentTarget.name();
}
