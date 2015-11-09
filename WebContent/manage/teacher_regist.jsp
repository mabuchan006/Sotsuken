
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
<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="../js/teacher_regist.js"></script>



</head>
<body>

<div class="center">
<form action="" method="get">
<div class="container">
<div class="row">
<div class="col-md-10 col-md-offset-3">

<h1>講師管理</h1>


	<div class="table-responsive">
	            <table class="table table-bordered">
	                <tbody>
	                    <tr>


	                        <td class="select">阿知波</td>
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
	<label for="teacherName" id="labelName"></label>
	<button type="button" class="btn btn-danger">削除</button>

			<div class="form-group">
		    <label for="teacherName">名前</label>
		    <input type="text" class="form-control" id="teacherName" name="teacherName" >
		  </div>

		<div class="form-group">
		    <label for="password">パスワード</label>
		    <input type="password" class="form-control" name="password" >
		  </div>

			<button type="button" class="btn btn-primary">登録</button>
			<button type="button" class="btn btn-success">更新</button>

		</div>
	</div>
</div>
</form>
</div>


</body>
</html>