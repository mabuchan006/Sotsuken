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
<input type="hidden"name="page" value="event_manage">
<table class="col-md-9 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-3"><label for="EventName" class="labels">イベント名</label>
	<input type="text" class="form-control" name="eventName">
</td>

<td class="col-md-3">
<label for="text" class="labels">コマ</label>
<input type="text" autocomplete="on" list="period" class="form-control" name="period">

</td>

<td class="col-md-3"><label for="text" class="labels">教室</label>
<input type="text" class="form-control" name="roomName">
</td>
<td></td>

</tr>
<tr>
<td class="col-md-3">
	<label for="Time" class="labels">日時</label>
	 <input type="text" class="form-control datepicker"  name="eventDate">
</td>

<td class="col-md-3">

 <label for="text" class="labels">講師</label>
 <input type="text" class="form-control" name="guestTeacher"></td>

<td class="col-md-3">
<label for="text" class="labels">クラス名</label>
 <input type="text" class="form-control" name="class_id"></td>



<td class="col-md-3">
<label for="password" class="empty">________</label>
<button type="submit" class="btn btn-primary col-md-2"id="regist_btn"name="regist_event">登録</button>
</td>
</tr>
</table>
</form><!-- 登録終わり -->



<!-- クラス一覧表示 -->
<div class="col-md-9 col-md-offset-3">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3">イベント一覧   ( ${cnt } 件)</td></tr>
</thead>
<tbody>
<!-- イベント情報取得 -->
<c:forEach var="rs" items="${eventList }">
<tr class="select">
<td class="eventname"  data-name="${rs.eventName}">${rs.eventName}</td>
<td>
<td class="period"  data-name="${rs.period}">${rs.period}　時限目</td>
<td>
<td class="date"  data-name="${rs.date}">${rs.date}</td>
<td>
<td class="classID"  data-name="${rs.classID}">${rs.classID}</td>
<td>
<td class="roomID"  data-name="${rs.roomName}">${rs.roomName}</td>
<td>
<td class="guestTeacher"  data-name="${rs.guestTeacher}">${rs.guestTeacher}</td>
<td>
<td class="notice"  data-name="${rs.notice}">${rs.notice}</td>
<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_event "name="edit_event" ><i class="fa fa-pencil-square-o fa-2x"></i></button>

<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate?page=event_manage" method="post">
<input type="hidden" name = "eventID" value="${rs.eventID }" />
<input type="hidden" name = "eventName" value="${rs.eventName }" />
<button type="submit" class="btn btn-danger"name="delete_event" ><i class="fa fa-trash-o fa-2x"></i></button>
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

<!-- 表示用datalist -->
<!-- コマ -->
<datalist id="period">
    <option value="1">
    <option value="2">
    <option value="3">
    <option value="4">
</datalist>

<!-- class -->
<datalist id="class">
<c:forEach var="rs" items="${classList }">
<option style="color: black;" value="${rs.classID}">${rs.classID}</option>
</c:forEach>
</datalist>

<!-- teacher -->
<datalist id="teacher">
<c:forEach var="rs" items="${teacherList }">
<option style="color: black;" value="${rs.teacherID}">${rs.teacherName}</option>
</c:forEach>
</datalist>

<!-- room -->
<datalist id="room">
<c:forEach var="rs" items="${roomList }">
<option style="color: black;"  value="${rs.roomID}">${rs.roomName}</option>
</c:forEach>
</datalist>

<!-- 日にち -->
<script type="text/javascript">
        $( document ).ready(function() {
           $('.datepicker').datepicker( {
        	   language: 'ja',
 			  daysOfWeekDisabled: [ '0', '2', '3', '4', '5', '6', ],
 			  format: 'yyyy/mm/dd',
            } );
        });
   </script>




