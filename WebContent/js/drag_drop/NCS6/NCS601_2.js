var repComma;
var str;

//ドロップ
function NCS601_2_drop( e ) {
	$( "#NCS601_2-drop" ).droppable({
		drop: function( e, ui ) {

			//テキストボックスの中身とドロップされたテキストを入れる
			str = ($( "#NCS601-2" ).text() + ui.draggable.text() );

			//一度カンマを取り除く
			repComma = str.replace(/,/g, "");
			//下４桁ずつカンマ区切りにしていく
			while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
				repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
			}

			//テキストボックスに追加
			$( "#NCS601-2" ).text( repComma ).appendTo( this );

		}
	})
}