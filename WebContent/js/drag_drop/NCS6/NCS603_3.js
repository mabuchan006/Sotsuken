var repComma;
var str;

//ドロップ
function NCS603_3_drop( e ) {
	$( "#NCS603_3-drop" ).droppable({
		drop: function( e, ui ) {

			//テキストボックスの中身とドロップされたテキストを入れる
			str = ($( "#NCS603-3" ).text() + ui.draggable.text() );

			//一度カンマを取り除く
			repComma = str.replace(/,/g, "");
			//下４桁ずつカンマ区切りにしていく
			while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
				repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
			}

			//テキストボックスに追加
			$( "#NCS603-3" ).text( repComma ).appendTo( this );

		}
	})
}
