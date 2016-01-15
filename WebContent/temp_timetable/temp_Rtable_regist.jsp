<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<!-- タブ -->
<br />
<ul class="nav nav-tabs noprint ">
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R4
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/editView?page=R4A1">R4A1</a></li>
			<li><a href="/Sotsuken/editView?page=R4A2">R4A2</a></li>
			<li><a href="/Sotsuken/editView?page=R4A3">R4A3</a></li>
			<li><a href="/Sotsuken/editView?page=R4A4">R4A4</a></li>
			<li><a href="/Sotsuken/editView?page=R4A5">R4A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R3
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/editView?page=R3A1">R3A1</a></li>
			<li><a href="/Sotsuken/editView?page=R3A2">R3A2</a></li>
			<li><a href="/Sotsuken/editView?page=R3A3">R3A3</a></li>
			<li><a href="/Sotsuken/editView?page=R3A4">R3A4</a></li>
			<li><a href="/Sotsuken/editView?page=R3A5">R3A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R2
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/editView?page=R2A1">R2A1</a></li>
			<li><a href="/Sotsuken/editView?page=R2A2">R2A2</a></li>
			<li><a href="/Sotsuken/editView?page=R2A3">R2A3</a></li>
			<li><a href="/Sotsuken/editView?page=R2A4">R2A4</a></li>
			<li><a href="/Sotsuken/editView?page=R2A5">R2A5</a></li>
		</ul></li>
	<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R1
			<b class="caret"></b>
	</a>
		<ul class="dropdown-menu">
			<li><a href="/Sotsuken/editView?page=R1A1">R1A1</a></li>
			<li><a href="/Sotsuken/editView?page=R1A2">R1A2</a></li>
			<li><a href="/Sotsuken/editView?page=R1A3">R1A3</a></li>
			<li><a href="/Sotsuken/editView?page=R1A4">R1A4</a></li>
			<li><a href="/Sotsuken/editView?page=R1A5">R1A5</a></li>
		</ul></li>

</ul>

<!-- タブ end-->

<br />

<form action="/Sotsuken/editView" method="post" >

<!-- 科目リスト　先生リスト取得 -->

<div class="col-md-2 fix">
		<h3 class="font" style="background-color: #202020; color: white;">
			科目リスト</h3>
	<div class="drag-target">
		<ul class="panel">
			<c:forEach var="subject" items="${infoSubjectList }">
				<c:if test="${subject.subjectName != ''}" var="flg" />

				<c:if test="${flg}">
					<li class="panel-body select0 subject">${subject.subjectName}</li>
				</c:if>


			</c:forEach>
		</ul>
	</div>
</div>


