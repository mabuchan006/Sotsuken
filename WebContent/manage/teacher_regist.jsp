
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




<div class="row">

<div class="col-md-6 col-md-offset-3">
	<h1>講師管理</h1>
	<form action="" method="get">

	<div class="header">
	<table class="table" id="first_table">
	<tr>
		<td>
		    <label for="teacherName" class="labels">名前</label>
		</td>
		<td>
			<label for="password" class="labels">パスワード</label>
		</td>
	</tr>
	<tr>
	<td>

		    <input type="text" class="form-control" id="teacherName" name="teacherName" >
	</td>
	<td>

			<input type="password" class="form-control" name="password" >
	</td>
	<td rowspan="2">

		<button type="button" class="btn btn-primary" id="regist_btn">登録</button>
	</td>
</tr>
	</table>
	</div>

		            <table class="table" id="table">
						<thead>
						<tr><td colspan="2">lecturers</td></tr>
						</thead>

		                <tbody>
		                    <tr class="select">
		                        <td>阿知波</td>
		                        <td><button type="button" class="btn btn-danger">削除</button></td>

		                    </tr>
		                    <tr class="select">
		                        <td>河合</td>
								<td><button type="button" class="btn btn-danger">削除</button></td>


		                    </tr>
		                    <tr class="select">
		                        <td>元木</td>
								<td><button type="button" class="btn btn-danger">削除</button></td>

		                    </tr>

		                </tbody>
		            </table>
		    </form>
	</div>
</div>






</body>
</html>