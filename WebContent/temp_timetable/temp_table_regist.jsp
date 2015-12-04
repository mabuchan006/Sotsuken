<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<c:forEach var="Infosub" items="${InfosubjectList}">
	${Infosub.classID }
</c:forEach>
<div class="container">
	<table
		class="table table-striped table-bordered text-center table-hover;">
		<thead>
		</thead>
		<tbody>
			<tr class="purple1">
				<td></td>
				<td>(月)</td>
				<td>(火)</td>
				<td>(水)</td>
				<td>(木)</td>
				<td>(金)</td>
				<td>(土)</td>
				<td>(日)</td>
			</tr>

			<tr class="info">
				<th rowspan=3 >1</th>
				<td ><div class="drop-target"><textarea rows="" cols="" id="test"></textarea></div></td>
				<td><textarea rows="" cols=""></textarea></td>
				<td><textarea rows="" cols=""></textarea></td>
				<td><textarea rows="" cols=""></textarea></td>
				<td><textarea rows="" cols=""></textarea></td>
				<td><textarea rows="" cols=""></textarea></td>
				<td><textarea rows="" cols=""></textarea></td>

			</tr>

			<tr class="info">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>

			</tr>

			<tr class="info">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>

			</tr>

			<tr class="success">
				<th rowspan=3>2</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>

			</tr>

			<tr class="success">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="success">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<th rowspan=3>3</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="danger">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<th rowspan=3>4</th>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>

			<tr class="active">
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</tbody>
	</table>
</div>

<div class="col-md-3 col-md-offset-2">
	<div id="class">
		<div >
			<h3 class="font" style="background-color: #202020;color: white">
				科目リスト
			</h3>
			<div id="drag-target" >
				<ul class="list-group font" >
					<c:forEach var="subject" items="${infoSubjectList }">
						<c:if test="${subject.subjectName != ''}"  var="flg"/>

						<c:if test="${flg}" >
						<li class="list-group-item">${subject.subjectName}</li>
						</c:if>

					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="col-md-5 ">
	<h3 class="font" style="background-color: #202020;color: white">
		先生リスト
	</h3>
	<table class="table table-border ">
		<tbody>
			<%
				int teacher_count = (int) request.getAttribute("teacher_count");
				int cnt1 = 0;
				for (; cnt1 < teacher_count; cnt1++) {
					pageContext.setAttribute("cnt1", cnt1);
			%>
			<tr  id="drag-target">
				<%
					for (int cnt2 = 0; cnt2 <= 4; cnt2++) {
				%>
				<c:if test="${ teacherList[cnt1].teacherName != null}"  var="flg"/>

				<c:if test="${flg}" >
				<td class="text-center h5">${ teacherList[cnt1].teacherName }</td>
				</c:if>

				<c:if test="${!flg}" >
				<td style="background-color: #202020;border-color: #202020"></td>
				</c:if>

				<%
					cnt1++;
					pageContext.setAttribute("cnt1", cnt1);
						}%>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>


