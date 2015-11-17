var repComma, str, parentElm, childElm, rect, X, Y;

//ドロップ
function f_drop( e ) {

	$( ".drop-target" ).droppable({
		drop: function( e, ui ) {
			//座標取得
			rect = this.getBoundingClientRect();
			//スクロールの誤差考慮
			X = rect.left + window.pageXOffset;
			Y = rect.top + window.pageYOffset;
			//座標を指定して要素を取得(親)
			parentElm = document.elementFromPoint( X, Y );
			//子要素の取得
			childElm = parentElm.children[0];

			//テキストボックスの中身とドロップされたテキストを入れる
			if( childElm != null){
				str = ( childElm.value + ui.draggable.text() );
				//一度カンマを取り除く
				repComma = str.replace(/,/g, "");
				//下４桁ずつカンマ区切りにしていく
				while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
					repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
				}
				//テキストボックスに追加
				childElm.value = repComma;
			} else {
				childElm.value = ui.draggable.text();
			}
		}
	})
}
