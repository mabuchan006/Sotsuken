<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
<script type="text/javascript" src="../js/drag_drop/f_drag.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_1.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_2.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_3.js"></script>
<script type="text/javascript" src="../js/drag_drop/NCS8/NCS802_4.js"></script>

<!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">

<script>
$(function(){
	$( "#class-room" ).accordion();
	f_drag();
	NCS802_1_drop();
	NCS802_2_drop();
	NCS802_3_drop();
	NCS802_4_drop();
});
</script>

<title>コマ割画面</title>

</head>
<body>

<!-- タグ -->
<ul class="nav nav-tabs ">
<li><a href="#tab1" data-toggle="tab">管理者メニュー</a></li>
<li><a href="#tab2" data-toggle="tab">時間割管理</a></li>
<li><a href="#tab2" data-toggle="tab">講師管理</a></li>
<li><a href="#tab2" data-toggle="tab">科目管理</a></li>
<li><a href="#tab2" data-toggle="tab">クラス管理</a></li>
<li class="active"><a href="#tab2" data-toggle="tab">コマ管理</a></li>
</ul>
<!-- タグ終了 -->

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

<button class="btn btn-primary btn-lg col-md-1" data-toggle="modal" data-target="#myModal">
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
<div class="form-group col-md-1">
	<label for="mydate"></label>
	<input type="text" class="form-control" id="mydate">
</div>

<div class="col-md-10"></div>
</div>
<!-- カレンダーEND -->




<!-- ドラッグ&ドロップ -->
<div  class="col-md-1 ">
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
	</div>
</div>
</div>

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
        	<p class="size" id="NCS802_1-drop">1　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-1"></textarea></p>
            <p class="size" id="NCS802_2-drop">2　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-2"></textarea></p>
            <p class="size" id="NCS802_3-drop">3　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-3"></textarea></p>
			<p class="size" id="NCS802_4-drop">4　　<textarea cols="6" rows="1" style="overflow: auto;" id="NCS802-4"></textarea></p>
        </td>

        <td class="size">803</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS803-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS803-2" size="10" maxlength="10"></p>
        	<p class="size">3　　<input type="text" name="NCS803-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS803-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td class="size">7F</td>
        <td class="size">701</td>
        <td class="size">
        <p class="size">1　　<input type="text" name="NCS701-1" size="10" maxlength="10"></p>
           <p class="size">2　　<input type="text" name="NCS701-2" size="10" maxlength="10"></p>
           <p class="size">3　　<input type="text" name="NCS701-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS701-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">702</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS702-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS702-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS702-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS702-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td class="size">6F</td>
        <td class="size">601</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS601-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS601-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS601-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS601-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">603</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS603-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS603-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS603-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS603-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">604</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS604-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS604-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS604-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS604-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td class="size">5F</td>
        <td class="size">501</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS501-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS501-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS501-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS501-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">502</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS502-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS502-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS502-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS502-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">503</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS503-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS503-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS503-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS503-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">504</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS504-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS504-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS504-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS504-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td class="size">4F</td>
        <td class="size">401</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS401-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS401-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS401-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS401-4" size="10" maxlength="10"></p>
        </td>
    	<td class="size">402</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS402-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS402-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS402-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS402-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">403</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS403-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS403-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS403-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS403-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">404</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS404-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS404-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS404-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS404-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td class="size">3F</td>
        <td class="size">301</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS301-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS301-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS301-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS301-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">302</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS302-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS302-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS302-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS302-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">303</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS303-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS303-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS303-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS303-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">304</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS304-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS304-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS304-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS304-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td class="size">2F</td>
        <td class="size">201</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NCS201-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NCS201-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NCS201-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NCS201-4" size="10" maxlength="10"></p>
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
        	<p class="size">1　　<input type="text" name="NMIC501-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC501-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC501-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC501-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">502</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC502-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC502-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC502-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC502-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">503</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC503-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC503-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC503-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC503-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink2">
    	<td class="size">4F</td>
        <td class="size">401</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC401-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC401-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC401-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC401-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">402</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC402-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC402-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC402-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC402-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">403</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC403-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC403-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC403-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC403-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">404</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC404-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC404-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC404-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC404-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink3">
    	<td class="size">3F</td>
        <td class="size">301</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC301-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC301-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC301-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC301-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">302</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC302-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC302-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC302-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC302-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">303</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC303-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC303-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC303-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC303-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">304</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC304-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC304-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC304-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC304-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink2">
    	<td class="size">2F</td>
        <td class="size">201</td>
        <td class="size">
       		<p class="size">1　　<input type="text" name="NMIC201-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC201-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC201-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC201-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">202</td>
        <td class="size">
       		<p class="size">1　　<input type="text" name="NMIC202-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC202-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC202-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC202-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">203</td>
        <td class="size">
       		<p class="size">1　　<input type="text" name="NMIC203-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC203-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC203-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC203-4" size="10" maxlength="10"></p>
        </td>
        <td class="size">204</td>
        <td class="size">
       		<p class="size">1　　<input type="text" name="NMIC204-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC204-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC204-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC204-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink3">
    	<td class="size">1F</td>
        <td class="size">101</td>
        <td class="size">
        	<p class="size">1　　<input type="text" name="NMIC101-1" size="10" maxlength="10"></p>
            <p class="size">2　　<input type="text" name="NMIC101-2" size="10" maxlength="10"></p>
            <p class="size">3　　<input type="text" name="NMIC101-3" size="10" maxlength="10"></p>
            <p class="size">4　　<input type="text" name="NMIC101-4" size="10" maxlength="10"></p>
        </td>

    </tr>
		</table>
  </div>





</div>




</body>
</html>