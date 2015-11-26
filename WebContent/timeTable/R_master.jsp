<%@page import="timetable.db.masterInfo"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sun.xml.internal.bind.v2.schemagen.xmlschema.Import"%>
<%@ page pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>d



        <!-- Start Logo Section --><!-- ヘッダー部分 -->
        <section id="logo-section" class="text-center">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="logo text-center">
                            <h1>${page_title }</h1>
                            <p class="text-right"><i class="fa fa-star color-yellow fa-3x"></i></p>

                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Logo Section -->
<!-- タブ -->

<ul class="nav nav-tabs">
<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R4 <b class="caret"></b></a>
	<ul class="dropdown-menu" >
		<li><a href="/Sotsuken/publicView?page=R4A1">R4A1</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A2">R4A2</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A3">R4A3</a></li>
    	<li><a href="#">R4A4</a></li>
    	<li><a href="#">R4A5</a></li>
	</ul>
</li>
<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R3 <b class="caret"></b></a>
	<ul class="dropdown-menu">
		<li><a href="/Sotsuken/publicView?page=R4A1">R3A1</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A2">R3A2</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A3">R3A3</a></li>
    	<li><a href="#">R3A4</a></li>
    	<li><a href="#">R3A5</a></li>
	</ul>
</li>
<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R2 <b class="caret"></b></a>
	<ul class="dropdown-menu">
		<li><a href="/Sotsuken/publicView?page=R4A1">R2A1</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A2">R2A2</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A3">R2A3</a></li>
    	<li><a href="#">R2A4</a></li>
    	<li><a href="#">R2A5</a></li>
	</ul>
</li>
<li><a class="dropdown-toggle" data-toggle="dropdown" href="#">R1 <b class="caret"></b></a>
	<ul class="dropdown-menu">
		<li><a href="/Sotsuken/publicView?page=R4A1">R1A1</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A2">R1A2</a></li>
		<li><a href="/Sotsuken/publicView?page=R4A3">R1A3</a></li>
    	<li><a href="#">R1A4</a></li>
    	<li><a href="#">R1A5</a></li>
	</ul>
</li>

</ul>


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
				<td class="info" id="cell" data-toggle="popover" data-placement="right" data-content="教科書" title="持ち物" nowrap>${period1List[index].subjectName} 授業 </td>
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
				<td class="danger" id="cell" data-toggle="popover" data-placement="right" data-content="" title="持ち物" nowrap>${period2List[index].subjectName}</td>
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
				<td class="success" id="cell" data-toggle="popover" data-placement="right" data-content="" title="持ち物" nowrap>${period3List[index].subjectName}</td>
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
				<td class="warning" id="cell" data-toggle="popover" data-placement="right" data-content="" title="持ち物" nowrap>${period4List[index].subjectName}</td>
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