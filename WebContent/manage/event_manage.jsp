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

<div class="row col-md-9"id="top">
<div class="col-md-1 col-md-offset-9 fix margin-top">

		<a href="#top"><i class="fa fa-arrow-circle-up fa-4x i-color fix up-icon"></i></a>

		</div>

<!-- 登録処理 -->
<form action="/Sotsuken/ManageUpdate" method="post">
<input type="hidden"name="page" value="event_manage">
<input type="hidden"name="endFlag" id="endFlagid" value="0">
<table class="col-md-9 col-md-offset-3" id="first_table">
<tr>
<td class="col-md-3"><label for="EventName" class="labels">イベント名</label>
	<input type="text" class="form-control" name="eventName" placeholder="イベント ">
</td>
<td class="col-md-3">
	<label for="Time" class="labels">日付</label>
  <input type="text" class="form-control eventDate" placeholder="日付 " name="eventDate">

</td>
<td class="col-md-3">

<label for="text" class="labels pireodC">コマ</label>

<div class="col-md-12">
<ol id="selectable">
  <li class="ui-state-default select4 bo" id="1">1</li>
  <li class="ui-state-default select4 bo" id="2">2</li>
  <li class="ui-state-default select4 bo" id="3">3</li>
  <li class="ui-state-default select4 bo" id="4">4</li>
  <li class="ui-state-default select4 bo" id="ALL">終</li>
 </ol>
</div>
<input type="hidden" name="period" id="period" value="" />
</td>


<td></td>

</tr>
<tr>
<td class="col-md-3"><label for="text" class="labels">場所</label>
<input type="text" class="form-control" name="roomName" placeholder="場所 " list="room">
</td>


<td class="col-md-3">

 <label for="text" class="labels">講師</label>
 <input type="text" class="form-control" name="guestTeacher" placeholder="担当講師 " list="teacher"></td>

<td class="col-md-3">
<label for="text" class="labels">クラス</label>
 <input type="text" class="form-control" name="class_id" placeholder="クラス" list="class"></td>


<td class="col-md-3">
<label for="password" class="empty">________</label>
<button type="submit" class="btn btn-primary col-md-2"id="regist_btn"name="regist_event">登録</button>
</td>
</tr>
<tr>
<td class="col-md-9" colspan="4"><label for="text" class="labels">概要</label>
<input type="text" class="form-control" name="notice" placeholder="概要" >
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

<td>日付</td>
<td>イベント情報</td>

<td class="right">${cnt }　件</td>

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
<li class="event_li" class=" col-md-8">
<span class="eventName" data-name="${rs.eventID}">${rs.eventName}</span>
<!-- <span class="notice" id="noticeID" data-name="${rs.eventID}">${rs.notice}</span>-->
</li>
<!--<i class="col-md-1 col-md-offset-3 fa fa-arrow-circle-right " id="notice-slide"></i>-->

<div class="col-md-12">

<li class="event_li">
<c:if test=  "${rs.endFlag==1 }">
<span class="period label label-pill label-default">終日</span>

</c:if>
<c:if test=  "${rs.endFlag==0 }">
<span class="period label label-pill label-default">${rs.period}限目</span>
</c:if></li>
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
<input type="hidden"name="page" value="event_manage">
<input type="hidden" name = "class_id" value="${rs.classID}" />
<input type="hidden" name = "event_id" value="${rs.eventID }" />
<input type="hidden" name = "eventName" value="${rs.eventName }" />
<button type="submit" class="btn btn-danger delete"name="delete_event" ><i class="fa fa-trash-o fa-2x"></i></button>
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



