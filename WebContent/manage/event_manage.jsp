<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

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
	<input type="text" class="form-control" name="eventName" placeholder="イベント入力">
</td>
<td class="col-md-3">
	<label for="Time" class="labels">日時</label>
  <input type="text" class="form-control eventDate" placeholder="日付入力" name="eventDate">

</td>
<td class="col-md-3">
<label for="text" class="labels">コマ</label>
<input type="text" class="form-control" name="period" list="period" placeholder="コマ入力" multiple>

</td>


<td></td>

</tr>
<tr>
<td class="col-md-3"><label for="text" class="labels">教室</label>
<input type="text" class="form-control" name="roomName" placeholder="教室名入力" list="room">
</td>


<td class="col-md-3">

 <label for="text" class="labels">講師</label>
 <input type="text" class="form-control" name="guestTeacher" placeholder="担当講師入力" list="teacher"></td>

<td class="col-md-3">
<label for="text" class="labels">クラス名</label>
 <input type="text" class="form-control" name="class_id" placeholder="クラス名入力" list="class"></td>


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
<tr class="wide">


<td colspan="3">イベント一覧   ( ${cnt }) 件</td>

</tr>
</thead>
<tbody>
<!-- イベント情報取得 -->
<c:forEach var="rs" items="${eventList }">
<tr class="select">
<!-- カレンダー情報取得 -->
<td><div class="Ecalendar">
<div class="Ecalendar_month">
${rs.date[1] }
</div>
<div class="Ecalendar_week">
${rs.date[3] }
</div>
<div class="Ecalendar_day">
${rs.date[2] }
</div>

</div>
</td>
<td>

<!-- 主要イベント情報 -->
<ol class="eventpost">
<li class="event_li" class=" col-md-12"><span class="eventName" data-name="${rs.eventID}">${rs.eventName}</span></li>

<div class="col-md-12">

<li class="event_li"><span class="period label label-pill label-default">${rs.period}時限目</span></li>
<li class="event_li"><span class="classID label label-pill label-primary">${rs.classID}</span></li>
<li class="event_li"><span class="roomID label label-pill label-warning">${rs.roomName}</span></li>
<li class="event_li"><span class="guestTeacher label-pill label label-info">${rs.guestTeacher}</span>
</li>

</div>

</ol>

<td>
<div style="display:inline-flex">
<button type="button" class="btn btn-success edit_event "name="edit_event" ><i class="fa fa-pencil-square-o fa-2x"></i></button>

<!-- 削除用フォーム -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden" name = "event_id" value="${rs.eventID }" />

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
<option style="color: black;" value="ALL">ALL</option>
<c:forEach var="rs" items="${classList }">
<option style="color: black;" value="${rs.classID}">${rs.classID}</option>
</c:forEach>
</datalist>


<!-- teacher -->
<datalist id="teacher">
<c:forEach var="rs" items="${teacherList }">
<option style="color: black;" value="${rs.teacherName}">${rs.teacherName}</option>
</c:forEach>
</datalist>

<!-- room -->
<datalist id="room">
<c:forEach var="rs" items="${roomList }">
<option style="color: black;"  value="${rs}">${rs}</option>
</c:forEach>
</datalist>

<!-- 日にち -->
<script type="text/javascript">

$('.eventDate').datepicker({
    language: "ja",
    autoclose: true,
    format: 'yyyy/mm/dd/DD',
});

</script>



