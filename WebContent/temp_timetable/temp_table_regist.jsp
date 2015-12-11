<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- タブ -->

<ul class="nav nav-tabs noprint" >
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R4
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/publicView?page=R4A1">R4A1</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A2">R4A2</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A3">R4A3</a></li>
			<li><a href="#">R4A4</a></li>
			<li><a href="#">R4A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R3
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/publicView?page=R4A1">R3A1</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A2">R3A2</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A3">R3A3</a></li>
			<li><a href="#">R3A4</a></li>
			<li><a href="#">R3A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R2
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/publicView?page=R4A1">R2A1</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A2">R2A2</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A3">R2A3</a></li>
			<li><a href="#">R2A4</a></li>
			<li><a href="#">R2A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R1
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/publicView?page=R4A1">R1A1</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A2">R1A2</a></li>
			<li><a href="/Sotsuken/publicView?page=R4A3">R1A3</a></li>
			<li><a href="#">R1A4</a></li>
			<li><a href="#">R1A5</a></li>
		</ul></li>

</ul>

<br />

	<form action="/Sotsuken/temp_tableControl" method="post">
<div class="container">
	<table
		class="table table-striped table-bordered text-center table-hover;">
		<thead>
		</thead>
		<tbody>
			<tr class="purple1">
				<td></td>
				<td>(Mon)</td>
				<td>(Tue)</td>
				<td>(Wed)</td>
				<td>(Thu)</td>
				<td>(Fri)</td>
				<td>(Sta)</td>
				<td>(Sun)</td>
			</tr>

			<tr class="info">
				<!-- １限目　教科 -->
				<th rowspan=3>1</th>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
			</tr>

			<tr class="info">
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
			</tr>


			<tr class="info">
			<%
			int period_1 = (int)request.getAttribute("period_1");
			%>

			<%
				for(int week=0; week <=6; week++){
					int status = 0;
					for(int cnt = 0;cnt < period_1; cnt++){

					pageContext.setAttribute("index", cnt);
					System.out.println("check:"+cnt);
				%>

				<%if(week == 0){ %>
					<c:if test="${rooms1List[index].week == '月'}" var="flg_0"/>
						<c:if test="${flg_0 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<% if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_0 }"><td></c:if>
						<% } %>
				<% } %>

				<%if(week == 1){ %>
					<c:if test="${rooms1List[index].week == '火'}" var="flg_1"/>
						<c:if test="${flg_1 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_1 }"><td>1</td></c:if>
						<% } %>
				<% } %>

				<%if(week == 2){ %>
					<c:if test="${rooms1List[index].week == '水'}" var="flg_2"/>
						<c:if test="${flg_2 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_2 }"><td>2</td></c:if>
						<% } %>
				<% } %>

				<%if(week == 3){ %>
					<c:if test="${rooms1List[index].week == '木'}" var="flg_3"/>
					<c:if test="${flg_3 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_3 }"><td>3</td></c:if>
						<% } %>
				<% } %>

				<%if(week == 4){ %>
					<c:if test="${rooms1List[index].week == '金'}" var="flg_4"/>
					<c:if test="${flg_4}"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_4 }"><td>4</td></c:if>
						<% } %>
				<% } %>

				<%if(week == 5){ %>
					<c:if test="${rooms1List[index].week == '土'}" var="flg_5"/>
					<c:if test="${flg_5 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_5 }"><td>5</td></c:if>
						<% } %>
				<% } %>

				<%if(week == 6){ %>
					<c:if test="${rooms1List[index].week == '日'}" var="flg_6"/>
					<c:if test="${flg_6 }"><td>${ rooms1List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_6 }"><td>6</td></c:if>
						<% } %>
				<% } %>

					<% } %>
				<% } %>
			</tr>

			<tr class="danger">
				<!-- ２限目　教科 -->
				<th rowspan=3>2</th>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>

			</tr>

			<tr class="danger">
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
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

			<tr class="success">
			<!-- ３限目　教科 -->
				<th rowspan=3>3</th>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
			</tr>

			<tr class="success">
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
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

			<tr class="warning">
			<!-- ４限目　教科 -->
				<th rowspan=3>4</th>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
			</tr>

			<tr class="warning">
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
				<td><div class="drop-target"><textarea style="text-align: center" rows="1" cols="6" id="test"></textarea></div></td>
			</tr>

			<tr class="warning">
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

</form>

<!-- 科目リスト　先生リスト取得 -->

<div class="col-md-2 col-md-offset-3">
		<h3 class="font" style="background-color: #202020; color: white;">
			科目リスト</h3>
		<div id="drag-target">
			<ul class="panel">
				<c:forEach var="subject" items="${infoSubjectList }">
					<c:if test="${subject.subjectName != ''}" var="flg" />

					<c:if test="${flg}">
						<li class="panel-body">${subject.subjectName}</li>
					</c:if>

				</c:forEach>
			</ul>
		</div>
</div>

<div class="col-md-5 ">
	<h3 class="font" style="background-color: #202020; color: white">
		先生リスト</h3>
	<table class="table table-border ">
		<tbody>
			<%
				int teacher_count =  (int)request.getAttribute("teacher_count");
				int cnt1 = 0;
				for (; cnt1 < teacher_count; cnt1++) {
					pageContext.setAttribute("cnt1", cnt1);
			%>
			<tr id="drag-target">
				<%
					for (int cnt2 = 0; cnt2 <= 4; cnt2++) {
				%>
				<c:if test="${ teacherList[cnt1].teacherName != null}" var="flg" />

				<c:if test="${flg}">
					<td class="text-center h5">${ teacherList[cnt1].teacherName }</td>
				</c:if>

				<c:if test="${!flg}">
					<td style="background-color: #202020; border-color: #202020"></td>
				</c:if>

				<%
					cnt1++;
							pageContext.setAttribute("cnt1", cnt1);
						}
				%>
			</tr>
			<%
				}
			%>
		</tbody>
	</table>
</div>


