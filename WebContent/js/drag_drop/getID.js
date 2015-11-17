document.mousemove = function( e ) {
	var rect = this.getBoundingClientRect();
	var X = rect.left + window.pageXOffset;
	var Y = rect.top + window.pageYOffset;
	var elm = document.elementFromPoint( X, Y );
	console.log(rect.left);
	console.log(rect.top);
	console.log(rect.right);
	console.log(rect.bottom);
	console.log(X);
	console.log(Y);
	console.log(elm);
}