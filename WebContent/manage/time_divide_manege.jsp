<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
        <link href='http://fonts.googleapis.com/css?family=Lobster' rel='stylesheet' type='text/css'>

        <script src="../js/jquery-2.1.1.min.js"></script>
        <script src="../bootstrap/js/bootstrap.min.js"></script>
        <script src="../js/jquery.appear.js"></script>


          <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- カレンダーJS読み込み -->
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-datepicker.min.css">
<script type="text/javascript" src="../bootstrap/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap-datepicker.js"></script>

<!-- ドラッグアンドドロップとアコーディオン化 -->
<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
<script src="http://code.jquery.com/jquery-1.8.3.js"></script>
<script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
<script type="text/javascript" src="../js/dragdrop.js"></script>

<!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">

<script>
$(function( e ){
	$( "#class-room" ).accordion();
	f_drag();
	f_drop( e );
});
</script>

<title>コマ割画面</title>

</head>
<body>

<!-- タグ -->



        <!-- Start Logo Section --><!-- ヘッダー部分 -->
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

<div class="container-fluid">

<!-- button -->

<button class="btn btn-primary btn-lg col-md-1 fix" data-toggle="modal" data-target="#myModal">
    登録
</button>

<!-- モーダルウィンドウの中身 -->

<div class="modal fade" id="myModal">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header back-color">

      <h3 class="modal-title white text-center">Confirmation</h3>
      </div>
      <div class="modal-body">
      <h3 class="modal-title text-center">登録されました！</h3>

      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-primary" data-dismiss="modal">close</button>
       </div>
    </div>
  </div>
</div>

<!-- button end -->
        <!-- カレンダー部分 -->
<div class="form-group col-md-1 col-md-offset-1">

</div>

<div class="col-md-10"></div>
</div>
<!-- カレンダーEND -->




<!-- ドラッグ&ドロップ -->
<div  class="col-md-1 fix margin-top">
	<div id="class">
		<h1 >class</h1>
		<div id="class-room">
			<h2 class="font"><a href="#" draggable="false">R1</a></h2>
			<div>
				<ul class="font">
					<li >R1A1</li>
					<li >R1A2</li>
					<li >R1A3</li>
					<li >R1A4</li>
					<li >R1A5</li>
				</ul>
			</div>
			<h2 class="font"><a href="#" draggable="false">R2</a></h2>
			<div>
				<ul class="font">
					<li>R2A1</li>
					<li>R2A2</li>
					<li>R2A3</li>
					<li>R2A4</li>
					<li>R2A5</li>
				</ul>
			</div>
			<h2 class="font"><a href="#" draggable="false">R3</a></h2>
			<div>
				<ul class="font">
					<li>R3A1</li>
					<li>R3A2</li>
					<li>R3A3</li>
					<li>R3A4</li>
					<li>R3A5</li>
				</ul>
			</div>
			<h2 class="font"><a href="#" draggable="false">R4</a></h2>
			<div>
				<ul class="font">
					<li>R4A1</li>
					<li>R4A2</li>
					<li>R4A3</li>
					<li>R4A4</li>
					<li>R4A5</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">S1</a></h2>
			<div>
				<ul class="font">
					<li>S1A1</li>
					<li>S1A2</li>
					<li>S1A3</li>
					<li>S1A4</li>
					<li>S1G1</li>
					<li>S1G2</li>
					<li>S1G3</li>
					<li>S1M1</li>
					<li>S1M2</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">S2</a></h2>
			<div>
				<ul class="font">
					<li>S2A1</li>
					<li>S2A2</li>
					<li>S2A3</li>
					<li>S2A4</li>
					<li>S2G1</li>
					<li>S2G2</li>
					<li>S2G3</li>
					<li>S2M1</li>
					<li>S2M2</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">S3</a></h2>
			<div>
				<ul class="font">
					<li>S3A1</li>
					<li>S3A2</li>
					<li>S3G1</li>
					<li>S3G2</li>
					<li>S3G3</li>
					<li>S3M1</li>
					<li>S3M2</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">J1</a></h2>
			<div>
				<ul class="font">
					<li>J1A1</li>
					<li>J1A2</li>
					<li>J1M1</li>
					<li>J1M2</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">J2</a></h2>
			<div>
				<ul class="font">
					<li>J2A1</li>
					<li>J2A2</li>
					<li>J2M1</li>
					<li>J2M2</li>
				</ul>
			</div>
				<h2 class="font"><a href="#" draggable="false">A1</a></h2>
			<div>
				<ul class="font">
					<li>A1A1</li>
					<li>A1A2</li>
				</ul>
			</div>
		</div>
	</div>
