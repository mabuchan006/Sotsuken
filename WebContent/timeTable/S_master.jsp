<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!-- 	<ul class="nav nav-tabs noprint"> -->
<%-- 		<c:forEach var="rs" items="${classIDMapS }"> --%>
<%-- 			<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">${rs.key}<b class="caret"></b></a> --%>
<!-- 				<ul class="dropdown-menu"> -->
<%-- 					<c:forEach var="array" items="${rs.value }"> --%>
<%-- 						<li><a href="/Sotsuken/publicView?page=${array }">${array }</a></li> --%>
<%-- 					</c:forEach> --%>
<!-- 				</ul> -->
<!-- 			</li> -->
<%-- 		</c:forEach> --%>
<!-- 	</ul> -->

<!-- タブ -->
<ul class="nav nav-tabs">
<!-- S3 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			S3 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="/Sotsuken/publicView?page=S3A1">S3A1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S3A2">S3A2</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S3M1">S3M1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S3M2">S3M2</a></li>

		</ul>
	</li>
<!-- S2 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			S2 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2A1">S2A1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2A2">S2A2</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2A3">S2A3</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2A4">S2A4</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2M1">S2M1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S2M2">S2M2</a></li>
		</ul>
	</li>
<!-- S1 -->
	<li role="presentation" class="dropdown">
		<a class="dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-expanded="false">
			S1 <span class="caret"></span>
		</a>
		<ul class="dropdown-menu" role="menu">
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1A1">S1A1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1A2">S1A2</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1A3">S1A3</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1A4">S1A4</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1M1">S1M1</a></li>
			<li role="presentation"><a href="/Sotsuken/publicView?page=S1M2">S1M2</a></li>

		</ul>
	</li>




</ul>

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