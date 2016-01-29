<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<!-- メニュー -->
<nav id="menu">
	<input type="checkbox" id="toggle-nav"/>
    <label id="toggle-nav-label" for="toggle-nav"><i class="icon-reorder"></i></label>
    <div class="box">
	<ul>
	<li><a href="#"><i class="icon-home"></i> </a></li>
	    <c:forEach var="rs" items="${classIDMapA }">
		<c:forEach var="array" items="${rs.value }">
			<li><a href="/Sotsuken/publicView?page=${array }">${array }</a></li>
		</c:forEach><br/>
		</c:forEach>
</ul>
</div>
</nav>
<!-- メニュー終了 -->

<!-- 印刷エリア指定id printareaで囲んだ範囲で可能 -->
<div class="printarea">
  <div  class="container">
    <div class="table-responsive">
    <table class="table table-striped table-bordered text-center table-hover;">
    <thead >
	<tr class="purple2 ">
				<th colspan="31">10月</th>
			</tr>
      </thead>
		<tbody>



			<tr class="purple1">

				<th></th>
				<c:forEach var="dateitem" items="${dList }">
				<th nowrap><fmt:formatDate value="${dateitem.date}" pattern="dd日(E)"/></th>
				</c:forEach>

<%for (int cnt1=1; cnt1<=4; cnt1++) {%>  <!-- 1限～4限 -->

	<% if (cnt1==1){ %>
<tr class="info">
				<th class="info " rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==2){ %>
<tr class="danger">
				<th class="info " rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==3){ %>
<tr class="success ">
				<th class="success " rowspan=3><%=cnt1 %></th>
	<%} %>

	<% if (cnt1==4){ %>
<tr class="active">
				<th class="warning " rowspan=3><%=cnt1 %></th>
	<%} %>

	<%for (int cnt2=0; cnt2<3; cnt2++) {%> <!-- 各項目（０：教科　１：講師　２：部屋） -->

		<% for (int cnt3=0; cnt3<28; cnt3++) {%> <!-- 28日分 -->
		<% pageContext.setAttribute("index", cnt3); %>
			<%if (cnt1==1){ %>
				<%if(cnt2==0){ %>
				<td class="info" id="cell" data-toggle="popover" data-placement="right" data-content="" title="${period1List[index].bringThings}" nowrap>${period1List[index].subjectName}</td>
				<%} %>
				<%if(cnt2==1){ %>
				<td class="info" nowrap>${period1List[index].teacherName}</td>
				<%} %>
				<%if(cnt2==2){ %>
				<td class="info" nowrap>${period1List[index].roomName}</td>
				<%} %>
			<%} %>

			<%if (cnt1==2){ %>
				<%if(cnt2==0){ %>
				<td class="danger" id="cell" data-toggle="popover" data-placement="right" data-content="" title="${period2List[index].bringThings}" nowrap>${period2List[index].subjectName}</td>
				<%} %>
				<%if(cnt2==1){ %>
				<td class="danger" nowrap>${period2List[index].teacherName}</td>
				<%} %>
				<%if(cnt2==2){ %>
				<td class="danger" nowrap>${period2List[index].roomName}</td>
				<%} %>
			<%} %>

			<%if (cnt1==3){ %>
				<%if(cnt2==0){ %>
				<td class="success" id="cell" data-toggle="popover" data-placement="right" data-content="" title="${period3List[index].bringThings}" nowrap>${period3List[index].subjectName}</td>
				<%} %>
				<%if(cnt2==1){ %>
				<td class="success" nowrap>${period3List[index].teacherName}</td>
				<%} %>
				<%if(cnt2==2){ %>
				<td class="success" nowrap>${period3List[index].roomName}</td>
				<%} %>
			<%} %>

			<%if (cnt1==4){ %>
				<%if(cnt2==0){ %>
				<td class="warning" id="cell" data-toggle="popover" data-placement="right" data-content="" title="${period4List[index].bringThings}" nowrap>${period4List[index].subjectName}</td>
				<%} %>
				<%if(cnt2==1){ %>
				<td class="warning" nowrap>${period4List[index].teacherName}</td>
				<%} %>
				<%if(cnt2==2){ %>
				<td class="warning" nowrap>${period4List[index].roomName}</td>
				<%} %>
			<%} %>

		<%} %>
		</tr>
	<%} %>
<%} %>
			</tbody>
		</table>
	</div>

	<div class="panel panel-warning">
  <div class="panel-heading">
    <h3 class="panel-title">お知らせ</h3>
  </div>
  <div class="panel-body panel1">
    デフォルトのパネル
  </div>
</div>

  </div>
</div>