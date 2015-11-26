//tdの数だけ連番を与える
//$('info ').children().each(function (i) {
//	$(this).attr( 'id' , 'cell' + (i+1) );
//});
//
////tdをクリックしたら、その要素の情報がele内に格納され、ポップアップが表示される
//$('info  td').on('click' , function() {
//
//	//ele = <td id="cell1">授業</td>
//	var ele = $(this.id);
//
//	$(ele).popover();
//
//} );

$(function() {
	//tdの数だけ連番を与える
	$('info ').children().each(function (i) {
		$(this).attr( 'id' , 'cell' + (i+1) );
	});
	//シングルクォーテーションの中に対応するid名を指定 ex→('#cell1')
	$('#cell').popover();
})