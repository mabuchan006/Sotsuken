<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- BootstrapのCSS読み込み -->
<link href="../bootstrap/css/style.css" rel="stylesheet">
<link href="../bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="../css/custom.css" rel="stylesheet">

<link href="../css/font-awesome.min.css" rel="stylesheet">
<link href="../css/pure-drawer.css" rel="stylesheet">


<script src="../js/jquery-2.1.1.min.js"></script>
<script src="../bootstrap/js/bootstrap.min.js"></script>
<script src="../js/jquery.appear.js"></script>
<script src="../js/teacher_regist.js"></script>



<c:if test= "${!empty Msg }">
<script>
toastSelect("success","${Msg }")</script>
</c:if>

<c:if test=  "${!empty err_Msg }">
<script>toastSelect("error","${err_Msg }")</script>
</c:if>

<div class="row col-md-9">


<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden"name="page" value="class_manage">

<table class="col-md-9 col-md-offset-3" id="first_table">
				<tr>
					<td class="col-md-3"><label for="IventName" class="labels">イベント名</label>
						<input type="text" class="form-control" id="eventName"
						name="event_name"> <label for="Time" class="labels">日時</label>
						<input type="text" class="form-control" name="time"></td>



					<td class="col-md-3"><label for="text" class="labels">コマ</label>
						<select class="form-control col-md-1">
							<option style="color: black;">1</option>
							<option style="color: black;">2</option>
							<option style="color: black;">3</option>
							<option style="color: black;">4</option>
							<option style="color: black;">ALL</option>

					</select> <label for="text" class="labels">講師</label> <input type="text"
						class="form-control" name="teacher"></td>

					<td class="col-md-3"><label for="text" class="labels">教室</label>
						<input type="text" class="form-control" name="room"> <label
						for="text" class="labels">クラス名</label> <input type="text"
						class="form-control" name="class"></td>



					<td class="col-md-3"><label for="password" class="empty">________</label>
						<button type="submit" class="btn btn-primary col-md-2" id="regist_btn"
							name="regist_event">登録</button></td>
				</tr>
</table>
</form><!-- 登録終わり -->



<!-- クラス一覧表示 -->
<div class="col-md-9 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3">クラス一覧   ( ${cnt } 件)</td></tr>
</thead>
<tbody>
<!-- クラス情報取得 -->
<c:forEach var="rs" items="${classList }">
<tr class="select">
<td class="classid">${rs.classID}</td>
<td class="classname" data-name="${rs.classID}">${rs.className}</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_class "name="edit_class" ><i class="fa fa-pencil-square-o fa-2x"></i></button>

<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate?page=class_manage" method="post">
<input type="hidden" name = "classID" value="${rs.classID }" />
<input type="hidden" name = "className" value="${rs.className }" />
<button type="submit" class="btn btn-danger"name="delete_class" ><i class="fa fa-trash-o fa-2x"></i></button>
</form>
<!-- 削除 -->
</div>
</td>

</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>
