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
<script type="text/javascript" src="../js/drag_drop/f_drag.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_1.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_2.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_3.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_4.js"></script>

<script type="text/javascript" src="../js/drag_drop/NCS8/NCS803_1.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS701_1.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS702_1.js"></script>

<script type="text/javascript" src="../js/drag_drop/comma.js"></script>

<style>
h1 { padding: .2em; margin: 0; font-size:14px; }
#class { float:left; width: 15%; margin-right: 2em; }
#divide { width: 200px; float: left; margin-top: 1em; }
/* style the list to maximize the droppable hitarea */
#divide td { margin: 0; padding: 1em 0 1em 3em;}
#divide td { border: 1px #000 solid; }
</style>

<script>
$(function(){
	$( "#class-grade" ).accordion();
	f_drag();
	NCS802_1_hold();
	NCS802_1_drop();
	NCS802_2_hold();
	NCS802_2_drop();
	NCS802_3_hold();
	NCS802_3_drop();
	NCS802_4_hold();
	NCS802_4_drop();

	NCS803_1_hold();
	NCS803_1_drop();
	NCS701_1_hold();
	NCS701_1_drop();
	NCS702_1_hold();
	NCS702_1_drop();
});
</script>

</head>
<body>
<input type="hidden" id="holdNCS802_1" value="">
<input type="hidden" id="holdNCS802_2" value="">
<input type="hidden" id="holdNCS802_3" value="">
<input type="hidden" id="holdNCS802_4" value="">

<input type="hidden" id="holdNCS803_1" value="">
<input type="hidden" id="holdNCS701_1" value="">
<input type="hidden" id="holdNCS702_1" value="">

<div id="class">
	<h1 class="ui-widget-header">クラス</h1>
	<div id="class-grade">
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
					<div id="NCS802_1-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802_1"></textarea>
					</div><br>
					<div id="NCS802_2-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802_2"></textarea>
					</div><br>
					<div id="NCS802_3-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802_3"></textarea>
					</div><br>
					<div id="NCS802_4-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS802_4"></textarea>
					</div><br>
				</td>
				<th>803</th>
				<td>
					<div id="NCS803_1-drop">
						<textarea cols="5" rows="2" style="overflow:auto;" id="NCS803_1"></textarea>
					</div>
				</td>
			</tr>
			<tr>
				<th>701</th>
				<td>
					<div id="NCS701_1-drop">
						<textarea cols="5" rows="2" style="overflow: auto;" id="NCS701_1"></textarea>
					</div>
				</td>
				<th>702</th>
				<td>
					<div id="NCS702_1-drop">
						<textarea cols="5" rows="2" style="overflow: auto;" id="NCS702_1"></textarea>
					</div>
				</td>
			</tr>
		</table>
</div>
</body>
</html>