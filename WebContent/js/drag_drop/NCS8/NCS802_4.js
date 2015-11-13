var commaFlagNCS802_4 = new boolean();

function NCS802_4_hold( e ){
	if($("#holdNCS802_4").val()=="true"){
		commaFlagNCS802_4=true;
	}
}

//ドロップ
function NCS802_4_drop( e ) {
	$( "#NCS802_4-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS802_4 ) {
				$( "#NCS802_4"  ).text( $( "#NCS802_4"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS802_4" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS802_4 = true;
				$("#holdNCS802_4").val( commaFlagNCS802_4 );
			}

		}
	})
}