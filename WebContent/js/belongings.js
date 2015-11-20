//infosクラスのtdの数だけfunctionをループ実行
$('.infos td').each(function(i) {

	//tdにクラス名を設定
	$(this).addClass( 'cell' + i );

});

//選んだ授業をクリックしたら、その授業の持ち物をポップアップで表示するメソッド
$('.one').click(function() {

	//子要素の取得(この場合はtd)
	var ele = $(this).children('td').get(0);

	//取得した子要素にデータを加える
	$(ele).prepend( ' data-toggle="popover" title="持ち物" data-content="教科書" ');

	//
	ele.id.popover();

} );