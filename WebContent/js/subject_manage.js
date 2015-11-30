$('[name-grade1]').change(function(){
	//選択されているvalue属性を取り出す
	var val = $('name-grade1').val();
	//選択されているtext属性を取り出す
	var txt = $('name-grade1').text();
	$('.grade_push').append('<c:forEach var="rs" items="${classMap}">');


});