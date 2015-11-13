var commaFlagNCS701_1 = new boolean();

function NCS701_1_hold( e ){
	if($("#hold").val()=="true"){
		commaFlagNCS701_1=true;
	}
}

//ドロップ
function NCS701_1_drop( e ) {
	$( "#NCS701_1-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS701_1 ) {
				$( "#NCS701_1"  ).text( $( "#NCS701_1"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS701_1" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS701_1 = true;
				$("#holdNCS701_1").val( commaFlagNCS701_1 );
			}

		}
	})
}