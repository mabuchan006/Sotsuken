//timeTableのinfo1のtdへ連番idを付与するメソッド
//tdの数だけ連番を与える
//$('#timeTable info1').children().each(function (i) {
//		$(this).attr( 'id' , 'cell' + (i+1) );
//});

//tdをクリックしたら、その要素の情報がele内に格納され、ポップアップが表示される
$('#timeTable info1 td').on( 'click' , function() {

	//ele = <td id="cell1">授業</td>
	//var ele = $(this)[1];

	//cellに指定したidが格納
	//var cell = ele.td.id;

	//ele = <td id="cell1" class="btn btn-lg btn-danger" data-toggle="popover" title="持ち物" data-content="教科書">授業</td>
	$('#cel1').after( ' class="btn btn-lg btn-danger" data-toggle="popover" title="持ち物" data-content="教科書" ' );

	//取得した子要素にデータを加える
	//$(cell).prepend( ' class="btn btn-lg btn-danger" data-toggle="popover" title="持ち物" data-content="教科書" ');

	$('#cell1').popover();

} );