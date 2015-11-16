var repComma;
var str;

//ドロップ
function NCS802_1_drop( e ) {
	$( "#NCS802_1-drop" ).droppable({
		drop: function( e, ui ) {

			str = ($( "#NCS802_1" ).text() + ui.draggable.text() );

			repComma = str.replace(/,/g, "");
			while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
				repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
			}

			$( "#NCS802_1" ).text( repComma ).appendTo( this );

		}
	})
}