<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<ul class="nav nav-tabs noprint">
		<li><a href="/Sotsuken/eventView?page=ALL">ALL
		</a></li>

		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/eventView?page=R4">R4</a></li>
				<li><a href="/Sotsuken/eventView?page=R3">R3</a></li>
				<li><a href="/Sotsuken/eventView?page=R2">R2</a></li>
				<li><a href="/Sotsuken/eventView?page=R1">R1</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">S
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/eventView?page=S3">S3</a></li>
				<li><a href="/Sotsuken/eventView?page=S2">S2</a></li>
				<li><a href="/Sotsuken/eventView?page=S1">S1</a></li>
			</ul></li>
		<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">J
				<b class="caret"></b>
		</a>
			<ul class="dropdown-menu">
				<li><a href="/Sotsuken/eventView?page=J2">J2</a></li>
				<li><a href="/Sotsuken/eventView?page=J1">J1</a></li>

			</ul></li>

			<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">A
				<b class="caret"></b></a>
				<ul class="dropdown-menu">
				<li><a href="/Sotsuken/eventView?page=A1">A1</a></li>


			</ul></li>

	</ul>

<div class="row col-md-8 mtop ">
<table class="table col-md-6 col-md-offset-3 back">
<thead>
<tr class="warning wide">
<td colspan="4"><h4 class="bold">年間イベント一覧</h4> </td></tr>
</thead>
<tbody>
<!-- イベント情報取得 -->
<c:forEach var="rs" items="${eventList }">
<tr class="select">

<td>
${rs.date[0] }/${rs.date[1] }/${rs.date[2] }/（${rs.date[3] }）

</td>
<td>${rs.eventName}  </td>
<td>場所:${rs.roomName}</td>
<td>
<c:if test=  "${rs.endFlag==1 }">
終日
</c:if>
<c:if test=  "${rs.endFlag==0 }">
${rs.period}限
</c:if>
</td>
</tr>
</c:forEach>

</tbody>
</table>
</div>



