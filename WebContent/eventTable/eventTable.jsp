<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="row col-md-9">


	<ul class="nav nav-tabs noprint">
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R4
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R4A1">R4A1</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A2">R4A2</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A3">R4A3</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A4">R4A4</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A5">R4A5</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R3
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R3A1">R3A1</a></li>
				<li><a href="/Sotsuken/publicView?page=R3A2">R3A2</a></li>
				<li><a href="/Sotsuken/publicView?page=R3A3">R3A3</a></li>
				<li><a href="/Sotsuken/publicView?page=R3A4">R3A4</a></li>
				<li><a href="/Sotsuken/publicView?page=R3A5">R3A5</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R2
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R2A1">R2A1</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A2">R2A2</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A3">R2A3</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A4">R2A4</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A5">R2A5</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R1
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R1A1">R1A1</a></li>
				<li><a href="/Sotsuken/publicView?page=R1A2">R1A2</a></li>
				<li><a href="/Sotsuken/publicView?page=R1A3">R1A3</a></li>
				<li><a href="/Sotsuken/publicView?page=R1A4">R1A4</a></li>
				<li><a href="/Sotsuken/publicView?page=R1A5">R1A5</a></li>
			</ul></li>

	</ul>


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
<td>
${rs.date[1] }

${rs.date[3] }

${rs.date[2] }
</td>
<td>
${rs.eventName}
${rs.notice}


${rs.period}時限目
${rs.classID}
${rs.roomName}
${rs.guestTeacher}

</td>






</tr>
</c:forEach>

</tbody>
</table>
</div>
</div>
</div>






