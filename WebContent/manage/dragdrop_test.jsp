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
#products { float:left; width: 20%; margin-right: 2em; }
#divide { width: 200px; float: left; margin-top: 1em; }
/* style the list to maximize the droppable hitarea */
#divide ul { margin: 0; padding: 1em 0 1em 3em; list-style-type: none; }
#divide ul { border: 1px #000 solid; }
</style>
<script>
$(function() {
	$( "#catalog" ).accordion();
	$( "#catalog li" ).draggable({
		appendTo: "body",
		revert: "invalid",
		//containment: "document",
		helper: "clone"
	});
	$( "#divide ul" ).droppable({
		activeClass: "ui-state-default",
		hoverClass: "ui-state-hover",
		accept: ":not(.ui-sortable-helper)",
		drop: function( event, ui ) {
			$( this ).find( ".placeholder" ).remove();
			$( "<li></li>" ).text( ui.draggable.text() ).appendTo( this );
		}
	}).sortable({
		items: "li:not(.placeholder)",
		sort: function() {
			// gets added unintentionally by droppable interacting with sortable
			// using connectWithSortable fixes this, but doesn't allow you to customize active/hoverClass options
			$( this ).removeClass( "ui-state-default" );
		}
	});
	/**
	$(".placeholder").click(function(){
		$( this ).slideUp();
	});
	**/
});
</script>
</head>
<body>
<div id="products">
	<h1 class="ui-widget-header">クラス</h1>
	<div id="catalog">
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
				<td>801</td>
				<td width="100px" height="50px">
					<ul>
						<li class="placeholder"></li>
					</ul>
					<ul>
						<li class="placeholder"></li>
					</ul>
					<ul>
						<li class="placeholder"></li>
					</ul>
					<ul>
						<li class="placeholder"></li>
					</ul>
				</td>
			</tr>
		</table>
</div>
</body>
</html>