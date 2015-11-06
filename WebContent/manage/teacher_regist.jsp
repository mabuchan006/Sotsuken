
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

<link href="../css/custom.css" rel="stylesheet">

<!-- BootstrapのCSS読み込み -->

<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- jQuery読み込み -->

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<!-- BootstrapのJS読み込み -->

<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>


</head>
<body>

<div class="center">
<form action="" method="get">
<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-3">

<h1>講師管理</h1>


	<div class="table-responsive">
	            <table class="table table-striped table-bordered">
	                <tbody>
	                    <tr>

	                        <td class="select" onclick="<c:set var="data" value="阿知波" />">阿知波</td>
	                        <td class="select">伊藤吉</td>
	                        <td class="select">伊藤彰</td>
	                        <td class="select">稲垣</td>
	                        <td class="select">宇佐美</td>
	                    </tr>
	                    <tr>

	                        <td class="select">河合</td>
	                        <td class="select">外山</td>
	                        <td class="select">梶田</td>
	                        <td class="select">吉田</td>
	                        <td class="select">近藤</td>


	                    </tr>
	                    <tr>

	                        <td class="select">元木</td>
	                        <td class="select">古市</td>
	                        <td class="select">高木俊</td>
	                        <td class="select">高木哲</td>
	                        <td class="select">佐野</td>


	                    </tr>

	                </tbody>
	            </table>
	</div><!--tableresponsive-->





	<button type="button" class="btn btn-danger">削除</button>


	<button type="button" class="btn btn-success">編集</button>






			<p>名前
			<input type="text" class="form-control" value="${data }" /></p>
			<p>名前
			<input type="text" class="form-control" /></p>
			<p>名前
			<input type="text" class="form-control" /></p>
			<p>名前
			<input type="text" class="form-control" /></p>
			<p>名前
			<input type="text" class="form-control" /></p>


			<button type="button" class="btn btn-primary">登録</button>


		</div>
	</div>

</form>
</div>



</body>
</html>