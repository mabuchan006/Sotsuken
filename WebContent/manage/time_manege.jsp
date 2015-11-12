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

		 <!-- Custom CSS -->
        <link href="../css/style.css" rel="stylesheet">
          <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

        <!-- カレンダーJS読み込み -->
<link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap-datepicker.min.css">
<script type="text/javascript" src="../bootstrap/js/bootstrap-datepicker.min.js"></script>
<script type="text/javascript" src="../bootstrap/js/bootstrap-datepicker.js"></script>

<title>コマ割画面</title>
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
                            <h1>Create Schedule</h1>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->


        <!-- カレンダー部分 -->
<div class="form-group">
	<label for="mydate">日付：</label>
	<input type="text" class="form-control" id="mydate">
</div>
<!-- カレンダーEND -->
<h1 class="text-center">NCS</h1>
    <div  class="container">
    <div class="table">
    <table class="table table-striped table-bordered text-center table-hover;">
    <thead>

      </thead>
		<tbody>
		<tr class="danger">
    	<td >8F</td>

        <td >802</td>
        <td >
        	<p>1　　<input type="text" name="NCS802-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS802-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS802-3" size="10" maxlength="10"></p>
			<p>4　　<input type="text" name="NCS802-4" size="10" maxlength="10"></p>
        </td>

        <td >803</td>
        <td >
        	<p>1　　<input type="text" name="NCS803-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS803-2" size="10" maxlength="10"></p>
        	<p>3　　<input type="text" name="NCS803-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS803-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td >7F</td>
        <td >701</td>
        <td >
        <p>1　　<input type="text" name="NCS701-1" size="10" maxlength="10"></p>
           <p>2　　<input type="text" name="NCS701-2" size="10" maxlength="10"></p>
           <p>3　　<input type="text" name="NCS701-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS701-4" size="10" maxlength="10"></p>
        </td>
        <td >702</td>
        <td >
        	<p>1　　<input type="text" name="NCS702-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS702-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS702-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS702-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td >6F</td>
        <td >601</td>
        <td >
        	<p>1　　<input type="text" name="NCS601-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS601-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS601-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS601-4" size="10" maxlength="10"></p>
        </td>
        <td >603</td>
        <td >
        	<p>1　　<input type="text" name="NCS603-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS603-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS603-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS603-4" size="10" maxlength="10"></p>
        </td>
        <td >604</td>
        <td >
        	<p>1　　<input type="text" name="NCS604-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS604-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS604-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS604-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td >5F</td>
        <td >501</td>
        <td >
        	<p>1　　<input type="text" name="NCS501-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS501-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS501-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS501-4" size="10" maxlength="10"></p>
        </td>
        <td >502</td>
        <td >
        	<p>1　　<input type="text" name="NCS502-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS502-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS502-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS502-4" size="10" maxlength="10"></p>
        </td>
        <td >503</td>
        <td >
        	<p>1　　<input type="text" name="NCS503-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS503-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS503-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS503-4" size="10" maxlength="10"></p>
        </td>
        <td >504</td>
        <td >
        	<p>1　　<input type="text" name="NCS504-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS504-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS504-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS504-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td >4F</td>
        <td >401</td>
        <td >
        	<p>1　　<input type="text" name="NCS401-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS401-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS401-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS401-4" size="10" maxlength="10"></p>
        </td>
    	<td >402</td>
        <td >
        	<p>1　　<input type="text" name="NCS402-1" size="10" maxlength="10"></p>
           <p>2　　</p> <input type="text" name="NCS402-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS402-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS402-4" size="10" maxlength="10"></p>
        </td>
        <td >403</td>
        <td >
        	<p>1　　<input type="text" name="NCS403-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS403-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS403-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS403-4" size="10" maxlength="10"></p>
        </td>
        <td >404</td>
        <td >
        	<p>1　　<input type="text" name="NCS404-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS404-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS404-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS404-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink1">
    	<td >3F</td>
        <td >301</td>
        <td >
        	<p>1　　<input type="text" name="NCS301-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS301-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS301-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS301-4" size="10" maxlength="10"></p>
        </td>
        <td >302</td>
        <td >
        	<p>1　　<input type="text" name="NCS302-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS302-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS302-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS302-4" size="10" maxlength="10"></p>
        </td>
        <td >303</td>
        <td >
        	<p>1　　<input type="text" name="NCS303-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS303-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS303-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS303-4" size="10" maxlength="10"></p>
        </td>
        <td >304</td>
        <td >
        	<p>1　　<input type="text" name="NCS304-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS304-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS304-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS304-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="danger">
    	<td >2F</td>
        <td >201</td>
        <td >
        	<p>1　　<input type="text" name="NCS201-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NCS201-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NCS201-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NCS201-4" size="10" maxlength="10"></p>
        </td>
    </tr>

