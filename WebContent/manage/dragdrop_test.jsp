<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8" />
<title>Drag &amp; DropTest</title>
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<link rel="stylesheet" href="/resources/demos/style.css" />
<style>
h1 { padding: .2em; margin: 0; font-size:14px; }
#class { float:left; width: 10%; margin-right: 2em; }
#divide { width: 200px; float: left; margin-top: 1em; }
/* style the list to maximize the droppable hitarea */
#divide td { margin: 0; padding: 1em 0 1em 3em;}
#divide td { border: 1px #000 solid; }
</style>
<script>
var commaFlag = new boolean();
if($("#hold").val()=="true"){
	commaFlag=true;
};
</script>
<script>
$(function() {
	$( "#class-room" ).accordion();
	$( "#class-room li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		//containment: "document",
		helper: "clone"
	});
	$( "#divide td" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( event, ui ) {
			if( commaFlag ) {
				$( ".class-divide"  ).text( $( ".class-divide"  ).text() + "," + ui.draggable.text() ).appendTo( this );
			} else {
				$( ".class-divide" ).text( ui.draggable.text() ).appendTo( this );
				commaFlag = true;
				$("#hold").val(commaFlag);
			}
		}
	});
});
</script>
</head>
<body>
<input type="hidden" id="hold" value="">
<div id="class">
	<h1 class="ui-widget-header">クラス</h1>
	<div id="class-room">
		<h2><a href="#">R1</a></h2>
		<div>
			<ul>
				<li>R1A1</li>
				<li>R1A2</li>
				<li>R1A3</li>
				<li>R1A4</li>
				<li>R1A5</li>
			</ul>
		</div>
		<h2><a href="#">R2</a></h2>
		<div>
			<ul>
				<li>R2A1</li>
				<li>R2A2</li>
				<li>R2A3</li>
				<li>R2A4</li>
				<li>R2A5</li>
			</ul>
		</div>
		<h2><a href="#">R3</a></h2>
		<div>
			<ul>
				<li>R3A1</li>
				<li>R3A2</li>
				<li>R3A3</li>
				<li>R3A4</li>
				<li>R3A5</li>
			</ul>
		</div>
		<h2><a href="#">R4</a></h2>
		<div>
			<ul>
				<li>R4A1</li>
				<li>R4A2</li>
				<li>R4A3</li>
				<li>R4A4</li>
				<li>R4A5</li>
			</ul>
		</div>
	</div>
</div>
<div id="divide">
	<table border="1">
			<tr>
				<th>802</th>
				<td><textarea cols="5" rows="2" style="overflow:auto;" class="class-divide"></textarea></td>
			</tr>
		</table>
</div>
</body>
</html>