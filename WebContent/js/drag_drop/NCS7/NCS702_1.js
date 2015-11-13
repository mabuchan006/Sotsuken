var commaFlagNCS702_1 = new boolean();

function NCS702_1_hold( e ){
	if($("#hold").val()=="true"){
		commaFlagNCS702_1=true;
	}
}

//ドロップ
function NCS702_1_drop( e ) {
	$( "#NCS702_1-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS702_1 ) {
				$( "#NCS702_1"  ).text( $( "#NCS702_1"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS702_1" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS702_1 = true;
				$("#holdNCS702_1").val( commaFlagNCS702_1 );
			}

		}
	})
}