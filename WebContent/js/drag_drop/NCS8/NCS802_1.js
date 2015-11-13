var commaFlagNCS802_1 = new boolean();

function NCS802_1_hold( e ){
	if($("#hold").val()=="true"){
		commaFlagNCS802_1=true;
	}
}

//ドロップ
function NCS802_1_drop( e ) {
	$( "#NCS802_1-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS802_1 ) {
				$( "#NCS802_1"  ).text( $( "#NCS802_1"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS802_1" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS802_1 = true;
				$("#holdNCS802_1").val( commaFlagNCS802_1 );
			}

		}
	})
}