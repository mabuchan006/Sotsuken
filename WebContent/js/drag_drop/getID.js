document.mousemove = function( e ) {
	//座標取得
	var rect = this.getBoundingClientRect();
	//スクロールの誤差考慮
	var X = rect.left + window.pageXOffset;
	var Y = rect.top + window.pageYOffset;
	//座標を指定して要素を取得
	var elm = document.elementFromPoint( X, Y );
	console.log(rect.left);
	console.log(rect.top);
	console.log(rect.right);
	console.log(rect.bottom);
	console.log(X);
	console.log(Y);
	console.log(elm);
}