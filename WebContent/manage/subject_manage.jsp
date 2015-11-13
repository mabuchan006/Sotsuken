
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
       <meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>科目管理</title>



<!-- BootstrapのCSS読み込み -->
<link href="../bootstrap/css/style.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="../js/teacher_regist.js"></script>

<link href="../css/custom.css" rel="stylesheet">

</head>
<body>

<<<<<<< HEAD
      <div class="row">
<ul class="nav nav-tabs">
	<li><a href="#tab1" data-toggle="tab">管理者メニュー</a></li>
	<li><a href="#tab2" data-toggle="tab">時間割管理</a></li>
	<li><a href="#tab2" data-toggle="tab">講師管理</a></li>
	<li class="active"><a href="#tab2" data-toggle="tab">科目管理</a></li>
	<li><a href="#tab2" data-toggle="tab">クラス管理</a></li>
	<li><a href="#tab2" data-toggle="tab">コマ割管理</a></li>

</ul>

		<div class="content-header">



		<div id="logo">
          <h1>
            科目管理
          </h1>
          </div>

        </div>

<form action="" method="get">




<table class="col-md-6 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-4">
		    <label for="subjectName" class="labels">科目名</label>
		    <input type="text" class="form-control" id="subjectName" name="subjectName" >


			<label for="password" class="labels">持ち物</label>
			<input type="password" class="form-control" name="password" >
</td>



<td class="col-md-4">
<label for="password" class="labels">学年</label>
<select class="form-control col-md-1">
<option style="color: black;">R1</option>
  <option style="color: black;">R1</option>
  <option style="color: black;">R2</option>
  <option style="color: black;">R3</option>
  <option style="color: black;">R4</option>

</select>
<label for="password" class="labels">学科</label>
<select class="form-control col-md-1">
<option style="color: black;">R1</option>
  <option style="color: black;">R1</option>
  <option style="color: black;">R2</option>
  <option style="color: black;">R3</option>
  <option style="color: black;">R4</option>
  <option style="color: black;">ALL</option>

</select>
</td>
<td class="col-md-4">
<label for="password" class="labels">学年</label>
<select class="form-control col-md-1">
<option style="color: black;">R1</option>
  <option style="color: black;">R1</option>
  <option style="color: black;">R2</option>
  <option style="color: black;">R3</option>
  <option style="color: black;">R4</option>


</select>
<label for="password" class="labels">学科</label>
<select class="form-control col-md-1">
<option style="color: black;">R1</option>
  <option style="color: black;">R1</option>
  <option style="color: black;">R2</option>
  <option style="color: black;">R3</option>
  <option style="color: black;">R4</option>
  <option style="color: black;">ALL</option>

</select>
</td>



<td class="col-md-4">
	<label for="password" class="empty">________</label>
		<button type="button" class="btn btn-primary" id="regist_btn">登録</button>
</td>
</tr>



	</table>


<div class="col-md-6 col-md-offset-3">
	<div class="back">
		            <table class="table ">
						<thead>
						<tr><td colspan="2">Subject List</td></tr>
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
		            </div>
		            </div>

</form>

</div>




</body>
</html>
