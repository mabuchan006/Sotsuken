var commaFlagNCS802_2 = new boolean();

function NCS802_2_hold( e ){
	if($("#holdNCS802_2").val()=="true"){
		commaFlagNCS802_2=true;
	}
}

//ドロップ
function NCS802_2_drop( e ) {
	$( "#NCS802_2-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS802_2 ) {
				$( "#NCS802_2"  ).text( $( "#NCS802_2"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS802_2" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS802_2 = true;
				$("#holdNCS802_2").val( commaFlagNCS802_2 );
			}

		}
	})
}