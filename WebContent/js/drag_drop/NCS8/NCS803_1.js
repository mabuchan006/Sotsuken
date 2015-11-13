var commaFlagNCS803_1 = new boolean();

function NCS803_1_hold( e ){
	if($("#hold").val()=="true"){
		commaFlagNCS803_1=true;
	}
}

//ドロップ
function NCS803_1_drop( e ) {
	$( "#NCS803_1-drop" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( e, ui ) {

			//カンマ区切り判定
			if( commaFlagNCS803_1 ) {
				$( "#NCS803_1"  ).text( $( "#NCS803_1"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( "#NCS803_1" ).text( ui.draggable.text() ).appendTo( this );
				commaFlagNCS803_1 = true;
				$("#holdNCS803_1").val( commaFlagNCS803_1 );
			}

		}
	})
}