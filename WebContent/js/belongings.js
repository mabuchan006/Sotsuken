//timeTableのinfo1のtdへ連番意idを付与するメソッド
$('#timeTable info1 td').each(function (i) {
	$(this).attr( 'id' , 'cell' + (i+1) );
	//持ち物表示コード
	$(this).prepend( ' data-toggle="popover" title="持ち物" data-content="教科書" ');
});

//$(function() {
//	$('#cell001').popover();
//})

//クラスoneをクリックしたら、その要素の情報がele内に格納される
$('#timeTable info1 one').live( 'click' , function() {

	//ele = <div class="one"><td id="cell01">授業</td><div>
	var $ele = $(this)[0];
	//cell = cell01
	var $cell = ele.td.id;
	//取得した子要素にデータを加える
	$($cell).prepend( ' class="btn btn-lg btn-danger" data-toggle="popover" title="持ち物" data-content="教科書" ');

	$cell.popover();

} );
