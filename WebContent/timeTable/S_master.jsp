<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<div class="printarea">
  <div  class="container">
  <!-- メニュー -->
<nav id="menu">
	<input type="checkbox" id="toggle-nav"/>
    <label id="toggle-nav-label" for="toggle-nav">S</label>
    <div class="box">
	<ul>
	    <c:forEach var="rs" items="${classIDMapS }">
		<c:forEach var="array" items="${rs.value }">
			<li><a href="/Sotsuken/publicView?page=${array }">${array }</a></li>
		</c:forEach><br/>
		</c:forEach>
</ul>
</div>
</nav>
<!-- メニュー終了 -->


    <div class="table-responsive">
    <table class="table table-striped table-bordered text-center table-hover;">
    <thead >
	<tr class="purple2 month">

			</tr>
      </thead>
		<tbody>



			<tr class="purple1 countDate">

						<th></th>
												<%int colCnt = 1;%>
						<c:forEach var="dateitem" items="${dList }">
							<th nowrap id="${dateitem.date}" class="<%=colCnt%>"><fmt:formatDate value="${dateitem.date}"
									pattern="MM月dd日(E)" /></th>
									<%colCnt++;%>
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



  </div>
</div>