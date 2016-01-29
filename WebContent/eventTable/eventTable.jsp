<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<ul class="nav nav-tabs noprint">
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">ALL
				<b class="caret"></b>
		</a></li>

		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R4A2">R4</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A3">R3</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A4">R2</a></li>
				<li><a href="/Sotsuken/publicView?page=R4A5">R1</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">S
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R2A1">S3</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A2">S2</a></li>
				<li><a href="/Sotsuken/publicView?page=R2A3">S1</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">J
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/publicView?page=R1A1">J2</a></li>
				<li><a href="/Sotsuken/publicView?page=R1A2">J1</a></li>

			</ul></li>

			<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">A
				<b class="caret"></b></a></li>

	</ul>

<div class="row col-md-9">




<!-- イベント一覧表示 -->
<div class="col-md-9 col-md-offset-4">
<div class="back">
<table class="table ">
<thead>
<tr class="warning wide">
<td colspan="3"><h4 class="bold">年間イベント一覧</h4> </td></tr>
</thead>
<tbody>
<!-- イベント情報取得 -->

</tbody>
</table>
</div>
</div>
</div>





<!-- <c:forEach var="rs" items="${eventList }">
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
 -->