<div class="col-md-2 col-md-offset-10 fix">
	<h3 class="font" style="background-color: #202020; color: white">
		先生リスト</h3>
		<div style="height:680px; width:300px; overflow-y:scroll;">
	<table class="table table-border ">
		<tbody>
			<%
				int teacher_count =  Integer.parseInt(request.getAttribute("teacher_count").toString());
				int cnt1 = 0;
				for (; cnt1 < teacher_count; cnt1++) {
					if(cnt1 != 0){
						cnt1 = cnt1 - 1;
					}
					pageContext.setAttribute("cnt1", cnt1);
			%>
			<tr class="drag-target">
				<%
					for (int cnt2 = 0; cnt2 <= 1; cnt2++) {
				%>

					<td class="text-center h5 select0 teacher">${ teacherList[cnt1].teacherName }</td>

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
</div>



<!-- button -->
			<button type="submit" class="btn btn-primary btn-lg col-md-1 fix padding-left" id="sBtn" name="regist">登録</button>
<!--button End  -->



<div class="container">

<!-- calender
<input type="date" name="start" style="text-align: center;" min="2016-01-04" max="2040-04-01" step="7" required  />
   calender End-->



<div class="form-group">
    <input type="text" class="form-control datepicker" id="mydate" name="start">
	</div>

   <script>
$(function(){
	$('.datepicker').datepicker({
		  language: 'ja'
		})
});
</script>



	<table
		class="table table-striped table-bordered text-center table-condensed">
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
			<tr class="info ">
				<!-- １限目　教科 -->
				<th rowspan=3>1</th>
				<td ><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														 name="Su0_1" class="txtFontSize1 subject" >${subject1List[0].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su1_1" class="txtFontSize1 subject" >${subject1List[1].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su2_1" class="txtFontSize1 subject">${subject1List[2].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su3_1" class="txtFontSize1 subject">${subject1List[3].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su4_1" class="txtFontSize1 subject">${subject1List[4].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su5_1" class="txtFontSize1 subject">${subject1List[5].subjectName }</textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Su6_1" class="txtFontSize1 subject">${subject1List[6].subjectName }</textarea>
												</p></td>
			</tr>

			<!-- １限目　先生 -->
			<tr class="info">
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te0_1" class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te1_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te2_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te3_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te4_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te5_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #d9edf7;"
														name="Te6_1"  class="txtFontSize1 teacher"></textarea>
												</p></td>
			</tr>
			<!-- １限目　先生 終わり -->

			<c:if test="${!empty rooms1List }" var="list_flg" />
			<c:if test="${list_flg }">
			<tr class="info">
			<%
			int period_1 = Integer.parseInt(request.getAttribute("period_1").toString());
			%>
			<!-- １限目　教室 -->
			<%
				for(int week=0; week <=6; week++){
					int status = 0;
					for(int cnt = 0;cnt < period_1; cnt++){

					pageContext.setAttribute("index", cnt);

				%>

				<%if(week == 0){ %>
					<c:if test="${rooms1List[index].week == '月'}" var="flg_0"/>
						<c:if test="${flg_0 }">
						<td class="fonts">${ rooms1List[index].roomName} </td>
						<input type="hidden" name="Ro0_1" value="${ rooms1List[index].roomName}" />
						<%status++;%>
						</c:if>
						<% if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_0 }">
						<td></td>
						<input type="hidden" name="Ro0_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 1){ %>
					<c:if test="${rooms1List[index].week == '火'}" var="flg_1"/>
						<c:if test="${flg_1 }">
						<td class="fonts">${ rooms1List[index].roomName}</td>
						<input type="hidden" name="Ro1_1" value="${ rooms1List[index].roomName}" />
						<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_1 }">
						<td></td>
						<input type="hidden" name="Ro1_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 2){ %>
					<c:if test="${rooms1List[index].week == '水'}" var="flg_2"/>
						<c:if test="${flg_2 }">
						<td class="fonts">${ rooms1List[index].roomName}</td>
						<input type="hidden" name="Ro2_1" value="${ rooms1List[index].roomName}" />
						<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_2 }">
						<td></td>
						<input type="hidden" name="Ro2_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 3){ %>
					<c:if test="${rooms1List[index].week == '木'}" var="flg_3"/>
					<c:if test="${flg_3 }">
					<td class="fonts">${ rooms1List[index].roomName}</td>
					<input type="hidden" name="Ro3_1" value="${ rooms1List[index].roomName}" />
					<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_3 }">
						<td></td>
						<input type="hidden" name="Ro3_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 4){ %>
					<c:if test="${rooms1List[index].week == '金'}" var="flg_4"/>
					<c:if test="${flg_4}">
					<td class="fonts">${ rooms1List[index].roomName}</td>
					<input type="hidden" name="Ro4_1" value="${ rooms1List[index].roomName}"  />
					<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_4 }">
						<td></td>
						<input type="hidden" name="Ro4_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 5){ %>
					<c:if test="${rooms1List[index].week == '土'}" var="flg_5"/>
					<c:if test="${flg_5 }">
					<td class="fonts">${ rooms1List[index].roomName}</td>
					<input type="hidden" name="Ro5_1" value="${ rooms1List[index].roomName}" />
					<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_5 }">
						<td></td>
						<input type="hidden" name="Ro5_1" value="" />
						</c:if>
						<% } %>
				<% } %>

				<%if(week == 6){ %>
					<c:if test="${rooms1List[index].week == '日'}" var="flg_6"/>
					<c:if test="${flg_6 }">
					<td class="fonts">${ rooms1List[index].roomName}</td>
					<input type="hidden" name="Ro6_1" value="${ rooms1List[index].roomName}" />
					<%status++;%></c:if>
						<%if(cnt == period_1 - 1 && status == 0){ %>
						<c:if test="${!flg_6 }">
						<td></td>
						<input type="hidden" name="Ro6_1" value="" />
						</c:if>
						<% } %>
				<% } %>

					<% } %>
				<% } %>
			</tr>
			</c:if>

			<c:if test="${!list_flg }">
			<tr class="info">
			<td><input type="hidden" name="Ro0_1" value="" /></td>
			<td><input type="hidden" name="Ro1_1" value="" /></td>
			<td><input type="hidden" name="Ro2_1" value="" /></td>
			<td><input type="hidden" name="Ro3_1" value="" /></td>
			<td><input type="hidden" name="Ro4_1" value="" /></td>
			<td><input type="hidden" name="Ro5_1" value="" /></td>
			<td><input type="hidden" name="Ro6_1" value="" /></td>
			</tr>
			</c:if>
			<!-- １限目　教室 終わり -->



			<tr class="danger">
				<!-- ２限目　教科 -->
				<th rowspan=3>2</th>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 subject"></textarea>
												</p></td>

			</tr>

			<tr class="danger">
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #f2dede;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
			</tr>

			<c:if test="${!empty rooms2List }" var="list_flg" />
			<c:if test="${list_flg }">
			<tr class="danger">
			<%
			int period_2 = Integer.parseInt(request.getAttribute("period_2").toString());
			%>

			<%
				for(int week=0; week <=6; week++){
					int status = 0;
					for(int cnt = 0;cnt < period_2; cnt++){

					pageContext.setAttribute("index", cnt);
				%>

				<%if(week == 0){ %>
					<c:if test="${rooms2List[index].week == '月'}" var="flg_0"/>
						<c:if test="${flg_0 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<% if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_0 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 1){ %>
					<c:if test="${rooms2List[index].week == '火'}" var="flg_1"/>
						<c:if test="${flg_1 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_1 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 2){ %>
					<c:if test="${rooms2List[index].week == '水'}" var="flg_2"/>
						<c:if test="${flg_2 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_2 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 3){ %>
					<c:if test="${rooms2List[index].week == '木'}" var="flg_3"/>
					<c:if test="${flg_3 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_3 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 4){ %>
					<c:if test="${rooms2List[index].week == '金'}" var="flg_4"/>
					<c:if test="${flg_4}"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_4 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 5){ %>
					<c:if test="${rooms2List[index].week == '土'}" var="flg_5"/>
					<c:if test="${flg_5 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_5 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 6){ %>
					<c:if test="${rooms2List[index].week == '日'}" var="flg_6"/>
					<c:if test="${flg_6 }"><td class="fonts">${ rooms2List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_2 - 1 && status == 0){ %>
						<c:if test="${!flg_6 }"><td></td></c:if>
						<% } %>
				<% } %>

					<% } %>
				<% } %>
			</tr>
			</c:if>

			<c:if test="${!list_flg }">
			<tr class="danger">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			</tr>
			</c:if>

			<tr class="success">
			<!-- ３限目　教科 -->
				<th rowspan=3>3</th>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
			</tr>

			<tr class="success">
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #dff0d8;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
			</tr>

			<c:if test="${!empty rooms3List }" var="list_flg" />
			<c:if test="${list_flg }">
			<tr class="success">
			<%
			int period_3 = Integer.parseInt(request.getAttribute("period_3").toString());
			%>

			<%
				for(int week=0; week <=6; week++){
					int status = 0;
					for(int cnt = 0;cnt < period_3; cnt++){

					pageContext.setAttribute("index", cnt);
				%>

				<%if(week == 0){ %>
					<c:if test="${rooms3List[index].week == '月'}" var="flg_0"/>
						<c:if test="${flg_0 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<% if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_0 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 1){ %>
					<c:if test="${rooms3List[index].week == '火'}" var="flg_1"/>
						<c:if test="${flg_1 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_1 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 2){ %>
					<c:if test="${rooms3List[index].week == '水'}" var="flg_2"/>
						<c:if test="${flg_2 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_2 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 3){ %>
					<c:if test="${rooms3List[index].week == '木'}" var="flg_3"/>
					<c:if test="${flg_3 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_3 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 4){ %>
					<c:if test="${rooms3List[index].week == '金'}" var="flg_4"/>
					<c:if test="${flg_4}"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_4 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 5){ %>
					<c:if test="${rooms3List[index].week == '土'}" var="flg_5"/>
					<c:if test="${flg_5 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_5 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 6){ %>
					<c:if test="${rooms3List[index].week == '日'}" var="flg_6"/>
					<c:if test="${flg_6 }"><td class="fonts">${ rooms3List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_3 - 1 && status == 0){ %>
						<c:if test="${!flg_6 }"><td></td></c:if>
						<% } %>
				<% } %>

					<% } %>
				<% } %>
			</tr>
			</c:if>

			<c:if test="${!list_flg }">
			<tr class="success">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			</tr>
			</c:if>


			<tr class="warning">
			<!-- ４限目　教科 -->
				<th rowspan=3>4</th>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 subject"></textarea>
												</p></td>
			</tr>

			<tr class="warning">
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1 teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
				<td><p class="size drop-target ">
													<textarea cols="5" rows="1" style="overflow: auto; background-color: #fcf8e3;"
														class="txtFontSize1  teacher"></textarea>
												</p></td>
			</tr>

			<c:if test="${!empty rooms4List }" var="list_flg" />
			<c:if test="${list_flg }">
			<tr class="warning">
			<%
			int period_4 = Integer.parseInt(request.getAttribute("period_4").toString());
			%>

			<%
				for(int week=0; week <=6; week++){
					int status = 0;
					for(int cnt = 0;cnt < period_4; cnt++){

					pageContext.setAttribute("index", cnt);
				%>

				<%if(week == 0){ %>
					<c:if test="${rooms4List[index].week == '月'}" var="flg_0"/>
						<c:if test="${flg_0 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<% if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_0 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 1){ %>
					<c:if test="${rooms4List[index].week == '火'}" var="flg_1"/>
						<c:if test="${flg_1 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_1 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 2){ %>
					<c:if test="${rooms4List[index].week == '水'}" var="flg_2"/>
						<c:if test="${flg_2 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_2 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 3){ %>
					<c:if test="${rooms4List[index].week == '木'}" var="flg_3"/>
					<c:if test="${flg_3 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_3 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 4){ %>
					<c:if test="${rooms4List[index].week == '金'}" var="flg_4"/>
					<c:if test="${flg_4}"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_4 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 5){ %>
					<c:if test="${rooms4List[index].week == '土'}" var="flg_5"/>
					<c:if test="${flg_5 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_5 }"><td></td></c:if>
						<% } %>
				<% } %>

				<%if(week == 6){ %>
					<c:if test="${rooms4List[index].week == '日'}" var="flg_6"/>
					<c:if test="${flg_6 }"><td class="fonts">${ rooms4List[index].roomName}</td><%status++;%></c:if>
						<%if(cnt == period_4 - 1 && status == 0){ %>
						<c:if test="${!flg_6 }"><td></td></c:if>
						<% } %>
				<% } %>

					<% } %>
				<% } %>
			</tr>
			</c:if>

			<c:if test="${!list_flg }">
			<tr class="warning">
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			</tr>
			</c:if>

		</tbody>
	</table>
</div>
<input type="hidden" name="page" value="${chooseClassID }" />
</form>







