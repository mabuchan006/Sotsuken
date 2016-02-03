<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import ="java.util.Calendar" %>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!-- トースト用 -->
<c:if test= "${!empty logout_Msg }">
<script>
toastSelect("success","${Msg}")</script>
</c:if>

<c:if test=  "${!empty err_Msg }">
<script>toastSelect("error","${err_Msg }")</script>
</c:if>

<form action="/Sotsuken/editView" method="post">

	<!-- タブ -->
	<br /> <br /> <br /> <br /> <br /> <br />
	<!-- button -->
	<button type="submit"
		class="btn btn-warning btn-lg col-md-1   right1 center fonts"
		id="confBtn" name="confirm">マスタ確認</button>
	<button type="submit"
		class="btn btn-success btn-lg col-md-1   right1 center fonts"
		id="masupBtn" name="up">マスタアップ</button>
	<button type="submit"
		class="btn btn-primary btn-lg col-md-1  right1 center fonts"
		id="regBtn" name="regist">登録</button>

	<!--button End  -->

	<ul class="nav nav-tabs noprint">
		<c:forEach var="rs" items="${classIDMap}">
			<li>
				<a class="dropdown-toggle" data-toggle="dropdown">${rs.key}<b class="caret"></b></a>
				<ul class="dropdown-menu">
				<c:forEach var="array" items="${rs.value}">
					<li><a href="/Sotsuken/editView?page=${array}">${array}</a></li>
				</c:forEach>
				</ul>
			</li>
		</c:forEach>
	</ul>
	<!-- タブ end-->

	<br />




	<!-- 科目リスト　先生リスト取得 -->

	<div class="col-md-2 fix">
		<h3 class="font" style="background-color: #202020; color: white;">
			科目リスト</h3>

		<div class="drag-target">
			<ul class="panel">
				<c:forEach var="subject" items="${infoSubjectList }">
					<li class="panel-body select0 subject"><fmt:formatNumber value="${subject.subjectID}" pattern="000" />:${subject.subjectName}</li>
				</c:forEach>
			</ul>
		</div>
	</div>



	<div class="col-md-2 col-md-offset-10 fix">
		<h3 class="font"
			style="background-color: #202020; color: white; width: 250px;">
			先生リスト</h3>
		<div style="height: 600px; width: 250px; overflow-y: scroll;">
			<div class="drag-target">
				<ul class="panel">
					<c:forEach var="name" items="${teacherList }">
						<li class="panel-body h5 select0 teacher">${name.teacherName}</li>
					</c:forEach>
				</ul>
			</div>
		</div>
	</div>

	<div class="container">

		<!-- calender-->
		<div class="input-group date col-md-2 " >
			<span class="input-group-addon"> <i
				class="fa fa-calendar green"></i>
			</span> <input type="text" class="form-control" id="dateReq"
				placeholder="始点の日付入力" name="start" required="required"
				value="${regtiList1[0].date }" />
		</div>

		<!-- calender End-->

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
					<c:if test="${regtiList1[0].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun0_1"
									class="txtFontSize2 subject" placeholder="教科入力欄">${regtiList1[0].subjectName }</textarea>
									<input type="hidden" name="Su0_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun0_1"
									class="txtFontSize2 subject" placeholder="教科入力欄">${regtiList1[0].subjectName }</textarea>
									<input type="hidden" name="Su0_1" value="<fmt:formatNumber value="${regtiList1[0].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList1[1].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun1_1"
									class="txtFontSize2 subject" >${regtiList1[1].subjectName }</textarea>
									<input type="hidden" name="Su1_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;"name="Sun1_1"
								class="txtFontSize2 subject">${regtiList1[1].subjectName }</textarea>
								<input type="hidden" name="Su1_1" value="<fmt:formatNumber value="${regtiList1[1].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList1[2].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun2_1"
									class="txtFontSize2 subject" >${regtiList1[2].subjectName }</textarea>
									<input type="hidden" name="Su2_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;"name="Sun2_1"
								class="txtFontSize2 subject">${regtiList1[2].subjectName }</textarea>
								<input type="hidden" name="Su2_1" value="<fmt:formatNumber value="${regtiList1[2].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList1[3].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;" name="Sun3_1"
									class="txtFontSize2 subject" >${regtiList1[3].subjectName }</textarea>
									<input type="hidden" name="Su3_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Sun3_1"
								class="txtFontSize2 subject">${regtiList1[3].subjectName }</textarea>
								<input type="hidden" name="Su3_1" value="<fmt:formatNumber value="${regtiList1[3].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList1[4].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun4_1"
									class="txtFontSize2 subject" >${regtiList1[4].subjectName }</textarea>
									<input type="hidden" name="Su4_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;"name="Sun4_1"
								class="txtFontSize2 subject">${regtiList1[4].subjectName }</textarea>
								<input type="hidden" name="Su4_1" value="<fmt:formatNumber value="${regtiList1[4].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList1[5].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun5_1"
									class="txtFontSize2 subject" >${regtiList1[5].subjectName }</textarea>
									<input type="hidden" name="Su5_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;"name="Sun5_1"
								class="txtFontSize2 subject">${regtiList1[5].subjectName }</textarea>
								<input type="hidden" name="Su5_1" value="<fmt:formatNumber value="${regtiList1[5].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList1[6].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #d9edf7;"name="Sun6_1"
									class="txtFontSize2 subject" >${regtiList1[6].subjectName }</textarea>
									<input type="hidden" name="Su6_1" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;"name="Sun6_1"
								class="txtFontSize2 subject">${regtiList1[6].subjectName }</textarea>
								<input type="hidden" name="Su6_1" value="<fmt:formatNumber value="${regtiList1[6].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

				</tr>

				<!-- １限目　先生 -->
				<tr class="info">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te0_1"
								class="txtFontSize1 teacher" placeholder="先生入力欄">${regtiList1[0].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te1_1"
								class="txtFontSize1 teacher">${regtiList1[1].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te2_1"
								class="txtFontSize1 teacher">${regtiList1[2].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te3_1"
								class="txtFontSize1 teacher">${regtiList1[3].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te4_1"
								class="txtFontSize1 teacher">${regtiList1[4].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te5_1"
								class="txtFontSize1 teacher">${regtiList1[5].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #d9edf7;" name="Te6_1"
								class="txtFontSize1 teacher">${regtiList1[6].teacherName }</textarea>
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
							for (int week = 0; week <= 6; week++) {
									int status = 0;
									for (int cnt = 0; cnt < period_1; cnt++) {

										pageContext.setAttribute("index", cnt);
						%>

						<%
							if (week == 0) {
						%>
						<c:if test="${rooms1List[index].week == '月'}" var="flg_0" />
						<c:if test="${flg_0 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro0_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_0 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro0_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 1) {
						%>
						<c:if test="${rooms1List[index].week == '火'}" var="flg_1" />
						<c:if test="${flg_1 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro1_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_1 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro1_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 2) {
						%>
						<c:if test="${rooms1List[index].week == '水'}" var="flg_2" />
						<c:if test="${flg_2 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro2_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_2 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro2_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 3) {
						%>
						<c:if test="${rooms1List[index].week == '木'}" var="flg_3" />
						<c:if test="${flg_3 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro3_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_3 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro3_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 4) {
						%>
						<c:if test="${rooms1List[index].week == '金'}" var="flg_4" />
						<c:if test="${flg_4}">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro4_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_4 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro4_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 5) {
						%>
						<c:if test="${rooms1List[index].week == '土'}" var="flg_5" />
						<c:if test="${flg_5 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro5_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_5 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro5_1" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 6) {
						%>
						<c:if test="${rooms1List[index].week == '日'}" var="flg_6" />
						<c:if test="${flg_6 }">
							<td class="fonts">${ rooms1List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro6_1"
								value="${ rooms1List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_1 - 1 && status == 0) {
						%>
						<c:if test="${!flg_6 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro6_1" value="" />
						</c:if>
						<%
							}
						%>
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
				</c:if>

				<c:if test="${!list_flg }">
					<tr class="info">
						<td><input type="hidden" class="roomID" name="Ro0_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro1_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro2_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro3_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro4_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro5_1" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro6_1" value="" /></td>
					</tr>
				</c:if>
				<!-- １限目　教室 終わり -->



				<tr class="danger">
					<!-- ２限目　教科 -->
					<th rowspan=3>2</th>
					<c:if test="${regtiList2[0].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun0_2"
									class="txtFontSize2 subject">${regtiList2[0].subjectName }</textarea>
									<input type="hidden" name="Su0_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun0_2"
									class="txtFontSize2 subject">${regtiList2[0].subjectName }</textarea>
									<input type="hidden" name="Su0_2" value="<fmt:formatNumber value="${ regtiList2[0].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList2[1].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun1_2"
									class="txtFontSize2 subject">${regtiList2[1].subjectName }</textarea>
									<input type="hidden" name="Su1_2" value="001:">
							</p></td>
					</c:if>

					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun1_2"
									class="txtFontSize2 subject">${regtiList2[1].subjectName }</textarea>
									<input type="hidden" name="Su1_2" value="<fmt:formatNumber value="${ regtiList2[1].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList2[2].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun2_2"
									class="txtFontSize2 subject">${regtiList2[2].subjectName }</textarea>
									<input type="hidden" name="Su2_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun2_2"
									class="txtFontSize2 subject">${regtiList2[2].subjectName }</textarea>
									<input type="hidden" name="Su2_2" value="<fmt:formatNumber value="${ regtiList2[2].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList2[3].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun3_2"
									class="txtFontSize2 subject">${regtiList2[3].subjectName }</textarea>
									<input type="hidden" name="Su3_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun3_2"
									class="txtFontSize2 subject">${regtiList2[3].subjectName }</textarea>
									<input type="hidden" name="Su3_2" value="<fmt:formatNumber value="${ regtiList2[3].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList2[4].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun4_2"
									class="txtFontSize2 subject">${regtiList2[4].subjectName }</textarea>
									<input type="hidden" name="Su4_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun4_2"
									class="txtFontSize2 subject">${regtiList2[4].subjectName }</textarea>
									<input type="hidden" name="Su4_2" value="<fmt:formatNumber value="${ regtiList2[4].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

					<c:if test="${regtiList2[5].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun5_2"
									class="txtFontSize2 subject">${regtiList2[5].subjectName }</textarea>
									<input type="hidden" name="Su5_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun5_2"
									class="txtFontSize2 subject">${regtiList2[5].subjectName }</textarea>
									<input type="hidden" name="Su5_2" value="<fmt:formatNumber value="${ regtiList2[5].subjectID}" pattern="000" />">

							</p></td>
					</c:if>

					<c:if test="${regtiList2[6].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;" name="Sun6_2"
									class="txtFontSize2 subject">${regtiList2[6].subjectName }</textarea>
									<input type="hidden" name="Su6_2" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #f2dede;"name="Sun6_2"
									class="txtFontSize2 subject">${regtiList2[6].subjectName }</textarea>
									<input type="hidden" name="Su6_2" value="<fmt:formatNumber value="${ regtiList2[6].subjectID}" pattern="000" />">
							</p></td>
					</c:if>

				</tr>

				<tr class="danger">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te0_2"
								class="txtFontSize1 teacher">${regtiList2[0].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te1_2"
								class="txtFontSize1 teacher">${regtiList2[1].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te2_2"
								class="txtFontSize1 teacher">${regtiList2[2].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te3_2"
								class="txtFontSize1 teacher">${regtiList2[3].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te4_2"
								class="txtFontSize1 teacher">${regtiList2[4].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te5_2"
								class="txtFontSize1 teacher">${regtiList2[5].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #f2dede;" name="Te6_2"
								class="txtFontSize1 teacher">${regtiList2[6].teacherName }</textarea>
						</p></td>
				</tr>

				<c:if test="${!empty rooms2List }" var="list_flg" />
				<c:if test="${list_flg }">
					<tr class="danger">
						<%
							int period_2 = Integer.parseInt(request.getAttribute("period_2").toString());
						%>

						<%
							for (int week = 0; week <= 6; week++) {
									int status = 0;
									for (int cnt = 0; cnt < period_2; cnt++) {

										pageContext.setAttribute("index", cnt);
						%>

						<%
							if (week == 0) {
						%>
						<c:if test="${rooms2List[index].week == '月'}" var="flg_0" />
						<c:if test="${flg_0 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro0_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_0 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro0_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 1) {
						%>
						<c:if test="${rooms2List[index].week == '火'}" var="flg_1" />
						<c:if test="${flg_1 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro1_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_1 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro1_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 2) {
						%>
						<c:if test="${rooms2List[index].week == '水'}" var="flg_2" />
						<c:if test="${flg_2 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro2_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_2 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro2_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 3) {
						%>
						<c:if test="${rooms2List[index].week == '木'}" var="flg_3" />
						<c:if test="${flg_3 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro3_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_3 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro3_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 4) {
						%>
						<c:if test="${rooms2List[index].week == '金'}" var="flg_4" />
						<c:if test="${flg_4}">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro4_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_4 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro4_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 5) {
						%>
						<c:if test="${rooms2List[index].week == '土'}" var="flg_5" />
						<c:if test="${flg_5 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro5_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_5 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro5_2" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 6) {
						%>
						<c:if test="${rooms2List[index].week == '日'}" var="flg_6" />
						<c:if test="${flg_6 }">
							<td class="fonts">${ rooms2List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro6_2"
								value="${ rooms2List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_2 - 1 && status == 0) {
						%>
						<c:if test="${!flg_6 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro6_2" value="" />
						</c:if>
						<%
							}
						%>
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
				</c:if>

				<c:if test="${!list_flg }">
					<tr class="danger">
						<td><input type="hidden" class="roomID" name="Ro0_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro1_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro2_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro3_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro4_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro5_2" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro6_2" value="" /></td>
					</tr>
				</c:if>

				<tr class="success">
					<!-- ３限目　教科 -->
					<th rowspan=3>3</th>

					<c:if test="${regtiList3[0].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun0_3"
									class="txtFontSize2 subject" >${regtiList3[0].subjectName }</textarea>
									<input type="hidden" name="Su0_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun0_3"
								class="txtFontSize2 subject">${regtiList3[0].subjectName }</textarea>
								<input type="hidden" name="Su0_3" value="<fmt:formatNumber value="${ regtiList3[0].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[1].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun1_3"
									class="txtFontSize2 subject" >${regtiList3[1].subjectName }</textarea>
									<input type="hidden" name="Su1_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun1_3"
								class="txtFontSize2 subject">${regtiList3[1].subjectName }</textarea>
								<input type="hidden" name="Su1_3" value="<fmt:formatNumber value="${ regtiList3[1].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[2].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun2_3"
									class="txtFontSize2 subject" >${regtiList3[2].subjectName }</textarea>
									<input type="hidden" name="Su2_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun2_3"
								class="txtFontSize2 subject">${regtiList3[2].subjectName }</textarea>
								<input type="hidden" name="Su2_3" value="<fmt:formatNumber value="${ regtiList3[3].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[3].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun3_3"
									class="txtFontSize2 subject" >${regtiList3[3].subjectName }</textarea>
									<input type="hidden" name="Su3_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun3_3"
								class="txtFontSize2 subject">${regtiList3[3].subjectName }</textarea>
								<input type="hidden" name="Su3_3" value="<fmt:formatNumber value="${ regtiList3[3].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[4].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun4_3"
									class="txtFontSize2 subject" >${regtiList3[4].subjectName }</textarea>
									<input type="hidden" name="Su4_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun4_3"
								class="txtFontSize2 subject">${regtiList3[4].subjectName }</textarea>
								<input type="hidden"  name="Su4_3" value="<fmt:formatNumber value="${ regtiList3[4].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[5].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun5_3"
									class="txtFontSize2 subject" >${regtiList3[5].subjectName }</textarea>
									<input type="hidden" name="Su5_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun5_3"
								class="txtFontSize2 subject">${regtiList3[5].subjectName }</textarea>
								<input type="hidden"  name="Su5_3" value="<fmt:formatNumber value="${ regtiList3[5].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList3[6].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #dff0d8;" name="Sun6_3"
									class="txtFontSize2 subject" >${regtiList3[6].subjectName }</textarea>
									<input type="hidden" name="Su6_3" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Sun6_3"
								class="txtFontSize2 subject">${regtiList3[6].subjectName }</textarea>
								<input type="hidden" name="Su6_3" value="<fmt:formatNumber value="${ regtiList3[6].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

				</tr>

				<tr class="success">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te0_3"
								class="txtFontSize1 teacher">${regtiList3[0].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te1_3"
								class="txtFontSize1 teacher">${regtiList3[1].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te2_3"
								class="txtFontSize1 teacher">${regtiList3[2].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te3_3"
								class="txtFontSize1 teacher">${regtiList3[3].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te4_3"
								class="txtFontSize1 teacher">${regtiList3[4].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te5_3"
								class="txtFontSize1 teacher">${regtiList3[5].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #dff0d8;" name="Te6_3"
								class="txtFontSize1 teacher">${regtiList3[6].teacherName }</textarea>
						</p></td>
				</tr>

				<c:if test="${!empty rooms3List }" var="list_flg" />
				<c:if test="${list_flg }">
					<tr class="success">
						<%
							int period_3 = Integer.parseInt(request.getAttribute("period_3").toString());
						%>

						<%
							for (int week = 0; week <= 6; week++) {
									int status = 0;
									for (int cnt = 0; cnt < period_3; cnt++) {

										pageContext.setAttribute("index", cnt);
						%>

						<%
							if (week == 0) {
						%>
						<c:if test="${rooms3List[index].week == '月'}" var="flg_0" />
						<c:if test="${flg_0 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro0_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_0 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro0_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 1) {
						%>
						<c:if test="${rooms3List[index].week == '火'}" var="flg_1" />
						<c:if test="${flg_1 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro1_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_1 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro1_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 2) {
						%>
						<c:if test="${rooms3List[index].week == '水'}" var="flg_2" />
						<c:if test="${flg_2 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro2_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_2 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro2_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 3) {
						%>
						<c:if test="${rooms3List[index].week == '木'}" var="flg_3" />
						<c:if test="${flg_3 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro3_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_3 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro3_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 4) {
						%>
						<c:if test="${rooms3List[index].week == '金'}" var="flg_4" />
						<c:if test="${flg_4}">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro4_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_4 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro4_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 5) {
						%>
						<c:if test="${rooms3List[index].week == '土'}" var="flg_5" />
						<c:if test="${flg_5 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro5_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_5 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro5_3" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 6) {
						%>
						<c:if test="${rooms3List[index].week == '日'}" var="flg_6" />
						<c:if test="${flg_6 }">
							<td class="fonts">${ rooms3List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro6_3"
								value="${ rooms3List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_3 - 1 && status == 0) {
						%>
						<c:if test="${!flg_6 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro6_3" value="" />
						</c:if>
						<%
							}
						%>
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
				</c:if>

				<c:if test="${!list_flg }">
					<tr class="success">
						<td><input type="hidden" class="roomID" name="Ro0_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro1_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro2_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro3_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro4_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro5_3" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro6_3" value="" /></td>
					</tr>
				</c:if>


				<tr class="warning">
					<!-- ４限目　教科 -->
					<th rowspan=3>4</th>

					<c:if test="${regtiList4[0].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun0_4"
									class="txtFontSize2 subject" >${regtiList4[0].subjectName }</textarea>
									<input type="hidden" name="Su0_4" value="001:">

							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun0_4"
								class="txtFontSize2 subject">${regtiList4[0].subjectName }</textarea>
								<input type="hidden" name="Su0_4" value="<fmt:formatNumber value="${ regtiList4[0].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[1].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun1_4"
									class="txtFontSize2 subject" >${regtiList4[1].subjectName }</textarea>
									<input type="hidden" name="Su1_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun1_4"
								class="txtFontSize2 subject">${regtiList4[1].subjectName }</textarea>
								<input type="hidden" name="Su1_4" value="<fmt:formatNumber value="${regtiList4[1].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[2].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun2_4"
									class="txtFontSize2 subject" >${regtiList4[2].subjectName }</textarea>
									<input type="hidden" name="Su2_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun2_4"
								class="txtFontSize2 subject">${regtiList4[2].subjectName }</textarea>
								<input type="hidden" name="Su2_4" value="<fmt:formatNumber value="${regtiList4[2].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[3].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun3_4"
									class="txtFontSize2 subject" >${regtiList4[3].subjectName }</textarea>
									<input type="hidden" name="Su3_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun3_4"
								class="txtFontSize2 subject">${regtiList4[3].subjectName }</textarea>
								<input type="hidden" name="Su3_4" value="<fmt:formatNumber value="${regtiList4[3].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[4].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun4_4"
									class="txtFontSize2 subject" >${regtiList4[4].subjectName }</textarea>
									<input type="hidden" name="Su4_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun4_4"
								class="txtFontSize2 subject">${regtiList4[4].subjectName }</textarea>
								<input type="hidden" name="Su4_4" value="<fmt:formatNumber value="${regtiList4[4].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[5].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun5_4"
									class="txtFontSize2 subject" >${regtiList4[5].subjectName }</textarea>
									<input type="hidden" name="Su5_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun5_4"
								class="txtFontSize2 subject">${regtiList4[5].subjectName }</textarea>
								<input type="hidden" name="Su5_4" value="<fmt:formatNumber value="${regtiList4[5].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

					<c:if test="${regtiList4[6].subjectID == 1 }" var="flg" />
					<c:if test="${flg }">
						<td><p class="size drop-target ">
								<textarea cols="5" rows="1"
									style="overflow: auto; background-color: #fcf8e3;" name="Sun6_4"
									class="txtFontSize2 subject" >${regtiList4[6].subjectName }</textarea>
									<input type="hidden" name="Su6_4" value="001:">
							</p></td>
					</c:if>
					<c:if test="${!flg }">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Sun6_4"
								class="txtFontSize2 subject">${regtiList4[6].subjectName }</textarea>
								<input type="hidden" name="Su6_4" value="<fmt:formatNumber value="${regtiList4[6].subjectID}" pattern="000" />">
						</p></td>
					</c:if>

				</tr>

				<tr class="warning">
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te0_4"
								class="txtFontSize1 teacher">${regtiList4[0].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te1_4"
								class="txtFontSize1  teacher">${regtiList4[1].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te2_4"
								class="txtFontSize1  teacher">${regtiList4[2].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te3_4"
								class="txtFontSize1  teacher">${regtiList4[3].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te4_4"
								class="txtFontSize1  teacher">${regtiList4[4].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te5_4"
								class="txtFontSize1  teacher">${regtiList4[5].teacherName }</textarea>
						</p></td>
					<td><p class="size drop-target ">
							<textarea cols="5" rows="1"
								style="overflow: auto; background-color: #fcf8e3;" name="Te6_4"
								class="txtFontSize1  teacher">${regtiList4[6].teacherName }</textarea>
						</p></td>
				</tr>

				<c:if test="${!empty rooms4List }" var="list_flg" />
				<c:if test="${list_flg }">
					<tr class="warning">
						<%
							int period_4 = Integer.parseInt(request.getAttribute("period_4").toString());
						%>

						<%
							for (int week = 0; week <= 6; week++) {
									int status = 0;
									for (int cnt = 0; cnt < period_4; cnt++) {

										pageContext.setAttribute("index", cnt);
						%>

						<%
							if (week == 0) {
						%>
						<c:if test="${rooms4List[index].week == '月'}" var="flg_0" />
						<c:if test="${flg_0 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro0_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_0 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro0_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 1) {
						%>
						<c:if test="${rooms4List[index].week == '火'}" var="flg_1" />
						<c:if test="${flg_1 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro1_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_1 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro1_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 2) {
						%>
						<c:if test="${rooms4List[index].week == '水'}" var="flg_2" />
						<c:if test="${flg_2 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro2_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_2 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro2_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 3) {
						%>
						<c:if test="${rooms4List[index].week == '木'}" var="flg_3" />
						<c:if test="${flg_3 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro3_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_3 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro3_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 4) {
						%>
						<c:if test="${rooms4List[index].week == '金'}" var="flg_4" />
						<c:if test="${flg_4}">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro4_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_4 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro4_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 5) {
						%>
						<c:if test="${rooms4List[index].week == '土'}" var="flg_5" />
						<c:if test="${flg_5 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro5_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_5 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro5_4" value="" />
						</c:if>
						<%
							}
						%>
						<%
							}
						%>

						<%
							if (week == 6) {
						%>
						<c:if test="${rooms4List[index].week == '日'}" var="flg_6" />
						<c:if test="${flg_6 }">
							<td class="fonts">${ rooms4List[index].roomName}</td>
							<input type="hidden" class="roomID" name="Ro6_4"
								value="${ rooms4List[index].roomName}" />
							<%
								status++;
							%>
						</c:if>
						<%
							if (cnt == period_4 - 1 && status == 0) {
						%>
						<c:if test="${!flg_6 }">
							<td></td>
							<input type="hidden" class="roomID" name="Ro6_4" value="" />
						</c:if>
						<%
							}
						%>
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
				</c:if>

				<c:if test="${!list_flg }">
					<tr class="warning">
						<td><input type="hidden" class="roomID" name="Ro0_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro1_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro2_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro3_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro4_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro5_4" value="" /></td>
						<td><input type="hidden" class="roomID" name="Ro6_4" value="" /></td>
					</tr>
				</c:if>

			</tbody>
		</table>
	</div>
	<input type="hidden" name="page" value="${chooseClassID }" />
</form>






