<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<script type="text/javascript">
	$(function() {
		$('[data-toggle="tooltip"]').tooltip();
		countDate();
	})
</script>
<!-- 印刷時非表示 -->
<div class="noprint">


<nav id="menu">

    		<input type="checkbox" id="toggle-nav"/>
    		<label id="toggle-nav-label" for="toggle-nav"><i class="icon-reorder"></i></label>

    		<div class="box">
	    		<ul>
	    			<li><a href="#"><i class="icon-home"></i> home</a></li>
	    			<li><a href="#"><i class="icon-file-alt"></i> about</a></li>
	    			<li><a href="#"><i class="icon-copy"></i> works</a></li>
	    			<li><a href="#"><i class="icon-envelope"></i> contacts</a></li>
	    		</ul>
    		</div>

    	</nav>
	<!-- タブ -->

	<ul class="nav nav-tabs noprint">
		<c:forEach var="rs" items="${classIDMapR }">
			<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">${rs.key}<b class="caret"></b></a>
				<ul class="dropdown-menu">
					<c:forEach var="array" items="${rs.value }">
						<li><a href="/Sotsuken/publicView?page=${array }">${array }</a></li>
					</c:forEach>
				</ul>
			</li>
		</c:forEach>
	</ul>

</div>

<br />

<!-- 印刷エリア指定id printareaで囲んだ範囲で可能 -->
<div class="printarea">
	<div class="container">
		<div class="table-responsive">
			<table class="table table-striped table-bordered text-center ;">
				<thead>
					<tr class="purple2 month">

					</tr>
				</thead>
				<tbody>
					<tr class="purple1 countDate">

						<th></th>
						<c:forEach var="dateitem" items="${dList }">
							<th nowrap><fmt:formatDate value="${dateitem.date}"
									pattern="MM月dd日(E)" /></th>
						</c:forEach>

						<%
							for (int cnt1 = 1; cnt1 <= 4; cnt1++) {
						%>
						<!-- 1限～4限 -->

						<%
							if (cnt1 == 1) {
						%>

					<tr class="info">
						<th class="info " rowspan=3><%=cnt1%></th>
						<%
							}
						%>

						<%
							if (cnt1 == 2) {
						%>

					<tr class="danger">
						<th class="info " rowspan=3><%=cnt1%></th>
						<%
							}
						%>

						<%
							if (cnt1 == 3) {
						%>

					<tr class="success">
						<th class="success " rowspan=3><%=cnt1%></th>
						<%
							}
						%>

						<%
							if (cnt1 == 4) {
						%>

					<tr class="active">
						<th class="warning " rowspan=3><%=cnt1%></th>
						<%
							}
						%>

						<%
							for (int cnt2 = 0; cnt2 < 3; cnt2++) {
						%>
						<!-- 各項目（０：教科　１：講師　２：部屋） -->

						<%
							for (int cnt3 = 0; cnt3 < 28; cnt3++) {
						%>
						<!-- 28日分 -->
						<%
							pageContext.setAttribute("index", cnt3);
						%>
						<%
							if (cnt1 == 1) {
						%>
						<%
							if (cnt2 == 0) {
						%>
						<td class="info cell1" nowrap>
							<div data-toggle="tooltip" data-placement="right"
								data-original-title="${period1List[index].bringThings}">${period1List[index].subjectName}</div>
						</td>
						<%
							}
						%>
						<%
							if (cnt2 == 1) {
						%>
						<td class="info" nowrap>${period1List[index].teacherName}</td>
						<%
							}
						%>
						<%
							if (cnt2 == 2) {
						%>
						<td class="info" nowrap>${period1List[index].roomName}</td>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (cnt1 == 2) {
						%>
						<%
							if (cnt2 == 0) {
						%>

						<td class="danger" nowrap>
							<div data-toggle="tooltip" data-placement="right"
								data-original-title="${period2List[index].bringThings}">${period2List[index].subjectName}</div>
						</td>

						<%
							}
						%>
						<%
							if (cnt2 == 1) {
						%>
						<td class="danger" nowrap>${period2List[index].teacherName}</td>
						<%
							}
						%>
						<%
							if (cnt2 == 2) {
						%>
						<td class="danger" nowrap>${period2List[index].roomName}</td>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (cnt1 == 3) {
						%>
						<%
							if (cnt2 == 0) {
						%>

						<td class="success" nowrap>
							<div data-toggle="tooltip" data-placement="right"
								data-original-title="${period3List[index].bringThings}">${period3List[index].subjectName}</div>
						</td>

						<%
							}
						%>
						<%
							if (cnt2 == 1) {
						%>
						<td class="success" nowrap>${period3List[index].teacherName}</td>
						<%
							}
						%>
						<%
							if (cnt2 == 2) {
						%>
						<td class="success" nowrap>${period3List[index].roomName}</td>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (cnt1 == 4) {
						%>
						<%
							if (cnt2 == 0) {
						%>
						<td class="warning" id="cell" nowrap>
							<div data-toggle="tooltip" data-placement="right"
								data-original-title="${period4List[index].bringThings}">${period4List[index].subjectName}</div>
						</td>
						<%
							}
						%>
						<%
							if (cnt2 == 1) {
						%>
						<td class="warning" nowrap>${period4List[index].teacherName}</td>
						<%
							}
						%>
						<%
							if (cnt2 == 2) {
						%>
						<td class="warning" nowrap>${period4List[index].roomName}</td>
						<%
							}
						%>
						<%
							}
						%>

						<%
							}
						%>
					</tr>
					<%
						}
					%>
					<%
						}
					%>
				</tbody>
			</table>
		</div>

		<div class="panel panel-warning">
			<div class="panel-heading">
				<h3 class="panel-title">お知らせ</h3>
			</div>
			<div class="panel-body panel1">
				<ul>
					<li class="line">2015/02/08(月) バレー大会 場所 愛知県体育館</li>
					<li class="line">2015/03/04(木) 卒業式 場所 マリオットホテル</li>
				</ul>

			</div>
		</div>
	</div>
</div>


