<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row col-md-9">

<!-- イベント一覧表示 -->
<div class="col-md-9 col-md-offset-4">
<div class="back">
<table class="table ">
<thead>
<tr class="info wide">
<td colspan="3"><h4>年間イベント一覧</h4> </td></tr>
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
<span class="notice" data-name="${rs.eventID}">${rs.notice}</span>
</li>
<button class="notice-slide"><i class="col-md-1 col-md-offset-3 fa fa-arrow-circle-right notice-slide"></i>
</button>
<div class="col-md-12">

<li class="event_li"><span class="period label label-pill label-default">${rs.period}時限目</span></li>
<li class="event_li"><span class="classID label label-pill label-primary">${rs.classID}</span></li>
<li class="event_li"><span class="roomID label label-pill label-warning">${rs.roomName}</span></li>
<li class="event_li"><span class="guestTeacher label-pill label label-info">${rs.guestTeacher}</span>
</li>

</div>

</ol>



</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>






