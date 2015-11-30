<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<c:forEach var="Infosub" items="${InfosubjectList}">
	${Infosub.classID }
</c:forEach>
<div class="container">
	<table
		class="table table-striped table-bordered text-center table-hover;">
		<thead>
		</thead>
		<tbody>

			<tr class="purple2">
				<th colspan="15">10月</th>
			</tr>


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
				<th rowspan=3>1</th>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>
				<td data-toggle="popover" title="持ち物"></td>

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
<div class="container col-md-3 col-md-offset-2">
	<div id="class">
		<div id="class-room">
			<h2 class="font">
				<a href="#" draggable="false">科目リスト</a>
			</h2>
			<div>
				<ul class="list-group font">
					<c:forEach var="subject" items="${infoSubjectList }">
						<li class="list-group-item">${subject.subjectName}</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class="col-md-6 col-md-offset-3">
	<div id="class">
		<div id="class-room">
			<h2 class="font">
				<a href="#" draggable="false">先生リスト</a>
			</h2>
			<div>
				<ul class="list-group font">
					<c:forEach var="teacher" items="${teacherList }">
						<li class="list-group-item">${teacher.teacherName}</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>
</div>
</div>