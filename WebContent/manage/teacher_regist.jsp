
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
       <meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>講師管理</title>

<!-- BootstrapのCSS読み込み -->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- jQuery読み込み -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<!-- BootstrapのJS読み込み -->

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</head>
<body>

<form action="" method="get">
<div class="container">
<div class="row">

<h1>講師管理</h1>



	<div class="table-responsive">
	            <table class="table table-striped table-bordered">
	                <tbody>
	                    <tr>

	                        <td>阿知波</td>
	                        <td>伊藤吉</td>
	                        <td>伊藤彰</td>
	                        <td>稲垣</td>
	                        <td>宇佐美</td>
	                    </tr>
	                    <tr>

	                        <td>河合</td>
	                        <td>外山</td>
	                        <td>梶田</td>
	                        <td>吉田</td>
	                        <td>近藤</td>


	                    </tr>
	                    <tr>

	                        <td>元木</td>
	                        <td>古市</td>
	                        <td>高木俊</td>
	                        <td>高木哲</td>
	                        <td>佐野</td>


	                    </tr>

	                </tbody>
	            </table>
	</div><!--tableresponsive-->




	<div class="col-md-６ ">
	<button type="button" class="btn btn-danger">削除</button>
	</div>
	<div class="col-md-６ ">
	<button type="button" class="btn btn-success">編集</button>
	</div>
  		<div class="col-md-9 col-md-offset-3">




			名前
			<input type="text" class="form-control" />
			名前
			<input type="text" class="form-control" />
			名前
			<input type="text" class="form-control" />
			名前
			<input type="text" class="form-control" />
			名前
			<input type="text" class="form-control" />


			<button type="button" class="btn btn-primary">登録</button>
		</div>
	</div>
</div>
</form>

</body>
</html>