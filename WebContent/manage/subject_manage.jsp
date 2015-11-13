
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
<!-- css -->
<link href="../css/custom.css" rel="stylesheet">
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
<!-- js -->
<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="../js/teacher_regist.js"></script>



</head>
<body>


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
		    <label for="teacherName" class="labels">科目名</label>
		    <input type="text" class="form-control" id="teacherName" name="teacherName" >
</td>

<td class="col-md-4">
			<label for="class1" class="labels">学年１</label>
			<select class="selectpicker">
 				<option value="R4">R4</option>
  				<option value="R3">R3</option>
 				<option value="R2">R2</option>
 				<option value="R1">R1</option>
			</select>

</td>

<td class="col-md-4">
			<label for="class2" class="labels">クラス1</label>
			<select class="selectpicker">
 				<option value="A1">S4</option>
  				<option value="A2">A2</option>
 				<option value="A3">A3</option>
 				<option value="H1">H1</option>
			</select>
</td>



<td class="col-md-4">
			<label for="class2" class="labels">学年2</label>
			<select class="selectpicker">
 				<option value="S3">S4</option>
  				<option value="S2">S3</option>
 				<option value="S1">S2</option>
 				<option value="J1">J1</option>
			</select>
</td>

<td class="col-md-4">
			<label for="class2" class="labels">クラス1</label>
			<select class="selectpicker">
 				<option value="A1">S4</option>
  				<option value="A2">A2</option>
 				<option value="A3">A3</option>
 				<option value="H1">H1</option>
			</select>
</td>

<td class="col-md-4">
	<label for="password" class="empty">________</label>
		<button type="button" class="btn btn-primary" id="regist_btn">登録</button>
</td>




</tr>



<div class="checkbox">
    <label>
      <input type="checkbox"> 全体表示
    </label>
</div>



	</table>


<div class="col-md-9 col-md-offset-3">

		            <table class="table">
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
		            </div>

</form>

</div>




</body>
</html>
