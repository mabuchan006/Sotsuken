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
				編集画面へ</button>



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
							<li class="select0"><a href="#8F">8F　　　　　</a></li>
							<li class="select0"><a href="#7F">7F　　　　　</a></li>
							<li class="select0"><a href="#6F">6F　　　　　</a></li>
							<li class="select0"><a href="#5F">5F　　　　　</a></li>
							<li class="select0"><a href="#4F">4F　　　　　</a></li>
							<li class="select0"><a href="#3F">3F　　　　　</a></li>
							<li class="select0"><a href="#2F">2F　　　　　</a></li>

						</ul>
					</div>
					<h2 class="font">
						<a href="#" draggable="false">NMIC</a>
					</h2>
					<div>
						<ul class="font">
							<li class="select0"><a href="#M5F">5F　　　　　</a></li>
							<li class="select0"><a href="#M4F">4F　　　　　</a></li>
							<li class="select0"><a href="#M3F">3F　　　　　</a></li>
							<li class="select0"><a href="#M2F">2F　　　　　</a></li>
							<li class="select0"><a href="#M1F">1F　　　　　</a></li>


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
							<td class="view-size font2" id="8F">803</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS803.p1[0] }"><p class="view-size font2">${viewMap.NCS803.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p1[1] }"><p class="view-size font2">${viewMap.NCS803.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p1[2] }"><p class="view-size font2">${viewMap.NCS803.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p1[3] }"><p class="view-size font2">${viewMap.NCS803.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p1[4] }"><p class="view-size font2">${viewMap.NCS803.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS803.p2[0] }"><p class="view-size font2">${viewMap.NCS803.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p2[1] }"><p class="view-size font2">${viewMap.NCS803.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p2[2] }"><p class="view-size font2">${viewMap.NCS803.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p2[3] }"><p class="view-size font2">${viewMap.NCS803.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p2[4] }"><p class="view-size font2">${viewMap.NCS803.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS803.p3[0] }"><p class="view-size font2">${viewMap.NCS803.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p3[1] }"><p class="view-size font2">${viewMap.NCS803.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p3[2] }"><p class="view-size font2">${viewMap.NCS803.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p3[3] }"><p class="view-size font2">${viewMap.NCS803.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p3[4] }"><p class="view-size font2">${viewMap.NCS803.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS803.p4[0] }"><p class="view-size font2">${viewMap.NCS803.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p4[1] }"><p class="view-size font2">${viewMap.NCS803.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p4[2] }"><p class="view-size font2">${viewMap.NCS803.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p4[3] }"><p class="view-size font2">${viewMap.NCS803.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS803.p4[4] }"><p class="view-size font2">${viewMap.NCS803.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">802</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS802.p1[0] }"><p class="view-size font2">${viewMap.NCS802.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p1[1] }"><p class="view-size font2">${viewMap.NCS802.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p1[2] }"><p class="view-size font2">${viewMap.NCS802.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p1[3] }"><p class="view-size font2">${viewMap.NCS802.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p1[4] }"><p class="view-size font2">${viewMap.NCS802.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS802.p2[0] }"><p class="view-size font2">${viewMap.NCS802.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p2[1] }"><p class="view-size font2">${viewMap.NCS802.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p2[2] }"><p class="view-size font2">${viewMap.NCS802.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p2[3] }"><p class="view-size font2">${viewMap.NCS802.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p2[4] }"><p class="view-size font2">${viewMap.NCS802.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS802.p3[0] }"><p class="view-size font2">${viewMap.NCS802.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p3[1] }"><p class="view-size font2">${viewMap.NCS802.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p3[2] }"><p class="view-size font2">${viewMap.NCS802.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p3[3] }"><p class="view-size font2">${viewMap.NCS802.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p3[4] }"><p class="view-size font2">${viewMap.NCS802.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS802.p4[0] }"><p class="view-size font2">${viewMap.NCS802.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p4[1] }"><p class="view-size font2">${viewMap.NCS802.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p4[2] }"><p class="view-size font2">${viewMap.NCS802.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p4[3] }"><p class="view-size font2">${viewMap.NCS802.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS802.p4[4] }"><p class="view-size font2">${viewMap.NCS802.p4[4]}</p></c:if>
							</td>
						</tr>


						<tr class="danger">
							<td class="view-size font2" id="7F">702</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS702.p1[0] }"><p class="view-size font2">${viewMap.NCS702.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p1[1] }"><p class="view-size font2">${viewMap.NCS702.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p1[2] }"><p class="view-size font2">${viewMap.NCS702.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p1[3] }"><p class="view-size font2">${viewMap.NCS702.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p1[4] }"><p class="view-size font2">${viewMap.NCS702.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS702.p2[0] }"><p class="view-size font2">${viewMap.NCS702.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p2[1] }"><p class="view-size font2">${viewMap.NCS702.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p2[2] }"><p class="view-size font2">${viewMap.NCS702.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p2[3] }"><p class="view-size font2">${viewMap.NCS702.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p2[4] }"><p class="view-size font2">${viewMap.NCS702.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS702.p3[0] }"><p class="view-size font2">${viewMap.NCS702.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p3[1] }"><p class="view-size font2">${viewMap.NCS702.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p3[2] }"><p class="view-size font2">${viewMap.NCS702.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p3[3] }"><p class="view-size font2">${viewMap.NCS702.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p3[4] }"><p class="view-size font2">${viewMap.NCS702.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS702.p4[0] }"><p class="view-size font2">${viewMap.NCS702.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p4[1] }"><p class="view-size font2">${viewMap.NCS702.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p4[2] }"><p class="view-size font2">${viewMap.NCS702.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p4[3] }"><p class="view-size font2">${viewMap.NCS702.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS702.p4[4] }"><p class="view-size font2">${viewMap.NCS702.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">701</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS701.p1[0] }"><p class="view-size font2">${viewMap.NCS701.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p1[1] }"><p class="view-size font2">${viewMap.NCS701.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p1[2] }"><p class="view-size font2">${viewMap.NCS701.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p1[3] }"><p class="view-size font2">${viewMap.NCS701.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p1[4] }"><p class="view-size font2">${viewMap.NCS701.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS701.p2[0] }"><p class="view-size font2">${viewMap.NCS701.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p2[1] }"><p class="view-size font2">${viewMap.NCS701.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p2[2] }"><p class="view-size font2">${viewMap.NCS701.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p2[3] }"><p class="view-size font2">${viewMap.NCS701.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p2[4] }"><p class="view-size font2">${viewMap.NCS701.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS701.p3[0] }"><p class="view-size font2">${viewMap.NCS701.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p3[1] }"><p class="view-size font2">${viewMap.NCS701.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p3[2] }"><p class="view-size font2">${viewMap.NCS701.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p3[3] }"><p class="view-size font2">${viewMap.NCS701.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p3[4] }"><p class="view-size font2">${viewMap.NCS701.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS701.p4[0] }"><p class="view-size font2">${viewMap.NCS701.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p4[1] }"><p class="view-size font2">${viewMap.NCS701.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p4[2] }"><p class="view-size font2">${viewMap.NCS701.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p4[3] }"><p class="view-size font2">${viewMap.NCS701.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS701.p4[4] }"><p class="view-size font2">${viewMap.NCS701.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2" id="6F">604</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS604.p1[0] }"><p class="view-size font2">${viewMap.NCS604.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p1[1] }"><p class="view-size font2">${viewMap.NCS604.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p1[2] }"><p class="view-size font2">${viewMap.NCS604.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p1[3] }"><p class="view-size font2">${viewMap.NCS604.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p1[4] }"><p class="view-size font2">${viewMap.NCS604.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS604.p2[0] }"><p class="view-size font2">${viewMap.NCS604.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p2[1] }"><p class="view-size font2">${viewMap.NCS604.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p2[2] }"><p class="view-size font2">${viewMap.NCS604.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p2[3] }"><p class="view-size font2">${viewMap.NCS604.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p2[4] }"><p class="view-size font2">${viewMap.NCS604.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS604.p3[0] }"><p class="view-size font2">${viewMap.NCS604.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p3[1] }"><p class="view-size font2">${viewMap.NCS604.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p3[2] }"><p class="view-size font2">${viewMap.NCS604.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p3[3] }"><p class="view-size font2">${viewMap.NCS604.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p3[4] }"><p class="view-size font2">${viewMap.NCS604.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS604.p4[0] }"><p class="view-size font2">${viewMap.NCS604.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p4[1] }"><p class="view-size font2">${viewMap.NCS604.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p4[2] }"><p class="view-size font2">${viewMap.NCS604.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p4[3] }"><p class="view-size font2">${viewMap.NCS604.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS604.p4[4] }"><p class="view-size font2">${viewMap.NCS604.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">603</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS603.p1[0] }"><p class="view-size font2">${viewMap.NCS603.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p1[1] }"><p class="view-size font2">${viewMap.NCS603.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p1[2] }"><p class="view-size font2">${viewMap.NCS603.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p1[3] }"><p class="view-size font2">${viewMap.NCS603.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p1[4] }"><p class="view-size font2">${viewMap.NCS603.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS603.p2[0] }"><p class="view-size font2">${viewMap.NCS603.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p2[1] }"><p class="view-size font2">${viewMap.NCS603.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p2[2] }"><p class="view-size font2">${viewMap.NCS603.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p2[3] }"><p class="view-size font2">${viewMap.NCS603.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p2[4] }"><p class="view-size font2">${viewMap.NCS603.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS603.p3[0] }"><p class="view-size font2">${viewMap.NCS603.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p3[1] }"><p class="view-size font2">${viewMap.NCS603.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p3[2] }"><p class="view-size font2">${viewMap.NCS603.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p3[3] }"><p class="view-size font2">${viewMap.NCS603.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p3[4] }"><p class="view-size font2">${viewMap.NCS603.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS603.p4[0] }"><p class="view-size font2">${viewMap.NCS603.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p4[1] }"><p class="view-size font2">${viewMap.NCS603.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p4[2] }"><p class="view-size font2">${viewMap.NCS603.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p4[3] }"><p class="view-size font2">${viewMap.NCS603.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS603.p4[4] }"><p class="view-size font2">${viewMap.NCS603.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">601</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS601.p1[0] }"><p class="view-size font2">${viewMap.NCS601.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p1[1] }"><p class="view-size font2">${viewMap.NCS601.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p1[2] }"><p class="view-size font2">${viewMap.NCS601.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p1[3] }"><p class="view-size font2">${viewMap.NCS601.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p1[4] }"><p class="view-size font2">${viewMap.NCS601.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS601.p2[0] }"><p class="view-size font2">${viewMap.NCS601.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p2[1] }"><p class="view-size font2">${viewMap.NCS601.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p2[2] }"><p class="view-size font2">${viewMap.NCS601.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p2[3] }"><p class="view-size font2">${viewMap.NCS601.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p2[4] }"><p class="view-size font2">${viewMap.NCS601.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS601.p3[0] }"><p class="view-size font2">${viewMap.NCS601.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p3[1] }"><p class="view-size font2">${viewMap.NCS601.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p3[2] }"><p class="view-size font2">${viewMap.NCS601.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p3[3] }"><p class="view-size font2">${viewMap.NCS601.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p3[4] }"><p class="view-size font2">${viewMap.NCS601.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS601.p4[0] }"><p class="view-size font2">${viewMap.NCS601.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p4[1] }"><p class="view-size font2">${viewMap.NCS601.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p4[2] }"><p class="view-size font2">${viewMap.NCS601.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p4[3] }"><p class="view-size font2">${viewMap.NCS601.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS601.p4[4] }"><p class="view-size font2">${viewMap.NCS601.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2" id="5F">504</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS504.p1[0] }"><p class="view-size font2">${viewMap.NCS504.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p1[1] }"><p class="view-size font2">${viewMap.NCS504.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p1[2] }"><p class="view-size font2">${viewMap.NCS504.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p1[3] }"><p class="view-size font2">${viewMap.NCS504.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p1[4] }"><p class="view-size font2">${viewMap.NCS504.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS504.p2[0] }"><p class="view-size font2">${viewMap.NCS504.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p2[1] }"><p class="view-size font2">${viewMap.NCS504.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p2[2] }"><p class="view-size font2">${viewMap.NCS504.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p2[3] }"><p class="view-size font2">${viewMap.NCS504.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p2[4] }"><p class="view-size font2">${viewMap.NCS504.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS504.p3[0] }"><p class="view-size font2">${viewMap.NCS504.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p3[1] }"><p class="view-size font2">${viewMap.NCS504.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p3[2] }"><p class="view-size font2">${viewMap.NCS504.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p3[3] }"><p class="view-size font2">${viewMap.NCS504.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p3[4] }"><p class="view-size font2">${viewMap.NCS504.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS504.p4[0] }"><p class="view-size font2">${viewMap.NCS504.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p4[1] }"><p class="view-size font2">${viewMap.NCS504.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p4[2] }"><p class="view-size font2">${viewMap.NCS504.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p4[3] }"><p class="view-size font2">${viewMap.NCS504.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS504.p4[4] }"><p class="view-size font2">${viewMap.NCS504.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">503</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS503.p1[0] }"><p class="view-size font2">${viewMap.NCS503.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p1[1] }"><p class="view-size font2">${viewMap.NCS503.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p1[2] }"><p class="view-size font2">${viewMap.NCS503.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p1[3] }"><p class="view-size font2">${viewMap.NCS503.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p1[4] }"><p class="view-size font2">${viewMap.NCS503.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS503.p2[0] }"><p class="view-size font2">${viewMap.NCS503.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p2[1] }"><p class="view-size font2">${viewMap.NCS503.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p2[2] }"><p class="view-size font2">${viewMap.NCS503.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p2[3] }"><p class="view-size font2">${viewMap.NCS503.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p2[4] }"><p class="view-size font2">${viewMap.NCS503.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS503.p3[0] }"><p class="view-size font2">${viewMap.NCS503.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p3[1] }"><p class="view-size font2">${viewMap.NCS503.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p3[2] }"><p class="view-size font2">${viewMap.NCS503.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p3[3] }"><p class="view-size font2">${viewMap.NCS503.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p3[4] }"><p class="view-size font2">${viewMap.NCS503.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS503.p4[0] }"><p class="view-size font2">${viewMap.NCS503.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p4[1] }"><p class="view-size font2">${viewMap.NCS503.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p4[2] }"><p class="view-size font2">${viewMap.NCS503.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p4[3] }"><p class="view-size font2">${viewMap.NCS503.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS503.p4[4] }"><p class="view-size font2">${viewMap.NCS503.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">502</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS502.p1[0] }"><p class="view-size font2">${viewMap.NCS502.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p1[1] }"><p class="view-size font2">${viewMap.NCS502.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p1[2] }"><p class="view-size font2">${viewMap.NCS502.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p1[3] }"><p class="view-size font2">${viewMap.NCS502.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p1[4] }"><p class="view-size font2">${viewMap.NCS502.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS502.p2[0] }"><p class="view-size font2">${viewMap.NCS502.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p2[1] }"><p class="view-size font2">${viewMap.NCS502.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p2[2] }"><p class="view-size font2">${viewMap.NCS502.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p2[3] }"><p class="view-size font2">${viewMap.NCS502.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p2[4] }"><p class="view-size font2">${viewMap.NCS502.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS502.p3[0] }"><p class="view-size font2">${viewMap.NCS502.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p3[1] }"><p class="view-size font2">${viewMap.NCS502.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p3[2] }"><p class="view-size font2">${viewMap.NCS502.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p3[3] }"><p class="view-size font2">${viewMap.NCS502.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p3[4] }"><p class="view-size font2">${viewMap.NCS502.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS502.p4[0] }"><p class="view-size font2">${viewMap.NCS502.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p4[1] }"><p class="view-size font2">${viewMap.NCS502.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p4[2] }"><p class="view-size font2">${viewMap.NCS502.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p4[3] }"><p class="view-size font2">${viewMap.NCS502.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS502.p4[4] }"><p class="view-size font2">${viewMap.NCS502.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">501</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS501.p1[0] }"><p class="view-size font2">${viewMap.NCS501.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p1[1] }"><p class="view-size font2">${viewMap.NCS501.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p1[2] }"><p class="view-size font2">${viewMap.NCS501.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p1[3] }"><p class="view-size font2">${viewMap.NCS501.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p1[4] }"><p class="view-size font2">${viewMap.NCS501.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS501.p2[0] }"><p class="view-size font2">${viewMap.NCS501.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p2[1] }"><p class="view-size font2">${viewMap.NCS501.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p2[2] }"><p class="view-size font2">${viewMap.NCS501.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p2[3] }"><p class="view-size font2">${viewMap.NCS501.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p2[4] }"><p class="view-size font2">${viewMap.NCS501.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS501.p3[0] }"><p class="view-size font2">${viewMap.NCS501.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p3[1] }"><p class="view-size font2">${viewMap.NCS501.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p3[2] }"><p class="view-size font2">${viewMap.NCS501.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p3[3] }"><p class="view-size font2">${viewMap.NCS501.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p3[4] }"><p class="view-size font2">${viewMap.NCS501.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS501.p4[0] }"><p class="view-size font2">${viewMap.NCS501.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p4[1] }"><p class="view-size font2">${viewMap.NCS501.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p4[2] }"><p class="view-size font2">${viewMap.NCS501.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p4[3] }"><p class="view-size font2">${viewMap.NCS501.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS501.p4[4] }"><p class="view-size font2">${viewMap.NCS501.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2" id="4F">404</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS404.p1[0] }"><p class="view-size font2">${viewMap.NCS404.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p1[1] }"><p class="view-size font2">${viewMap.NCS404.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p1[2] }"><p class="view-size font2">${viewMap.NCS404.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p1[3] }"><p class="view-size font2">${viewMap.NCS404.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p1[4] }"><p class="view-size font2">${viewMap.NCS404.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS404.p2[0] }"><p class="view-size font2">${viewMap.NCS404.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p2[1] }"><p class="view-size font2">${viewMap.NCS404.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p2[2] }"><p class="view-size font2">${viewMap.NCS404.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p2[3] }"><p class="view-size font2">${viewMap.NCS404.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p2[4] }"><p class="view-size font2">${viewMap.NCS404.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS404.p3[0] }"><p class="view-size font2">${viewMap.NCS404.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p3[1] }"><p class="view-size font2">${viewMap.NCS404.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p3[2] }"><p class="view-size font2">${viewMap.NCS404.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p3[3] }"><p class="view-size font2">${viewMap.NCS404.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p3[4] }"><p class="view-size font2">${viewMap.NCS404.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS404.p4[0] }"><p class="view-size font2">${viewMap.NCS404.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p4[1] }"><p class="view-size font2">${viewMap.NCS404.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p4[2] }"><p class="view-size font2">${viewMap.NCS404.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p4[3] }"><p class="view-size font2">${viewMap.NCS404.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS404.p4[4] }"><p class="view-size font2">${viewMap.NCS404.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">403</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS403.p1[0] }"><p class="view-size font2">${viewMap.NCS403.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p1[1] }"><p class="view-size font2">${viewMap.NCS403.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p1[2] }"><p class="view-size font2">${viewMap.NCS403.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p1[3] }"><p class="view-size font2">${viewMap.NCS403.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p1[4] }"><p class="view-size font2">${viewMap.NCS403.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS403.p2[0] }"><p class="view-size font2">${viewMap.NCS403.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p2[1] }"><p class="view-size font2">${viewMap.NCS403.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p2[2] }"><p class="view-size font2">${viewMap.NCS403.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p2[3] }"><p class="view-size font2">${viewMap.NCS403.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p2[4] }"><p class="view-size font2">${viewMap.NCS403.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS403.p3[0] }"><p class="view-size font2">${viewMap.NCS403.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p3[1] }"><p class="view-size font2">${viewMap.NCS403.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p3[2] }"><p class="view-size font2">${viewMap.NCS403.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p3[3] }"><p class="view-size font2">${viewMap.NCS403.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p3[4] }"><p class="view-size font2">${viewMap.NCS403.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS403.p4[0] }"><p class="view-size font2">${viewMap.NCS403.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p4[1] }"><p class="view-size font2">${viewMap.NCS403.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p4[2] }"><p class="view-size font2">${viewMap.NCS403.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p4[3] }"><p class="view-size font2">${viewMap.NCS403.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS403.p4[4] }"><p class="view-size font2">${viewMap.NCS403.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">402</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS402.p1[0] }"><p class="view-size font2">${viewMap.NCS402.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p1[1] }"><p class="view-size font2">${viewMap.NCS402.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p1[2] }"><p class="view-size font2">${viewMap.NCS402.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p1[3] }"><p class="view-size font2">${viewMap.NCS402.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p1[4] }"><p class="view-size font2">${viewMap.NCS402.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS402.p2[0] }"><p class="view-size font2">${viewMap.NCS402.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p2[1] }"><p class="view-size font2">${viewMap.NCS402.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p2[2] }"><p class="view-size font2">${viewMap.NCS402.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p2[3] }"><p class="view-size font2">${viewMap.NCS402.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p2[4] }"><p class="view-size font2">${viewMap.NCS402.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS402.p3[0] }"><p class="view-size font2">${viewMap.NCS402.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p3[1] }"><p class="view-size font2">${viewMap.NCS402.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p3[2] }"><p class="view-size font2">${viewMap.NCS402.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p3[3] }"><p class="view-size font2">${viewMap.NCS402.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p3[4] }"><p class="view-size font2">${viewMap.NCS402.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS402.p4[0] }"><p class="view-size font2">${viewMap.NCS402.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p4[1] }"><p class="view-size font2">${viewMap.NCS402.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p4[2] }"><p class="view-size font2">${viewMap.NCS402.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p4[3] }"><p class="view-size font2">${viewMap.NCS402.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS402.p4[4] }"><p class="view-size font2">${viewMap.NCS402.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">401</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS401.p1[0] }"><p class="view-size font2">${viewMap.NCS401.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p1[1] }"><p class="view-size font2">${viewMap.NCS401.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p1[2] }"><p class="view-size font2">${viewMap.NCS401.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p1[3] }"><p class="view-size font2">${viewMap.NCS401.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p1[4] }"><p class="view-size font2">${viewMap.NCS401.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS401.p2[0] }"><p class="view-size font2">${viewMap.NCS401.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p2[1] }"><p class="view-size font2">${viewMap.NCS401.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p2[2] }"><p class="view-size font2">${viewMap.NCS401.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p2[3] }"><p class="view-size font2">${viewMap.NCS401.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p2[4] }"><p class="view-size font2">${viewMap.NCS401.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS401.p3[0] }"><p class="view-size font2">${viewMap.NCS401.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p3[1] }"><p class="view-size font2">${viewMap.NCS401.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p3[2] }"><p class="view-size font2">${viewMap.NCS401.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p3[3] }"><p class="view-size font2">${viewMap.NCS401.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p3[4] }"><p class="view-size font2">${viewMap.NCS401.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS401.p4[0] }"><p class="view-size font2">${viewMap.NCS401.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p4[1] }"><p class="view-size font2">${viewMap.NCS401.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p4[2] }"><p class="view-size font2">${viewMap.NCS401.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p4[3] }"><p class="view-size font2">${viewMap.NCS401.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS401.p4[4] }"><p class="view-size font2">${viewMap.NCS401.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2" id="3F">304</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS304.p1[0] }"><p class="view-size font2">${viewMap.NCS304.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p1[1] }"><p class="view-size font2">${viewMap.NCS304.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p1[2] }"><p class="view-size font2">${viewMap.NCS304.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p1[3] }"><p class="view-size font2">${viewMap.NCS304.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p1[4] }"><p class="view-size font2">${viewMap.NCS304.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS304.p2[0] }"><p class="view-size font2">${viewMap.NCS304.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p2[1] }"><p class="view-size font2">${viewMap.NCS304.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p2[2] }"><p class="view-size font2">${viewMap.NCS304.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p2[3] }"><p class="view-size font2">${viewMap.NCS304.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p2[4] }"><p class="view-size font2">${viewMap.NCS304.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS304.p3[0] }"><p class="view-size font2">${viewMap.NCS304.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p3[1] }"><p class="view-size font2">${viewMap.NCS304.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p3[2] }"><p class="view-size font2">${viewMap.NCS304.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p3[3] }"><p class="view-size font2">${viewMap.NCS304.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p3[4] }"><p class="view-size font2">${viewMap.NCS304.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS304.p4[0] }"><p class="view-size font2">${viewMap.NCS304.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p4[1] }"><p class="view-size font2">${viewMap.NCS304.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p4[2] }"><p class="view-size font2">${viewMap.NCS304.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p4[3] }"><p class="view-size font2">${viewMap.NCS304.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS304.p4[4] }"><p class="view-size font2">${viewMap.NCS304.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">303</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS303.p1[0] }"><p class="view-size font2">${viewMap.NCS303.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p1[1] }"><p class="view-size font2">${viewMap.NCS303.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p1[2] }"><p class="view-size font2">${viewMap.NCS303.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p1[3] }"><p class="view-size font2">${viewMap.NCS303.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p1[4] }"><p class="view-size font2">${viewMap.NCS303.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS303.p2[0] }"><p class="view-size font2">${viewMap.NCS303.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p2[1] }"><p class="view-size font2">${viewMap.NCS303.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p2[2] }"><p class="view-size font2">${viewMap.NCS303.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p2[3] }"><p class="view-size font2">${viewMap.NCS303.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p2[4] }"><p class="view-size font2">${viewMap.NCS303.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS303.p3[0] }"><p class="view-size font2">${viewMap.NCS303.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p3[1] }"><p class="view-size font2">${viewMap.NCS303.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p3[2] }"><p class="view-size font2">${viewMap.NCS303.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p3[3] }"><p class="view-size font2">${viewMap.NCS303.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p3[4] }"><p class="view-size font2">${viewMap.NCS303.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS303.p4[0] }"><p class="view-size font2">${viewMap.NCS303.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p4[1] }"><p class="view-size font2">${viewMap.NCS303.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p4[2] }"><p class="view-size font2">${viewMap.NCS303.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p4[3] }"><p class="view-size font2">${viewMap.NCS303.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS303.p4[4] }"><p class="view-size font2">${viewMap.NCS303.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2">302</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS302.p1[0] }"><p class="view-size font2">${viewMap.NCS302.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p1[1] }"><p class="view-size font2">${viewMap.NCS302.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p1[2] }"><p class="view-size font2">${viewMap.NCS302.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p1[3] }"><p class="view-size font2">${viewMap.NCS302.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p1[4] }"><p class="view-size font2">${viewMap.NCS302.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS302.p2[0] }"><p class="view-size font2">${viewMap.NCS302.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p2[1] }"><p class="view-size font2">${viewMap.NCS302.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p2[2] }"><p class="view-size font2">${viewMap.NCS302.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p2[3] }"><p class="view-size font2">${viewMap.NCS302.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p2[4] }"><p class="view-size font2">${viewMap.NCS302.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS302.p3[0] }"><p class="view-size font2">${viewMap.NCS302.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p3[1] }"><p class="view-size font2">${viewMap.NCS302.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p3[2] }"><p class="view-size font2">${viewMap.NCS302.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p3[3] }"><p class="view-size font2">${viewMap.NCS302.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p3[4] }"><p class="view-size font2">${viewMap.NCS302.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS302.p4[0] }"><p class="view-size font2">${viewMap.NCS302.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p4[1] }"><p class="view-size font2">${viewMap.NCS302.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p4[2] }"><p class="view-size font2">${viewMap.NCS302.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p4[3] }"><p class="view-size font2">${viewMap.NCS302.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS302.p4[4] }"><p class="view-size font2">${viewMap.NCS302.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="danger">
							<td class="view-size font2">301</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS301.p1[0] }"><p class="view-size font2">${viewMap.NCS301.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p1[1] }"><p class="view-size font2">${viewMap.NCS301.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p1[2] }"><p class="view-size font2">${viewMap.NCS301.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p1[3] }"><p class="view-size font2">${viewMap.NCS301.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p1[4] }"><p class="view-size font2">${viewMap.NCS301.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS301.p2[0] }"><p class="view-size font2">${viewMap.NCS301.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p2[1] }"><p class="view-size font2">${viewMap.NCS301.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p2[2] }"><p class="view-size font2">${viewMap.NCS301.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p2[3] }"><p class="view-size font2">${viewMap.NCS301.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p2[4] }"><p class="view-size font2">${viewMap.NCS301.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS301.p3[0] }"><p class="view-size font2">${viewMap.NCS301.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p3[1] }"><p class="view-size font2">${viewMap.NCS301.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p3[2] }"><p class="view-size font2">${viewMap.NCS301.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p3[3] }"><p class="view-size font2">${viewMap.NCS301.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p3[4] }"><p class="view-size font2">${viewMap.NCS301.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS301.p4[0] }"><p class="view-size font2">${viewMap.NCS301.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p4[1] }"><p class="view-size font2">${viewMap.NCS301.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p4[2] }"><p class="view-size font2">${viewMap.NCS301.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p4[3] }"><p class="view-size font2">${viewMap.NCS301.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS301.p4[4] }"><p class="view-size font2">${viewMap.NCS301.p4[4]}</p></c:if>
							</td>
						</tr>



						<tr class="pink1">
							<td class="view-size font2" id="2F">201</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS201.p1[0] }"><p class="view-size font2">${viewMap.NCS201.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p1[1] }"><p class="view-size font2">${viewMap.NCS201.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p1[2] }"><p class="view-size font2">${viewMap.NCS201.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p1[3] }"><p class="view-size font2">${viewMap.NCS201.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p1[4] }"><p class="view-size font2">${viewMap.NCS201.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS201.p2[0] }"><p class="view-size font2">${viewMap.NCS201.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p2[1] }"><p class="view-size font2">${viewMap.NCS201.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p2[2] }"><p class="view-size font2">${viewMap.NCS201.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p2[3] }"><p class="view-size font2">${viewMap.NCS201.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p2[4] }"><p class="view-size font2">${viewMap.NCS201.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS201.p3[0] }"><p class="view-size font2">${viewMap.NCS201.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p3[1] }"><p class="view-size font2">${viewMap.NCS201.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p3[2] }"><p class="view-size font2">${viewMap.NCS201.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p3[3] }"><p class="view-size font2">${viewMap.NCS201.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p3[4] }"><p class="view-size font2">${viewMap.NCS201.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NCS201.p4[0] }"><p class="view-size font2">${viewMap.NCS201.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p4[1] }"><p class="view-size font2">${viewMap.NCS201.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p4[2] }"><p class="view-size font2">${viewMap.NCS201.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p4[3] }"><p class="view-size font2">${viewMap.NCS201.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NCS201.p4[4] }"><p class="view-size font2">${viewMap.NCS201.p4[4]}</p></c:if>
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
							<td class="view-size font2" id="M5F">503</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC503.p1[0] }"><p class="view-size font2">${viewMap.NMIC503.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p1[1] }"><p class="view-size font2">${viewMap.NMIC503.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p1[2] }"><p class="view-size font2">${viewMap.NMIC503.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p1[3] }"><p class="view-size font2">${viewMap.NMIC503.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p1[4] }"><p class="view-size font2">${viewMap.NMIC503.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC503.p2[0] }"><p class="view-size font2">${viewMap.NMIC503.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p2[1] }"><p class="view-size font2">${viewMap.NMIC503.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p2[2] }"><p class="view-size font2">${viewMap.NMIC503.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p2[3] }"><p class="view-size font2">${viewMap.NMIC503.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p2[4] }"><p class="view-size font2">${viewMap.NMIC503.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC503.p3[0] }"><p class="view-size font2">${viewMap.NMIC503.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p3[1] }"><p class="view-size font2">${viewMap.NMIC503.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p3[2] }"><p class="view-size font2">${viewMap.NMIC503.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p3[3] }"><p class="view-size font2">${viewMap.NMIC503.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p3[4] }"><p class="view-size font2">${viewMap.NMIC503.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC503.p4[0] }"><p class="view-size font2">${viewMap.NMIC503.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p4[1] }"><p class="view-size font2">${viewMap.NMIC503.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p4[2] }"><p class="view-size font2">${viewMap.NMIC503.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p4[3] }"><p class="view-size font2">${viewMap.NMIC503.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC503.p4[4] }"><p class="view-size font2">${viewMap.NMIC503.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink3">
							<td class="view-size font2">502</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC502.p1[0] }"><p class="view-size font2">${viewMap.NMIC502.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p1[1] }"><p class="view-size font2">${viewMap.NMIC502.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p1[2] }"><p class="view-size font2">${viewMap.NMIC502.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p1[3] }"><p class="view-size font2">${viewMap.NMIC502.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p1[4] }"><p class="view-size font2">${viewMap.NMIC502.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC502.p2[0] }"><p class="view-size font2">${viewMap.NMIC502.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p2[1] }"><p class="view-size font2">${viewMap.NMIC502.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p2[2] }"><p class="view-size font2">${viewMap.NMIC502.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p2[3] }"><p class="view-size font2">${viewMap.NMIC502.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p2[4] }"><p class="view-size font2">${viewMap.NMIC502.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC502.p3[0] }"><p class="view-size font2">${viewMap.NMIC502.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p3[1] }"><p class="view-size font2">${viewMap.NMIC502.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p3[2] }"><p class="view-size font2">${viewMap.NMIC502.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p3[3] }"><p class="view-size font2">${viewMap.NMIC502.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p3[4] }"><p class="view-size font2">${viewMap.NMIC502.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC502.p4[0] }"><p class="view-size font2">${viewMap.NMIC502.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p4[1] }"><p class="view-size font2">${viewMap.NMIC502.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p4[2] }"><p class="view-size font2">${viewMap.NMIC502.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p4[3] }"><p class="view-size font2">${viewMap.NMIC502.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC502.p4[4] }"><p class="view-size font2">${viewMap.NMIC502.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">501</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC501.p1[0] }"><p class="view-size font2">${viewMap.NMIC501.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p1[1] }"><p class="view-size font2">${viewMap.NMIC501.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p1[2] }"><p class="view-size font2">${viewMap.NMIC501.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p1[3] }"><p class="view-size font2">${viewMap.NMIC501.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p1[4] }"><p class="view-size font2">${viewMap.NMIC501.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC501.p2[0] }"><p class="view-size font2">${viewMap.NMIC501.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p2[1] }"><p class="view-size font2">${viewMap.NMIC501.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p2[2] }"><p class="view-size font2">${viewMap.NMIC501.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p2[3] }"><p class="view-size font2">${viewMap.NMIC501.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p2[4] }"><p class="view-size font2">${viewMap.NMIC501.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC501.p3[0] }"><p class="view-size font2">${viewMap.NMIC501.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p3[1] }"><p class="view-size font2">${viewMap.NMIC501.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p3[2] }"><p class="view-size font2">${viewMap.NMIC501.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p3[3] }"><p class="view-size font2">${viewMap.NMIC501.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p3[4] }"><p class="view-size font2">${viewMap.NMIC501.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC501.p4[0] }"><p class="view-size font2">${viewMap.NMIC501.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p4[1] }"><p class="view-size font2">${viewMap.NMIC501.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p4[2] }"><p class="view-size font2">${viewMap.NMIC501.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p4[3] }"><p class="view-size font2">${viewMap.NMIC501.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC501.p4[4] }"><p class="view-size font2">${viewMap.NMIC501.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2" id="M4F">404</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC404.p1[0] }"><p class="view-size font2">${viewMap.NMIC404.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p1[1] }"><p class="view-size font2">${viewMap.NMIC404.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p1[2] }"><p class="view-size font2">${viewMap.NMIC404.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p1[3] }"><p class="view-size font2">${viewMap.NMIC404.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p1[4] }"><p class="view-size font2">${viewMap.NMIC404.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC404.p2[0] }"><p class="view-size font2">${viewMap.NMIC404.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p2[1] }"><p class="view-size font2">${viewMap.NMIC404.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p2[2] }"><p class="view-size font2">${viewMap.NMIC404.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p2[3] }"><p class="view-size font2">${viewMap.NMIC404.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p2[4] }"><p class="view-size font2">${viewMap.NMIC404.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC404.p3[0] }"><p class="view-size font2">${viewMap.NMIC404.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p3[1] }"><p class="view-size font2">${viewMap.NMIC404.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p3[2] }"><p class="view-size font2">${viewMap.NMIC404.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p3[3] }"><p class="view-size font2">${viewMap.NMIC404.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p3[4] }"><p class="view-size font2">${viewMap.NMIC404.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC404.p4[0] }"><p class="view-size font2">${viewMap.NMIC404.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p4[1] }"><p class="view-size font2">${viewMap.NMIC404.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p4[2] }"><p class="view-size font2">${viewMap.NMIC404.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p4[3] }"><p class="view-size font2">${viewMap.NMIC404.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC404.p4[4] }"><p class="view-size font2">${viewMap.NMIC404.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">403</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC403.p1[0] }"><p class="view-size font2">${viewMap.NMIC403.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p1[1] }"><p class="view-size font2">${viewMap.NMIC403.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p1[2] }"><p class="view-size font2">${viewMap.NMIC403.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p1[3] }"><p class="view-size font2">${viewMap.NMIC403.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p1[4] }"><p class="view-size font2">${viewMap.NMIC403.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC403.p2[0] }"><p class="view-size font2">${viewMap.NMIC403.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p2[1] }"><p class="view-size font2">${viewMap.NMIC403.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p2[2] }"><p class="view-size font2">${viewMap.NMIC403.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p2[3] }"><p class="view-size font2">${viewMap.NMIC403.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p2[4] }"><p class="view-size font2">${viewMap.NMIC403.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC403.p3[0] }"><p class="view-size font2">${viewMap.NMIC403.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p3[1] }"><p class="view-size font2">${viewMap.NMIC403.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p3[2] }"><p class="view-size font2">${viewMap.NMIC403.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p3[3] }"><p class="view-size font2">${viewMap.NMIC403.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p3[4] }"><p class="view-size font2">${viewMap.NMIC403.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC403.p4[0] }"><p class="view-size font2">${viewMap.NMIC403.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p4[1] }"><p class="view-size font2">${viewMap.NMIC403.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p4[2] }"><p class="view-size font2">${viewMap.NMIC403.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p4[3] }"><p class="view-size font2">${viewMap.NMIC403.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC403.p4[4] }"><p class="view-size font2">${viewMap.NMIC403.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2">402</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC402.p1[0] }"><p class="view-size font2">${viewMap.NMIC402.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p1[1] }"><p class="view-size font2">${viewMap.NMIC402.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p1[2] }"><p class="view-size font2">${viewMap.NMIC402.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p1[3] }"><p class="view-size font2">${viewMap.NMIC402.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p1[4] }"><p class="view-size font2">${viewMap.NMIC402.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC402.p2[0] }"><p class="view-size font2">${viewMap.NMIC402.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p2[1] }"><p class="view-size font2">${viewMap.NMIC402.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p2[2] }"><p class="view-size font2">${viewMap.NMIC402.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p2[3] }"><p class="view-size font2">${viewMap.NMIC402.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p2[4] }"><p class="view-size font2">${viewMap.NMIC402.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC402.p3[0] }"><p class="view-size font2">${viewMap.NMIC402.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p3[1] }"><p class="view-size font2">${viewMap.NMIC402.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p3[2] }"><p class="view-size font2">${viewMap.NMIC402.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p3[3] }"><p class="view-size font2">${viewMap.NMIC402.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p3[4] }"><p class="view-size font2">${viewMap.NMIC402.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC402.p4[0] }"><p class="view-size font2">${viewMap.NMIC402.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p4[1] }"><p class="view-size font2">${viewMap.NMIC402.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p4[2] }"><p class="view-size font2">${viewMap.NMIC402.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p4[3] }"><p class="view-size font2">${viewMap.NMIC402.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC402.p4[4] }"><p class="view-size font2">${viewMap.NMIC402.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">401</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC401.p1[0] }"><p class="view-size font2">${viewMap.NMIC401.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p1[1] }"><p class="view-size font2">${viewMap.NMIC401.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p1[2] }"><p class="view-size font2">${viewMap.NMIC401.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p1[3] }"><p class="view-size font2">${viewMap.NMIC401.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p1[4] }"><p class="view-size font2">${viewMap.NMIC401.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC401.p2[0] }"><p class="view-size font2">${viewMap.NMIC401.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p2[1] }"><p class="view-size font2">${viewMap.NMIC401.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p2[2] }"><p class="view-size font2">${viewMap.NMIC401.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p2[3] }"><p class="view-size font2">${viewMap.NMIC401.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p2[4] }"><p class="view-size font2">${viewMap.NMIC401.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC401.p3[0] }"><p class="view-size font2">${viewMap.NMIC401.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p3[1] }"><p class="view-size font2">${viewMap.NMIC401.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p3[2] }"><p class="view-size font2">${viewMap.NMIC401.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p3[3] }"><p class="view-size font2">${viewMap.NMIC401.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p3[4] }"><p class="view-size font2">${viewMap.NMIC401.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC401.p4[0] }"><p class="view-size font2">${viewMap.NMIC401.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p4[1] }"><p class="view-size font2">${viewMap.NMIC401.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p4[2] }"><p class="view-size font2">${viewMap.NMIC401.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p4[3] }"><p class="view-size font2">${viewMap.NMIC401.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC401.p4[4] }"><p class="view-size font2">${viewMap.NMIC401.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2" id="M3F">304</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC304.p1[0] }"><p class="view-size font2">${viewMap.NMIC304.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p1[1] }"><p class="view-size font2">${viewMap.NMIC304.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p1[2] }"><p class="view-size font2">${viewMap.NMIC304.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p1[3] }"><p class="view-size font2">${viewMap.NMIC304.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p1[4] }"><p class="view-size font2">${viewMap.NMIC304.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC304.p2[0] }"><p class="view-size font2">${viewMap.NMIC304.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p2[1] }"><p class="view-size font2">${viewMap.NMIC304.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p2[2] }"><p class="view-size font2">${viewMap.NMIC304.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p2[3] }"><p class="view-size font2">${viewMap.NMIC304.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p2[4] }"><p class="view-size font2">${viewMap.NMIC304.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC304.p3[0] }"><p class="view-size font2">${viewMap.NMIC304.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p3[1] }"><p class="view-size font2">${viewMap.NMIC304.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p3[2] }"><p class="view-size font2">${viewMap.NMIC304.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p3[3] }"><p class="view-size font2">${viewMap.NMIC304.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p3[4] }"><p class="view-size font2">${viewMap.NMIC304.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC304.p4[0] }"><p class="view-size font2">${viewMap.NMIC304.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p4[1] }"><p class="view-size font2">${viewMap.NMIC304.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p4[2] }"><p class="view-size font2">${viewMap.NMIC304.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p4[3] }"><p class="view-size font2">${viewMap.NMIC304.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC304.p4[4] }"><p class="view-size font2">${viewMap.NMIC304.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">303</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC303.p1[0] }"><p class="view-size font2">${viewMap.NMIC303.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p1[1] }"><p class="view-size font2">${viewMap.NMIC303.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p1[2] }"><p class="view-size font2">${viewMap.NMIC303.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p1[3] }"><p class="view-size font2">${viewMap.NMIC303.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p1[4] }"><p class="view-size font2">${viewMap.NMIC303.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC303.p2[0] }"><p class="view-size font2">${viewMap.NMIC303.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p2[1] }"><p class="view-size font2">${viewMap.NMIC303.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p2[2] }"><p class="view-size font2">${viewMap.NMIC303.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p2[3] }"><p class="view-size font2">${viewMap.NMIC303.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p2[4] }"><p class="view-size font2">${viewMap.NMIC303.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC303.p3[0] }"><p class="view-size font2">${viewMap.NMIC303.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p3[1] }"><p class="view-size font2">${viewMap.NMIC303.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p3[2] }"><p class="view-size font2">${viewMap.NMIC303.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p3[3] }"><p class="view-size font2">${viewMap.NMIC303.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p3[4] }"><p class="view-size font2">${viewMap.NMIC303.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC303.p4[0] }"><p class="view-size font2">${viewMap.NMIC303.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p4[1] }"><p class="view-size font2">${viewMap.NMIC303.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p4[2] }"><p class="view-size font2">${viewMap.NMIC303.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p4[3] }"><p class="view-size font2">${viewMap.NMIC303.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC303.p4[4] }"><p class="view-size font2">${viewMap.NMIC303.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2">302</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC302.p1[0] }"><p class="view-size font2">${viewMap.NMIC302.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p1[1] }"><p class="view-size font2">${viewMap.NMIC302.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p1[2] }"><p class="view-size font2">${viewMap.NMIC302.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p1[3] }"><p class="view-size font2">${viewMap.NMIC302.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p1[4] }"><p class="view-size font2">${viewMap.NMIC302.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC302.p2[0] }"><p class="view-size font2">${viewMap.NMIC302.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p2[1] }"><p class="view-size font2">${viewMap.NMIC302.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p2[2] }"><p class="view-size font2">${viewMap.NMIC302.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p2[3] }"><p class="view-size font2">${viewMap.NMIC302.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p2[4] }"><p class="view-size font2">${viewMap.NMIC302.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC302.p3[0] }"><p class="view-size font2">${viewMap.NMIC302.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p3[1] }"><p class="view-size font2">${viewMap.NMIC302.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p3[2] }"><p class="view-size font2">${viewMap.NMIC302.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p3[3] }"><p class="view-size font2">${viewMap.NMIC302.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p3[4] }"><p class="view-size font2">${viewMap.NMIC302.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC302.p4[0] }"><p class="view-size font2">${viewMap.NMIC302.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p4[1] }"><p class="view-size font2">${viewMap.NMIC302.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p4[2] }"><p class="view-size font2">${viewMap.NMIC302.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p4[3] }"><p class="view-size font2">${viewMap.NMIC302.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC302.p4[4] }"><p class="view-size font2">${viewMap.NMIC302.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">301</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC301.p1[0] }"><p class="view-size font2">${viewMap.NMIC301.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p1[1] }"><p class="view-size font2">${viewMap.NMIC301.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p1[2] }"><p class="view-size font2">${viewMap.NMIC301.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p1[3] }"><p class="view-size font2">${viewMap.NMIC301.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p1[4] }"><p class="view-size font2">${viewMap.NMIC301.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC301.p2[0] }"><p class="view-size font2">${viewMap.NMIC301.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p2[1] }"><p class="view-size font2">${viewMap.NMIC301.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p2[2] }"><p class="view-size font2">${viewMap.NMIC301.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p2[3] }"><p class="view-size font2">${viewMap.NMIC301.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p2[4] }"><p class="view-size font2">${viewMap.NMIC301.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC301.p3[0] }"><p class="view-size font2">${viewMap.NMIC301.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p3[1] }"><p class="view-size font2">${viewMap.NMIC301.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p3[2] }"><p class="view-size font2">${viewMap.NMIC301.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p3[3] }"><p class="view-size font2">${viewMap.NMIC301.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p3[4] }"><p class="view-size font2">${viewMap.NMIC301.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC301.p4[0] }"><p class="view-size font2">${viewMap.NMIC301.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p4[1] }"><p class="view-size font2">${viewMap.NMIC301.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p4[2] }"><p class="view-size font2">${viewMap.NMIC301.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p4[3] }"><p class="view-size font2">${viewMap.NMIC301.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC301.p4[4] }"><p class="view-size font2">${viewMap.NMIC301.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2" id="M2F">204</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC204.p1[0] }"><p class="view-size font2">${viewMap.NMIC204.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p1[1] }"><p class="view-size font2">${viewMap.NMIC204.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p1[2] }"><p class="view-size font2">${viewMap.NMIC204.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p1[3] }"><p class="view-size font2">${viewMap.NMIC204.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p1[4] }"><p class="view-size font2">${viewMap.NMIC204.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC204.p2[0] }"><p class="view-size font2">${viewMap.NMIC204.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p2[1] }"><p class="view-size font2">${viewMap.NMIC204.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p2[2] }"><p class="view-size font2">${viewMap.NMIC204.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p2[3] }"><p class="view-size font2">${viewMap.NMIC204.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p2[4] }"><p class="view-size font2">${viewMap.NMIC204.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC204.p3[0] }"><p class="view-size font2">${viewMap.NMIC204.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p3[1] }"><p class="view-size font2">${viewMap.NMIC204.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p3[2] }"><p class="view-size font2">${viewMap.NMIC204.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p3[3] }"><p class="view-size font2">${viewMap.NMIC204.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p3[4] }"><p class="view-size font2">${viewMap.NMIC204.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC204.p4[0] }"><p class="view-size font2">${viewMap.NMIC204.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p4[1] }"><p class="view-size font2">${viewMap.NMIC204.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p4[2] }"><p class="view-size font2">${viewMap.NMIC204.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p4[3] }"><p class="view-size font2">${viewMap.NMIC204.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC204.p4[4] }"><p class="view-size font2">${viewMap.NMIC204.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">203</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC203.p1[0] }"><p class="view-size font2">${viewMap.NMIC203.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p1[1] }"><p class="view-size font2">${viewMap.NMIC203.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p1[2] }"><p class="view-size font2">${viewMap.NMIC203.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p1[3] }"><p class="view-size font2">${viewMap.NMIC203.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p1[4] }"><p class="view-size font2">${viewMap.NMIC203.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC203.p2[0] }"><p class="view-size font2">${viewMap.NMIC203.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p2[1] }"><p class="view-size font2">${viewMap.NMIC203.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p2[2] }"><p class="view-size font2">${viewMap.NMIC203.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p2[3] }"><p class="view-size font2">${viewMap.NMIC203.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p2[4] }"><p class="view-size font2">${viewMap.NMIC203.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC203.p3[0] }"><p class="view-size font2">${viewMap.NMIC203.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p3[1] }"><p class="view-size font2">${viewMap.NMIC203.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p3[2] }"><p class="view-size font2">${viewMap.NMIC203.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p3[3] }"><p class="view-size font2">${viewMap.NMIC203.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p3[4] }"><p class="view-size font2">${viewMap.NMIC203.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC203.p4[0] }"><p class="view-size font2">${viewMap.NMIC203.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p4[1] }"><p class="view-size font2">${viewMap.NMIC203.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p4[2] }"><p class="view-size font2">${viewMap.NMIC203.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p4[3] }"><p class="view-size font2">${viewMap.NMIC203.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC203.p4[4] }"><p class="view-size font2">${viewMap.NMIC203.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2">202</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC202.p1[0] }"><p class="view-size font2">${viewMap.NMIC202.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p1[1] }"><p class="view-size font2">${viewMap.NMIC202.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p1[2] }"><p class="view-size font2">${viewMap.NMIC202.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p1[3] }"><p class="view-size font2">${viewMap.NMIC202.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p1[4] }"><p class="view-size font2">${viewMap.NMIC202.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC202.p2[0] }"><p class="view-size font2">${viewMap.NMIC202.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p2[1] }"><p class="view-size font2">${viewMap.NMIC202.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p2[2] }"><p class="view-size font2">${viewMap.NMIC202.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p2[3] }"><p class="view-size font2">${viewMap.NMIC202.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p2[4] }"><p class="view-size font2">${viewMap.NMIC202.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC202.p3[0] }"><p class="view-size font2">${viewMap.NMIC202.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p3[1] }"><p class="view-size font2">${viewMap.NMIC202.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p3[2] }"><p class="view-size font2">${viewMap.NMIC202.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p3[3] }"><p class="view-size font2">${viewMap.NMIC202.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p3[4] }"><p class="view-size font2">${viewMap.NMIC202.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC202.p4[0] }"><p class="view-size font2">${viewMap.NMIC202.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p4[1] }"><p class="view-size font2">${viewMap.NMIC202.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p4[2] }"><p class="view-size font2">${viewMap.NMIC202.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p4[3] }"><p class="view-size font2">${viewMap.NMIC202.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC202.p4[4] }"><p class="view-size font2">${viewMap.NMIC202.p4[4]}</p></c:if>
							</td>
						</tr>
						<tr class="pink2">
							<td class="view-size font2">201</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC201.p1[0] }"><p class="view-size font2">${viewMap.NMIC201.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p1[1] }"><p class="view-size font2">${viewMap.NMIC201.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p1[2] }"><p class="view-size font2">${viewMap.NMIC201.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p1[3] }"><p class="view-size font2">${viewMap.NMIC201.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p1[4] }"><p class="view-size font2">${viewMap.NMIC201.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC201.p2[0] }"><p class="view-size font2">${viewMap.NMIC201.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p2[1] }"><p class="view-size font2">${viewMap.NMIC201.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p2[2] }"><p class="view-size font2">${viewMap.NMIC201.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p2[3] }"><p class="view-size font2">${viewMap.NMIC201.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p2[4] }"><p class="view-size font2">${viewMap.NMIC201.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC201.p3[0] }"><p class="view-size font2">${viewMap.NMIC201.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p3[1] }"><p class="view-size font2">${viewMap.NMIC201.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p3[2] }"><p class="view-size font2">${viewMap.NMIC201.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p3[3] }"><p class="view-size font2">${viewMap.NMIC201.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p3[4] }"><p class="view-size font2">${viewMap.NMIC201.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC201.p4[0] }"><p class="view-size font2">${viewMap.NMIC201.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p4[1] }"><p class="view-size font2">${viewMap.NMIC201.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p4[2] }"><p class="view-size font2">${viewMap.NMIC201.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p4[3] }"><p class="view-size font2">${viewMap.NMIC201.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC201.p4[4] }"><p class="view-size font2">${viewMap.NMIC201.p4[4]}</p></c:if>
							</td>
						</tr>

						<tr class="pink3">
							<td class="view-size font2" id="M1F">101</td>
							<td class="view-size font2">1</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC101.p1[0] }"><p class="view-size font2">${viewMap.NMIC101.p1[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p1[1] }"><p class="view-size font2">${viewMap.NMIC101.p1[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p1[2] }"><p class="view-size font2">${viewMap.NMIC101.p1[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p1[3] }"><p class="view-size font2">${viewMap.NMIC101.p1[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p1[4] }"><p class="view-size font2">${viewMap.NMIC101.p1[4]}</p></c:if>
							</td>
							<td class="view-size font2">2</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC101.p2[0] }"><p class="view-size font2">${viewMap.NMIC101.p2[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p2[1] }"><p class="view-size font2">${viewMap.NMIC101.p2[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p2[2] }"><p class="view-size font2">${viewMap.NMIC101.p2[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p2[3] }"><p class="view-size font2">${viewMap.NMIC101.p2[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p2[4] }"><p class="view-size font2">${viewMap.NMIC101.p2[4]}</p></c:if>
							</td>
							<td class="view-size font2">3</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC101.p3[0] }"><p class="view-size font2">${viewMap.NMIC101.p3[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p3[1] }"><p class="view-size font2">${viewMap.NMIC101.p3[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p3[2] }"><p class="view-size font2">${viewMap.NMIC101.p3[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p3[3] }"><p class="view-size font2">${viewMap.NMIC101.p3[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p3[4] }"><p class="view-size font2">${viewMap.NMIC101.p3[4]}</p></c:if>
							</td>
							<td class="view-size font2">4</td>
							<td class="size">
								<c:if test="${!empty viewMap.NMIC101.p4[0] }"><p class="view-size font2">${viewMap.NMIC101.p4[0]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p4[1] }"><p class="view-size font2">${viewMap.NMIC101.p4[1]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p4[2] }"><p class="view-size font2">${viewMap.NMIC101.p4[2]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p4[3] }"><p class="view-size font2">${viewMap.NMIC101.p4[3]}</p></c:if>
								<c:if test="${!empty viewMap.NMIC101.p4[4] }"><p class="view-size font2">${viewMap.NMIC101.p4[4]}</p></c:if>
							</td>
						</tr>
				</table>
			</div>
		</div>
	</form>

</body>
</html>