<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap Core CSS -->
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!-- Font Awesome CSS -->
<link href="../css/font-awesome.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="../css/animate.css" rel="stylesheet">



<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Lobster'
	rel='stylesheet' type='text/css'>





<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->





<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/fixedTableHeader.js"></script>
<!-- ドラッグアンドドロップとアコーディオン化 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="../js/dragdrop.js"></script>
<script src="../js/modal.js"></script>
<script src="../js/clickEvent.js"></script>

<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">

<script>
$(document).ready(function () {
	$('table').fixedTableHeader();
});

$(function(e) {
	$("#class-room").accordion();
	f_drag();
	f_drop( e );
	f_active( e );
	clickEvent( e );
	formCheck( e );
});

</script>


<title>コマ割画面</title>

</head>


<body>

	<!-- Start Logo Section -->
	<!-- ヘッダー部分 -->
	<section id="logo-section" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="logo text-center">
						<h1>Create Schedule</h1>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Logo Section -->
	<form action="/Sotsuken/divideUpdate" method="post">

		<div class="container-fluid">

			<!-- タブ -->
			<ul class="nav nav-pills nav-justified botom" id="weekTab">
				<li class="h4 active  bold" id="mon"><input type="hidden" name="mon"><a draggable="false">月</a></li>
				<li class="h4 bold" id="tue"><input type="hidden"><a draggable="false">火</a></li>
				<li class="h4 bold" id="wed"><input type="hidden"><a draggable="false">水</a></li>
				<li class="h4 bold" id="thu"><input type="hidden"><a draggable="false">木</a></li>
				<li class="h4 bold" id="fri"><input type="hidden"><a draggable="false">金</a></li>
			</ul>

			<!-- button -->
			<input type="hidden" id="dropFlag" value="false">
			<button type="submit" class="btn btn-primary btn-lg col-md-1 fix" id="submitBtn">登録</button>

			<!-- button end -->
			<!-- カレンダー部分 -->
			<div class="form-group col-md-1 col-md-offset-1"></div>

			<div class="col-md-10"></div>
		</div>
		<!-- カレンダーEND -->

		<!-- ドラッグ&ドロップ -->
		<div class="col-md-1 fix margin-top">
			<div id="class">
				<h1>room</h1>
				<div id="class-room">
					<h2 class="font">
						<a href="#" draggable="false">NCS</a>
					</h2>
					<div>
						<ul class="font ">
							<li class="select0"><a href="#8F" draggable="false">8F </a></li>
							<li class="select0"><a href="#7F" draggable="false">7F </a></li>
							<li class="select0"><a href="#6F" draggable="false">6F </a></li>
							<li class="select0"><a href="#5F" draggable="false">5F </a></li>
							<li class="select0"><a href="#4F" draggable="false">4F </a></li>
							<li class="select0"><a href="#3F" draggable="false">3F </a></li>
							<li class="select0"><a href="#2F" draggable="false">2F </a></li>

						</ul>
					</div>
					<h2 class="font">
						<a href="#" draggable="false">NMIC</a>
					</h2>
					<div>
						<ul class="font">
							<li class="select0"><a href="#M5F" draggable="false">5F</a></li>
							<li class="select0"><a href="#M4F" draggable="false">4F</a></li>
							<li class="select0"><a href="#M3F" draggable="false">3F</a></li>
							<li class="select0"><a href="#M2F" draggable="false">2F</a></li>
							<li class="select0"><a href="#M1F" draggable="false">1F</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>



		<div id="panel-change">
			<div class="container">
				<div class="table  col-md-6 ">
					<h1 class="text-center">NCS</h1>
					<table
						class="table table-striped table-bordered text-center teble-headerfixed;">
						<thead>

							<tr class="back-color4 white wide2 ">
								<th class="view-size font2 wide1 back-color4 white" id="8F">class</th>
								<th class="view-size font2 wide1 back-color4 white">1</th>
								<th class="view-size font2 wide1 back-color4 white">2</th>
								<th class="view-size font2 wide1 back-color4 white">3</th>
								<th class="view-size font2 wide1 back-color4 white">4</th>
							</tr>

						</thead>
						<tbody>
							<tr class="danger">
								<td class="view-size font2">803</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS803-1" name="020-1">${divideMap.NCS803[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS803-2" name="020-2">${divideMap.NCS803[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS803-3" name="020-3">${divideMap.NCS803[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS803-4" name="020-4">${divideMap.NCS803[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2" id="7F">802</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS802-1" name="019-1">${divideMap.NCS802[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS802-2" name="019-2">${divideMap.NCS802[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS802-3" name="019-3">${divideMap.NCS802[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS803-4" name="019-4">${divideMap.NCS802[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2">702</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS702-1" name="018-1">${divideMap.NCS702[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS702-2" name="018-2">${divideMap.NCS702[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS702-3" name="018-3">${divideMap.NCS702[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS702-4" name="018-4">${divideMap.NCS702[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2" id="6F">701</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS701-1" name="017-1">${divideMap.NCS701[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS701-2" name="017-2">${divideMap.NCS701[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS701-3" name="017-3">${divideMap.NCS701[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS701-4" name="017-4">${divideMap.NCS701[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2">604</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS604-1" name="016-1">${divideMap.NCS604[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS604-2" name="016-2">${divideMap.NCS604[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS604-3" name="016-3">${divideMap.NCS604[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS604-4" name="016-4">${divideMap.NCS604[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">603</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS603-1" name="015-1">${divideMap.NCS603[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS603-2" name="015-2">${divideMap.NCS603[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS603-3" name="015-3">${divideMap.NCS603[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS603-4" name="015-4">${divideMap.NCS603[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2" id="5F">601</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS601-1" name="014-1">${divideMap.NCS601[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS601-2" name="014-2">${divideMap.NCS601[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS601-3" name="014-3">${divideMap.NCS601[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS601-4" name="014-4">${divideMap.NCS601[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">504</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS504-1" name="013-1">${divideMap.NCS504[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS504-2" name="013-2">${divideMap.NCS504[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS504-3" name="013-3">${divideMap.NCS504[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS504-4" name="013-4">${divideMap.NCS504[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2">503</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS503-1" name="012-1">${divideMap.NCS503[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS503-2" name="012-2">${divideMap.NCS503[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS503-3" name="012-3">${divideMap.NCS503[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS503-4" name="012-4">${divideMap.NCS503[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">502</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS502-1" name="011-1">${divideMap.NCS502[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS502-2" name="011-2">${divideMap.NCS502[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS502-3" name="011-3">${divideMap.NCS502[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS502-4" name="011-4">${divideMap.NCS502[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2" id="4F">501</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS501-1" name="010-1">${divideMap.NCS501[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS501-2" name="010-2">${divideMap.NCS501[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS501-3" name="010-3">${divideMap.NCS501[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS501-4" name="010-4">${divideMap.NCS501[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">404</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS404-1" name="009-1">${divideMap.NCS404[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS404-2" name="009-2">${divideMap.NCS404[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS404-3" name="009-3">${divideMap.NCS404[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS404-4" name="009-4">${divideMap.NCS404[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2">403</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS403-1" name="008-1">${divideMap.NCS403[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS403-2" name="008-2">${divideMap.NCS403[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS403-3" name="008-3">${divideMap.NCS403[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS403-4" name="008-4">${divideMap.NCS403[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">402</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS402-1" name="007-1">${divideMap.NCS402[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS402-2" name="007-2">${divideMap.NCS402[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS402-3" name="007-3">${divideMap.NCS402[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS402-4" name="007-4">${divideMap.NCS402[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2" id="3F">401</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS401-1" name="006-1">${divideMap.NCS401[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS401-2" name="006-2">${divideMap.NCS401[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS401-3" name="006-3">${divideMap.NCS401[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS401-4" name="006-4">${divideMap.NCS401[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">304</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS304-1" name="005-1">${divideMap.NCS304[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS304-2" name="005-2">${divideMap.NCS304[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS304-3" name="005-3">${divideMap.NCS304[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS304-4" name="005-4">${divideMap.NCS304[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2">303</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS303-1" name="004-1">${divideMap.NCS303[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS303-2" name="004-2">${divideMap.NCS303[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS303-3" name="004-3">${divideMap.NCS303[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS303-4" name="004-4">${divideMap.NCS303[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">302</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS302-1" name="003-1">${divideMap.NCS302[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS302-2" name="003-2">${divideMap.NCS302[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS302-3" name="003-3">${divideMap.NCS302[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS302-4" name="003-4">${divideMap.NCS302[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="danger">
								<td class="view-size font2" id="2F">301</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS301-1" name="002-1">${divideMap.NCS301[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS301-2" name="002-2">${divideMap.NCS301[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS301-3" name="002-3">${divideMap.NCS301[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #f2dede;"
											id="NCS301-4" name="002-4">${divideMap.NCS301[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink1">
								<td class="view-size font2">201</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS201-1" name="001-1">${divideMap.NCS201[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS201-2" name="001-2">${divideMap.NCS201[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS201-3" name="001-3">${divideMap.NCS201[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
										<textarea cols="24" rows="3"
											style="overflow: auto; background-color: #9F615E;"
											id="NCS201-4" name="001-4">${divideMap.NCS201[3] }</textarea>
									</p>
								</td>
							</tr>
					</table>
				</div>
			</div>

			<h1 class="text-center">NMIC</h1>
			<div class="container">
				<div class="table col-md-6 ">
					<table
						class="table table-striped table-bordered text-center table-hover;">
						<thead>
							<tr class=" wide2">
								<th class="view-size font2 wide1 back-color4 white" id="M5F">class</th>
								<th class="view-size font2 wide1 back-color4 white">1</th>
								<th class="view-size font2 wide1 back-color4 white">2</th>
								<th class="view-size font2 wide1 back-color4 white">3</th>
								<th class="view-size font2 wide1 back-color4 white">4</th>
							</tr>

						</thead>
						<tbody>

							<tr class="pink2">
								<td class="view-size font2">503</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC503-1" name="036-1">${divideMap.NMIC503[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC503-2" name="036-2">${divideMap.NMIC503[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC503-3" name="036-3">${divideMap.NMIC503[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC503-4" name="036-4">${divideMap.NMIC503[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink3">
								<td class="view-size font2">502</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC502-1" name="035-1">${divideMap.NMIC502[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC502-2" name="035-2">${divideMap.NMIC502[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC502-3" name="035-3">${divideMap.NMIC502[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC502-4" name="035-4">${divideMap.NMIC502[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2" id="M4F">501</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC501-1" name="034-1">${divideMap.NMIC501[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC501-2" name="034-2">${divideMap.NMIC501[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC501-3" name="034-3">${divideMap.NMIC501[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC501-4" name="034-4">${divideMap.NMIC501[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">404</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC404-1" name="033-1">${divideMap.NMIC404[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC404-2" name="033-2">${divideMap.NMIC404[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC404-3" name="033-3">${divideMap.NMIC404[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC404-4" name="033-4">${divideMap.NMIC404[3] }</textarea>
									</p>
								</td>

							</tr>
							<tr class="pink2">
								<td class="view-size font2">403</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC403-1" name="032-1">${divideMap.NMIC403[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC403-2" name="032-2">${divideMap.NMIC403[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC403-3" name="032-3">${divideMap.NMIC403[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC403-4" name="032-4">${divideMap.NMIC403[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">402</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC402-1" name="031-1">${divideMap.NMIC402[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC402-2" name="031-2">${divideMap.NMIC402[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC402-3" name="031-3">${divideMap.NMIC402[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC402-4" name="031-4">${divideMap.NMIC402[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2" id="M3F">401</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC401-1" name="030-1">${divideMap.NMIC401[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC401-2" name="030-2">${divideMap.NMIC401[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC401-3" name="030-3">${divideMap.NMIC401[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC401-4" name="030-4">${divideMap.NMIC401[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">304</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC304-1" name="029-1">${divideMap.NMIC304[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC304-2" name="029-2">${divideMap.NMIC304[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC304-3" name="029-3">${divideMap.NMIC304[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC304-4" name="029-4">${divideMap.NMIC304[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2">303</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC303-1" name="028-1">${divideMap.NMIC303[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC303-2" name="028-2">${divideMap.NMIC303[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC303-3" name="028-3">${divideMap.NMIC303[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC303-4" name="028-4">${divideMap.NMIC303[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">302</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC302-1" name="027-1">${divideMap.NMIC302[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC302-2" name="027-2">${divideMap.NMIC302[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC302-3" name="027-3">${divideMap.NMIC302[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC302-4" name="027-4">${divideMap.NMIC302[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2" id="M2F">301</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC301-1" name="026-1">${divideMap.NMIC301[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC301-2" name="026-2">${divideMap.NMIC301[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC301-3" name="026-3">${divideMap.NMIC301[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC301-4" name="026-4">${divideMap.NMIC301[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">204</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC204-1" name="025-1">${divideMap.NMIC204[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC204-2" name="025-2">${divideMap.NMIC204[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC204-3" name="025-3">${divideMap.NMIC204[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC204-4" name="025-4">${divideMap.NMIC204[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2">203</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC203-1" name="024-1">${divideMap.NMIC203[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC203-2" name="024-2">${divideMap.NMIC203[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC203-3" name="024-3">${divideMap.NMIC203[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC203-4" name="024-4">${divideMap.NMIC203[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">202</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC202-1" name="023-1">${divideMap.NMIC202[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC202-2" name="023-2">${divideMap.NMIC202[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC202-3" name="023-3">${divideMap.NMIC202[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC202-4" name="023-4">${divideMap.NMIC202[3] }</textarea>
									</p>
								</td>
							</tr>
							<tr class="pink2">
								<td class="view-size font2" id="M1F">201</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC201-1" name="022-1">${divideMap.NMIC201[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC201-2" name="022-2">${divideMap.NMIC201[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC201-3" name="022-3">${divideMap.NMIC201[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC201-4" name="022-4">${divideMap.NMIC201[3] }</textarea>
									</p>
								</td>
							</tr>

							<tr class="pink3">
								<td class="view-size font2">101</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC101-1" name="021-1">${divideMap.NMIC101[0] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC101-2" name="021-2">${divideMap.NMIC101[1] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC101-3" name="021-3">${divideMap.NMIC101[2] }</textarea>
									</p>
								</td>

								<td class="size">
									<p class="size drop-target">
									<textarea cols="24" rows="3" style="overflow: auto; background-color: #9F615E;"
									id="NMIC101-4" name="021-4">${divideMap.NMIC101[3] }</textarea>
									</p>
								</td>
							</tr>
					</table>
				</div>
			</div>
		</div>

	</form>
	<!-- もーだる -->
	<div id="modal1" class="modal fade ">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header back-color">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title white text-center">warning!!!</h3>
				</div>
				<div class="modal-body text-center font1">
					<h3>登録されていません</h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">close</button>
				</div>
			</div>
		</div>
	</div>

	<div id="modal2"class="modal fade ">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header back-color">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h3 class="modal-title white text-center">info</h3>
				</div>
				<div class="modal-body text-center font1">
					<h3>登録されました</h3>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-primary" data-dismiss="modal">close</button>
				</div>
			</div>
		</div>
	</div>
	<!-- もーだる終了 -->
</body>
</html>