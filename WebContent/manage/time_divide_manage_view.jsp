<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html >
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



<!-- Custom Fonts -->
<link href='http://fonts.googleapis.com/css?family=Lobster'
	rel='stylesheet' type='text/css'>





<!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->





<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>

<!-- ドラッグアンドドロップとアコーディオン化 -->
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="../js/dragdrop.js"></script>
<script src="../js/modal.js"></script>
<script src="../js/week.js"></script>

<!-- Custom CSS -->
<link href="../css/style.css" rel="stylesheet">

<script>
	$(function(e) {
		$("#class-room").accordion();
		f_drag();
		f_drop(e);
		f_active(e);
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
				<li class="h4 active  bold" id="mon"><input type="hidden"
					name="mon"><a href="#test2" draggable="false">月</a></li>
				<li class="h4 bold" id="tue"><input type="hidden"><a
					href="#test3" draggable="false">火</a></li>
				<li class="h4 bold" id="wed"><input type="hidden"><a
					href="#test4" draggable="false">水</a></li>
				<li class="h4 bold" id="thu"><input type="hidden"><a
					href="#test5" draggable="false">木</a></li>
				<li class="h4 bold" id="fri"><input type="hidden"><a
					href="#test6" draggable="false">金</a></li>
			</ul>

			<!-- button -->

			<button type="submit" class="btn btn-primary btn-lg col-md-1 fix">
				登録</button>



			<!-- button end -->
			<!-- カレンダー部分 -->
			<div class="form-group col-md-1 col-md-offset-1"></div>

			<div class="col-md-10"></div>
		</div>
		<!-- カレンダーEND -->




		<!-- ドラッグ&ドロップ -->
		<div class="col-md-1 fix margin-top">
			<div id="class">
				<h1>class</h1>
				<div id="class-room">
					<h2 class="font">
						<a href="#" draggable="false">NCS</a>
					</h2>
					<div>
						<ul class="font">
							<li><a href="#8F">8F</a></li>
							<li><a href="#7F">7F</a></li>
							<li><a href="#6F">6F</a></li>
							<li><a href="#5F">5F</a></li>
							<li><a href="#4F">4F</a></li>
							<li><a href="#3F">3F</a></li>
							<li><a href="#2F">2F</a></li>

						</ul>
					</div>
					<h2 class="font">
						<a href="#" draggable="false">NMIC</a>
					</h2>
					<div>
						<ul class="font">
							<li><a href="#M5F">5F</a></li>
							<li><a href="#M4F">4F</a></li>
							<li><a href="#M3F">3F</a></li>
							<li><a href="#M2F">2F</a></li>
							<li><a href="#M1F">1F</a></li>


						</ul>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="table  col-md-6 ">
				<h1 class="text-center">NCS</h1>
				<table class="table table-striped table-bordered text-center ;">
					<thead>

					</thead>
					<tbody>
						<tr class="danger">
							<td class="size" id="8F">803</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">802</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>


						<tr class="danger">
							<td class="size" id="7F">702</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">701</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size" id="6F">604</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">603</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">601</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size" id="5F">504</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">503</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">502</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">501</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size" id="4F">404</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">403</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">402</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">401</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size" id="3F">304</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">303</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size">302</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="danger">
							<td class="size">301</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="006-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="006-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="006-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="006-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="007-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="007-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="007-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="007-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="008-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="008-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="008-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="008-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="009-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="009-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="009-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="009-4">${divideMap.NCS4[3] }</textarea>
								</p>
							</td>
						</tr>



						<tr class="pink1">
							<td class="size" id="2F">201</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-1" name="010-1">${divideMap.NCS1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-2" name="010-2">${divideMap.NCS1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-3" name="010-3">${divideMap.NCS1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS1-4" name="010-4">${divideMap.NCS1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-1" name="011-1">${divideMap.NCS2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-2" name="011-2">${divideMap.NCS2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-3" name="011-3">${divideMap.NCS2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS2-4" name="011-4">${divideMap.NCS2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-1" name="012-1">${divideMap.NCS3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-2" name="012-2">${divideMap.NCS3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-3" name="012-3">${divideMap.NCS3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS3-4" name="012-4">${divideMap.NCS3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-1" name="013-1">${divideMap.NCS4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-2" name="013-2">${divideMap.NCS4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-3" name="013-3">${divideMap.NCS4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NCS4-4" name="013-4">${divideMap.NCS4[3] }</textarea>
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

					</thead>
					<tbody>

						<tr class="pink2">
							<td class="size" id="M5F">503</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="030-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="030-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="030-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="030-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="031-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="031-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="031-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="031-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="032-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="032-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="032-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="032-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="033-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="033-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="033-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="033-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink3">
							<td class="size">502</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">501</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size" id="M4F">404</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">403</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size">402</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">401</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size" id="M3F">304</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">303</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size">302</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">301</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size" id="M2F">204</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">203</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size">202</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
						<tr class="pink2">
							<td class="size">201</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="022-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="022-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="022-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="022-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="023-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="023-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="023-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="023-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="024-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="024-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="024-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="024-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="025-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="025-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="025-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="025-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>

						<tr class="pink3">
							<td class="size" id="M1F">101</td>
							<td class="size">1</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-1" name="026-1">${divideMap.NMIC1[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-2" name="026-2">${divideMap.NMIC1[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-3" name="026-3">${divideMap.NMIC1[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC1-4" name="026-4">${divideMap.NMIC1[3] }</textarea>
								</p>
							</td>
							<td class="size">2</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-1" name="027-1">${divideMap.NMIC2[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-2" name="027-2">${divideMap.NMIC2[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-3" name="027-3">${divideMap.NMIC2[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC2-4" name="027-4">${divideMap.NMIC2[3] }</textarea>
								</p>
							</td>
							<td class="size">3</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-1" name="028-1">${divideMap.NMIC3[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-2" name="028-2">${divideMap.NMIC3[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-3" name="028-3">${divideMap.NMIC3[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC3-4" name="028-4">${divideMap.NMIC3[3] }</textarea>
								</p>
							</td>
							<td class="size">4</td>
							<td class="size">
								<p class="size drop-target">
									1
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-1" name="029-1">${divideMap.NMIC4[0] }</textarea>
								</p>
								<p class="size drop-target">
									2
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-2" name="029-2">${divideMap.NMIC4[1] }</textarea>
								</p>
								<p class="size drop-target">
									3
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-3" name="029-3">${divideMap.NMIC4[2] }</textarea>
								</p>
								<p class="size drop-target">
									4
									<textarea cols="6" rows="1" style="overflow: auto;"
										id="NMIC4-4" name="029-4">${divideMap.NMIC4[3] }</textarea>
								</p>
							</td>
						</tr>
				</table>
			</div>
		</div>
	</form>

</body>
</html>