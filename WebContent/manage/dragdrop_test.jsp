<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ja">
<head>
<meta charset="utf-8" />
<title>Drag &amp; DropTest</title>

<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>

<!-- ドラッグアンドドロップのJS -->
<script type="text/javascript" src="../js/dragdrop.js"></script>

<style>
h1 { padding: .2em; margin: 0; font-size:14px; }
#class { float:left; width: 15%; margin-right: 2em; }
#divide { width: 200px; float: left; margin-top: 1em; }
/* style the list to maximize the droppable hitarea */
#divide td { margin: 0; padding: 1em 0 1em 3em;}
#divide td { border: 1px #000 solid; }
</style>

<script>
$(function( e ){
	$( "#class-room" ).accordion();
	f_drag();
	f_drop( e );
});
</script>

</head>
<body>
<div id="class">
	<h1 class="ui-widget-header">クラス</h1>
	<div id="class-room">
		<h2><a href="#" draggable="false">R1</a></h2>
		<div>
			<ul>
				<li>R1A1</li>
				<li>R1A2</li>
				<li>R1A3</li>
				<li>R1A4</li>
				<li>R1A5</li>
			</ul>
		</div>
		<h2><a href="#" draggable="false">R2</a></h2>
		<div>
			<ul>
				<li>R2A1</li>
				<li>R2A2</li>
				<li>R2A3</li>
				<li>R2A4</li>
				<li>R2A5</li>
			</ul>
		</div>
		<h2><a href="#" draggable="false">R3</a></h2>
		<div>
			<ul>
				<li>R3A1</li>
				<li>R3A2</li>
				<li>R3A3</li>
				<li>R3A4</li>
				<li>R3A5</li>
			</ul>
		</div>
		<h2><a href="#" draggable="false">R4</a></h2>
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
				<td>
					<div class="drop-target" id="NCS802-1-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802-1"></textarea>
					</div><br>
					<div class="drop-target" id="NCS802-2-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802-2"></textarea>
					</div><br>
					<div class="drop-target" id="NCS802-3-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802-3"></textarea>
					</div><br>
					<div class="drop-target" id="NCS802-4-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802-4"></textarea>
					</div><br>
				</td>
		</table>
</div>
</body>
</html>