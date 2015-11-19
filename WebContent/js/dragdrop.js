var repComma = "", str = "", ele = "";

//ドラッグ
function f_drag( e ) {
	$( "#class-room li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		helper: "clone",
		cursor: "pointer"
	})//draggable
}//f_drag

//ドロップ
function f_drop( e ) {
	$( ".drag-target" ).droppable({
		drop: function( e, ui ) {

			//子要素の取得
			ele = $(this).children("textarea").get(0);
			console.log(ele);
			//テキストボックスの中身とドロップされたテキストを入れる
			str = ( ele.value + ui.draggable.text() );

			//一度カンマを取り除く
			repComma = str.replace(/,/g, "");

			//下４桁ずつカンマ区切りにしていく
			while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
				repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
			}//while

			//テキストボックスに追加
			ele.value = repComma;
			console.log(ele.value);

		}//drop
	})//droppable
}//f_drop

/**
var repComma, str, parentElm, childElm, rect, X, Y;

//ドラッグ
function f_drag( e ) {
	$( "#class-room li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		helper: "clone",
		cursor: "pointer"
	})//draggable
}//f_drag

//ドロップ
function f_drop( e ) {
	$( ".drop-target" ).droppable({
		drop: function( e, ui ) {
			console.log("1");
			//座標取得
			rect = this.getBoundingClientRect();
			//スクロールの誤差考慮
			X = rect.left + pageXOffset;
			Y = rect.top + pageYOffset;
			//座標を指定して親要素を取得
			parentElm = document.elementFromPoint( X, Y );
			//子要素の取得
			childElm = parentElm.children[0];
			console.log("2");
			//テキストボックスの中身とドロップされたテキストを入れる
			if( childElm.value != null){
				console.log("3");
				str = ( childElm.value + ui.draggable.text() );
				//一度カンマを取り除く
				repComma = str.replace(/,/g, "");

				//下４桁ずつカンマ区切りにしていく
				while( repComma != repComma.replace( /(\w+)(\w{4})/, "$1,$2" ) ) {
					repComma = repComma.replace( /(\w+)(\w{4})/, "$1,$2" )
				}//while
				console.log("4");
				//テキストボックスに追加
				childElm.value = repComma;
				console.log(childElm.value);
			} else {
				console.log("5");
				childElm.value = ui.draggable.text();
				console.log(childElm.value);
			}//if
		}//drop
	})//droppable
}//f_drop
**/
