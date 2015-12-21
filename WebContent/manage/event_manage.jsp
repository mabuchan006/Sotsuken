
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
  <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ja">
<head>
       <meta charset="utf-8">

<meta http-equiv="X-UA-Compatible" content="IE=edge">

<meta name="viewport" content="width=device-width, initial-scale=1">

<title>イベント管理</title>



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


      <div class="row">


		<div class="content-header">



		<div id="logo">
          <h1 class="font1">
           イベント管理
          </h1>
          </div>

        </div>
<!-- 登録 -->
<form action="/Sotsuken/ManageUpdate" method="get">




<table class="col-md-6 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-4">
		    <label for="IventName" class="labels">イベント名</label>
		    <input type="text" class="form-control" id="eventName" name="event_name" >


			<label for="Time" class="labels">日時</label>
			<input type="text" class="form-control" name="time" >
</td>



<td class="col-md-4">
<label for="text" class="labels">コマ</label>
<select class="form-control col-md-1">
<option style="color: black;">1</option>
<option style="color: black;">2</option>
<option style="color: black;">3</option>
<option style="color: black;">4</option>
<option style="color: black;">ALL</option>

</select>

<label for="text" class="labels">講師</label>
<input type="text" class="form-control" name="teacher" >

</td>

<td class="col-md-4">
<label for="text" class="labels">教室</label>
<input type="text" class="form-control" name="room" >

<label for="text" class="labels">クラス名</label>
<input type="text" class="form-control" name="class" >

</td>



<td class="col-md-4">
	<label for="password" class="empty">________</label>
		<button type="submit" class="btn btn-primary" id="regist_btn" name="regist_event">登録</button>
</td>
</tr>



</table>
</form>
<!-- 登録終わり -->

<!-- 登録情報表示 -->
<div class="col-md-6 col-md-offset-3">
	<div class="back">
		            <table class="table ">
						<thead>
						<tr><td colspan="7">event List</td></tr>
						</thead>

		                <tbody>



		                    <tr>
		                        <td>イベント名</td><td>日時</td><td>コマ</td><td>教室</td><td>講師</td><td>クラス名</td>
		                        <td>
									<form action="/Sotsuken/ManageUpdate" method="get">
										<input type="hidden" name="eventID" value="${rs.eventID }" />
										<input type="hidden" name="eventName" value="${rs.eventName }" />
										<button type="submit" class="btn btn-danger"name="delete_event" ><i class="fa fa-trash-o fa-2x"></i></button>
									</form>
								</td>

		                    </tr>

		                </tbody>
		            </table>
		            </div>
		            </div>


</div>




</body>
</html>
