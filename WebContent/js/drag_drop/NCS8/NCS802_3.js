var commaFlagNCS802_3 = new boolean();

function NCS802_3_hold( e ){
	if($("#holdNCS802_3").val()=="true"){
		commaFlagNCS802_3=true;
	}
}

//ドロップ
function NCS802_3_drop( e ) {
	$( "#NCS802_3-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS802_3 ) {
				$( "#NCS802_3"  ).text( $( "#NCS802_3"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS802_3" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS802_3 = true;
				$("#holdNCS802_3").val( commaFlagNCS802_3 );
			}

		}
	})
}