</table>
</div>
</div>

<h1 class="text-center">NMIC</h1>
<div  class="container">
    <div class="table">
    <table class="table table-striped table-bordered text-center table-hover;">
    <thead>

      </thead>
		<tbody>
	<tr class="pink3">
    	<td >5F</td>
        <td >501</td>
        <td >
        	<p>1　　<input type="text" name="NMIC501-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC501-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC501-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC501-4" size="10" maxlength="10"></p>
        </td>
        <td >502</td>
        <td >
        	<p>1　　<input type="text" name="NMIC502-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC502-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC502-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC502-4" size="10" maxlength="10"></p>
        </td>
        <td >503</td>
        <td >
        	<p>1　　<input type="text" name="NMIC503-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC503-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC503-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC503-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink2">
    	<td >4F</td>
        <td >401</td>
        <td >
        	<p>1　　<input type="text" name="NMIC401-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC401-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC401-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC401-4" size="10" maxlength="10"></p>
        </td>
        <td >402</td>
        <td >
        	<input type="text" name="NMIC402-1" size="10" maxlength="10"></p>
            <input type="text" name="NMIC402-2" size="10" maxlength="10"></p>
            <input type="text" name="NMIC402-3" size="10" maxlength="10"></p>
            <input type="text" name="NMIC402-4" size="10" maxlength="10"></p>
        </td>
        <td >403</td>
        <td >
        	<p>1　　<input type="text" name="NMIC403-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC403-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC403-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC403-4" size="10" maxlength="10"></p>
        </td>
        <td >404</td>
        <td >
        	<p>1　　<input type="text" name="NMIC404-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC404-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC404-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC404-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink3">
    	<td >3F</td>
        <td >301</td>
        <td >
        	<p>1　　<input type="text" name="NMIC301-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC301-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC301-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC301-4" size="10" maxlength="10"></p>
        </td>
        <td >302</td>
        <td >
        	<p>1　　<input type="text" name="NMIC302-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC302-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC302-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC302-4" size="10" maxlength="10"></p>
        </td>
        <td >303</td>
        <td >
        	<p>1　　<input type="text" name="NMIC303-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC303-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC303-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC303-4" size="10" maxlength="10"></p>
        </td>
        <td >304</td>
        <td >
        	<p>1　　<input type="text" name="NMIC304-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC304-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC304-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC304-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink2">
    	<td >2F</td>
        <td >201</td>
        <td >
       		<p>1　　<input type="text" name="NMIC201-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC201-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC201-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC201-4" size="10" maxlength="10"></p>
        </td>
        <td >202</td>
        <td >
       		<p>1　　<input type="text" name="NMIC202-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC202-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC202-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC202-4" size="10" maxlength="10"></p>
        </td>
        <td >203</td>
        <td >
       		<p>1　　<input type="text" name="NMIC203-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC203-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC203-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC203-4" size="10" maxlength="10"></p>
        </td>
        <td >204</td>
        <td >
       		<p>1　　<input type="text" name="NMIC204-1" size="10" maxlength="10"></p>
            <p>2　　<input type="text" name="NMIC204-2" size="10" maxlength="10"></p>
            <p>3　　<input type="text" name="NMIC204-3" size="10" maxlength="10"></p>
            <p>4　　<input type="text" name="NMIC204-4" size="10" maxlength="10"></p>
        </td>
    </tr>
    <tr class="pink3">
    	<td >1F</td>
        <td >101</td>
        <td >
        	<p>1　　<input type="text" name="NMIC101-1" size="10" maxlength="10"></p>
            <p>2　　  <input type="text" name="NMIC101-2" size="10" maxlength="10"></p>
            <p>3　　  <input type="text" name="NMIC101-3" size="10" maxlength="10"></p>
            <p>4　　  <input type="text" name="NMIC101-4" size="10" maxlength="10"></p>
        </td>

    </tr>
		</table>
  </div>





</div>




</body>
</html>