</div>
<form>
<div  class="container">
	<div class="table  col-md-6 ">
		<h1 class="text-center">NCS</h1>
		<table class="table table-striped table-bordered text-center ;">
			<thead>

			</thead>
			<tbody>
			<tr class="danger">
				<td class="size">8F</td>

				<td class="size">802</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-1" name="NCS802-1"></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-2" name="NCS802-2"></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-3" name="NCS802-3"></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-4" name="NCS802-4"></textarea></p>
				</td>

				<td class="size">803</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS803-1" name="NCS803-1"></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS803-2" name="NCS803-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS803-3" name="NCS803-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS803-4" name="NCS803-4" ></textarea></p>
				</td>
			</tr>
			<tr class="pink1">
				<td class="size">7F</td>
				<td class="size">701</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS701-1" name="NCS701-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS701-2" name="NCS701-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS701-3" name="NCS701-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS701-4" name="NCS701-4" ></textarea></p>
				</td>
				<td class="size">702</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS702-1" name="NCS702-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS702-2" name="NCS702-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS702-3" name="NCS702-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS702-4" name="NCS702-4" ></textarea></p>
				</td>
			</tr>
			<tr class="danger">
				<td class="size">6F</td>
				<td class="size">601</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS601-1" name="NCS601-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS601-2" name="NCS601-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS601-3" name="NCS601-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS601-4" name="NCS601-4" ></textarea></p>
				</td>
				<td class="size">603</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS603-1" name="NCS603-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS603-2" name="NCS603-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS603-3" name="NCS603-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS603-4" name="NCS603-4" ></textarea></p>
				</td>
				<td class="size">604</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS604-1" name="NCS604-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS604-2" name="NCS604-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS604-3" name="NCS604-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS604-4" name="NCS604-4" ></textarea></p>
				</td>
			</tr>
			<tr class="pink1">
				<td class="size">5F</td>
				<td class="size">501</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS501-1" name="NCS501-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS501-2" name="NCS501-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS501-3" name="NCS501-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS501-4" name="NCS501-4" ></textarea></p>
				</td>
				<td class="size">502</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS502-1" name="NCS502-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS502-2" name="NCS502-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS502-3" name="NCS502-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS502-4" name="NCS502-4" ></textarea></p>
				</td>
				<td class="size">503</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS503-1" name="NCS503-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS503-2" name="NCS503-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS503-3" name="NCS503-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS503-4" name="NCS503-4" ></textarea></p>
				</td>
				<td class="size">504</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS504-1" name="NCS504-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS504-2" name="NCS504-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS504-3" name="NCS504-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS504-4" name="NCS504-4" ></textarea></p>
				</td>
			</tr>
			<tr class="danger">
				<td class="size">4F</td>
				<td class="size">401</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS401-1" name="NCS401-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS401-2" name="NCS401-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS401-3" name="NCS401-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS401-4" name="NCS401-4" ></textarea></p>
				</td>
				<td class="size">402</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS402-1" name="NCS402-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS402-2" name="NCS402-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS402-3" name="NCS402-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS402-4" name="NCS402-4" ></textarea></p>
				</td>
				<td class="size">403</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS403-1" name="NCS403-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS403-2" name="NCS403-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS403-3" name="NCS403-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS403-4" name="NCS403-4" ></textarea></p>
				</td>
				<td class="size">404</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS404-1" name="NCS404-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS404-2" name="NCS404-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS404-3" name="NCS404-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS404-4" name="NCS404-4" ></textarea></p>
				</td>
			</tr>
			<tr class="pink1">
				<td class="size">3F</td>
				<td class="size">301</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS301-1" name="NCS301-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS301-2" name="NCS301-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS301-3" name="NCS301-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS301-4" name="NCS301-4" ></textarea></p>
				</td>
				<td class="size">302</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS302-1" name="NCS302-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS302-2" name="NCS302-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS302-3" name="NCS302-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS302-4" name="NCS302-4" ></textarea></p>
				</td>
				<td class="size">303</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS303-1" name="NCS303-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS303-2" name="NCS303-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS303-3" name="NCS303-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS303-4" name="NCS303-4" ></textarea></p>
				</td>
				<td class="size">304</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS304-1" name="NCS304-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS304-2" name="NCS304-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS304-3" name="NCS304-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS304-4" name="NCS304-4" ></textarea></p>
				</td>
			</tr>
			<tr class="danger">
				<td class="size">2F</td>
				<td class="size">201</td>
				<td class="size">
					<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS201-1" name="NCS201-1" ></textarea></p>
					<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS201-2" name="NCS201-2" ></textarea></p>
					<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS201-3" name="NCS201-3" ></textarea></p>
					<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS201-4" name="NCS201-4" ></textarea></p>
				</td>
			</tr>
		</table>
	</div>
