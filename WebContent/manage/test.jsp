<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script src="../js/belongings.js"></script>

<!-- テスト用css  関連されない問題点①-->
<link href="../css/test.css" rel="stylesheet" type="text/css">

<title>テスト</title>
</head>
<body>

<form>
	<input type="button" id="fade_btn" value="test"><br/><br/>

		<table class="tb">
			<!-- 1行目：授業 -->
			<tr class="info" >
				<td>コンサイ</td>
			</tr>
			<!-- 2行目：持ち物 -->
			<tr class="sld">
				<td style="padding:0px">
					<div id="sldCell100" style="padding:1px; height:22px;">スライド対象セル</div>
				</td>
			</tr>
			<!-- 3行目：教室 -->
			<tr class="info">
				<td >
					教室
				</td>
			</tr>
			<!-- 4行目：講師 -->
			<tr class="info">
				<td >
					講師
				</td>
			</tr>
		</table>

</form>

</body>
</html>