<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap Core CSS -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/animate.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">

<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

<!-- Test_css -->
<!-- <link href='../css/test.css' rel='stylesheet' type='text/css'>  -->


<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="/Sotsuken/js/jquery.appear.js"></script>
<script src="/Sotsuken/js/belongings.js"></script>

<!-- 印刷用js 下2つ-->
<script src="../js/jPrintArea.js"></script>
<script src="../js/print.js"></script>

<!--[if lt IE 9]>
<script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
<script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

<title>タイムテーブル管理</title>
</head>
<body>

<!-- タグ -->
<ul class="nav nav-tabs">
<li><a href="#tab1" data-toggle="tab">管理者メニュー</a></li>
<li><a href="#tab2" data-toggle="tab">時間割管理</a></li>
<li><a href="#tab2" data-toggle="tab">講師管理</a></li>
<li class="active"><a href="#tab2" data-toggle="tab">科目管理</a></li>
<li><a href="#tab2" data-toggle="tab">クラス管理</a></li>
<li><a href="#tab2" data-toggle="tab">コマ割管理</a></li>
</ul>
<!-- タグ終了 -->

<!-- Start Logo Section --><!-- ヘッダー部分 -->
<section id="logo-section" class="text-center">
<div class="container">
<div class="row">
<div class="col-md-12">
<div class="logo text-center">
<h1>R4A1</h1>

</div>
</div>
</div>
</div>
</section>
<!-- End Logo Section -->

<div  class="container">
<div class="table-responsive">

<!-- 印刷ボタン -->
<input type="button" id="btn_print" value="印刷テスト">

<!-- 印刷エリア指定id printareaで囲んだ範囲で可能 -->
<div id="printarea">

<table class="table table-striped table-bordered text-center table-hover;"
	>
<thead>
</thead>
		<tbody>

			<tr class="purple2">
				<th colspan="15">10月</th>
			</tr>


			<tr class="purple1">

				<td></td>
				<td>10/20(火)　</td>
				<td>10/21(水)　</td>
				<td>10/22(木)　</td>
				<td>10/23(金)　</td>
				<td>10/24(土)　</td>
				<td>10/25(日)　</td>
				<td>10/26(月)　</td>
				<td>10/27(火)　</td>
				<td>10/28(水)　</td>
				<td>10/29(木)　</td>
				<td>10/30(金)　</td>
				<td>10/31(土)　</td>
			</tr>

			<tr class="info">
				<th rowspan=3>1</th>
				<td id="cell1"
					data-toggle="popover" data-placement="right"
					data-content="教科書" title="持ち物">授業</td>
				<td id="cell2"
					data-toggle="popover" data-placement="right"
					data-content="教科書" title="持ち物">授業</td>
				<td id="cell3"
					data-toggle="popover" data-placement="right"
					data-content="教科書" title="持ち物">授業</td>
				<td id="cell4"
					data-toggle="popover" data-placement="right"
					data-content="教科書" title="持ち物">授業</td>
				<td id="cell5"
					data-toggle="popover" data-placement="right"
					data-content="教科書" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
				<td data-toggle="popover" title="持ち物">授業</td>
			</tr>

			<tr class="info">
				<td>教室</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="info">
				<td>講師</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="success">
				<th rowspan=3>2</th>
				<td>授業</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="success">
				<td>教室</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="success">
				<td>講師</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<th rowspan=3>3</th>
				<td>授業</td>
				<td></td>
				<td>OS基礎論</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<td>教室</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<td>講師</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<th rowspan=3>4</th>
				<td>授業</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<td>教室</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<td>講師</td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
			</tbody>

		</table>
	<!-- printArea -->
	</div>
  </div>





</div>




</body>
</html>