var repComma;
var str;

//ドロップ
function NCS802_1_drop( e ) {
	$( "#NCS802_1-drop" ).droppable({
		drop: function( e, ui ) {

			//テキストボックスの中身とドロップされたテキストを入れる
			str = ($( "#NCS802-1" ).text() + ui.draggable.text() );

			//一度カンマを取り除く
			repComma = str.replace(/,/g, "");
			//下４桁ずつカンマ区切りにしていく
			while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
				repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
			}

			//テキストボックスに追加
			$( "#NCS802-1" ).text( repComma ).appendTo( this );

			var rect = this.getBoundingClientRect();
			var X = rect.left + window.pageXOffset;
			var Y = rect.top + window.pageYOffset;
			var elm = document.elementFromPoint( X, Y );
			alert(elm.id);
			console.log(elm.id);
			console.log(elm.children().id())
			console.log(X);
			console.log(Y);

		}
	})
}