</div>

	<h1 class="text-center">NMIC</h1>
	<div  class="container">
		<div class="table col-md-6 ">
			<table class="table table-striped table-bordered text-center table-hover;">
			<thead>

			</thead>
			<tbody>
				<tr class="pink3">
					<td class="size">5F</td>
					<td class="size">501</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC501-1" name="NMIC501-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC501-2" name="NMIC501-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC501-3" name="NMIC501-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC501-4" name="NMIC501-4" ></textarea></p>
					</td>
					<td class="size">502</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC502-1" name="NMIC502-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC502-2" name="NMIC502-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC502-3" name="NMIC502-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC502-4" name="NMIC502-4" ></textarea></p>
					</td>
					<td class="size">503</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC503-1" name="NMIC503-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC503-2" name="NMIC503-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC503-3" name="NMIC503-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC503-4" name="NMIC503-4" ></textarea></p>
					</td>
				</tr>
				<tr class="pink2">
					<td class="size">4F</td>
					<td class="size">401</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC401-1" name="NMIC401-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC401-2" name="NMIC401-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC401-3" name="NMIC401-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC401-4" name="NMIC401-4" ></textarea></p>
					</td>
					<td class="size">402</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC402-1" name="NMIC402-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC402-2" name="NMIC402-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC402-3" name="NMIC402-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC402-4" name="NMIC402-4" ></textarea></p>
					</td>
					<td class="size">403</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC403-1" name="NMIC403-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC403-2" name="NMIC403-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC403-3" name="NMIC403-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC403-4" name="NMIC403-4" ></textarea></p>
					</td>
					<td class="size">404</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC404-1" name="NMIC404-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC404-2" name="NMIC404-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC404-3" name="NMIC404-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC404-4" name="NMIC404-4" ></textarea></p>
					</td>
				</tr>
				<tr class="pink3">
					<td class="size">3F</td>
					<td class="size">301</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC301-1" name="NMIC301-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC301-2" name="NMIC301-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC301-3" name="NMIC301-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC301-4" name="NMIC301-4" ></textarea></p>
					</td>
					<td class="size">302</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC302-1" name="NMIC302-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC302-2" name="NMIC302-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC302-3" name="NMIC302-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC302-4" name="NMIC302-4" ></textarea></p>
					</td>
					<td class="size">303</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC303-1" name="NMIC303-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC303-2" name="NMIC303-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC303-3" name="NMIC303-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC303-4" name="NMIC303-4" ></textarea></p>
					</td>
					<td class="size">304</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC304-1" name="NMIC304-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC304-2" name="NMIC304-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC304-3" name="NMIC304-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC304-4" name="NMIC304-4" ></textarea></p>
					</td>
				</tr>
				<tr class="pink2">
					<td class="size">2F</td>
					<td class="size">201</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC201-1" name="NMIC201-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC201-2" name="NMIC201-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC201-3" name="NMIC201-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC201-4" name="NMIC201-4" ></textarea></p>
					</td>
					<td class="size">202</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC202-1" name="NMIC202-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC202-2" name="NMIC202-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC202-3" name="NMIC202-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC202-4" name="NMIC202-4" ></textarea></p>
					</td>
					<td class="size">203</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC203-1" name="NMIC203-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC203-2" name="NMIC203-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC203-3" name="NMIC203-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC203-4" name="NMIC203-4" ></textarea></p>
					</td>
					<td class="size">204</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC204-1" name="NMIC204-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC204-2" name="NMIC204-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC204-3" name="NMIC204-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC204-4" name="NMIC204-4" ></textarea></p>
					</td>
				</tr>
				<tr class="pink3">
					<td class="size">1F</td>
					<td class="size">101</td>
					<td class="size">
						<p class="size drop-target">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC101-1" name="NMIC101-1" ></textarea></p>
						<p class="size drop-target">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC101-2" name="NMIC101-2" ></textarea></p>
						<p class="size drop-target">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC101-3" name="NMIC101-3" ></textarea></p>
						<p class="size drop-target">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NMIC101-4" name="NMIC101-4" ></textarea></p>
					</td>
				</tr>
			</table>
		</div>
	</div>
</form>
</body>
</html>