<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test="${js != null}">
<meta http-equiv="content-script-type" content="text/javascript" />
</c:if>

<title>${page_title}</title>


<c:if test="${css != null}">
<c:forEach var="itemcss" items="${css}">
<link href="${itemcss}" rel="stylesheet" type="text/css" >
</c:forEach>
</c:if>


<!-- 印刷用CSS
<link rel="stylesheet" href="WebContent/css/print.css" type="text/css" media="print" />
 -->
<c:if test="${js != null}">
<c:forEach var="itemjs" items="${js}">
<script type="text/javascript" src="${itemjs}"></script>
</c:forEach>
</c:if>

</head>

<body>
<!-- Start Logo Section --><!-- ヘッダー部分 -->
	<section id="logo-section" class="text-center">
		<div class="container">
			<div class="row"></div>
		</div>
	</section>
	<!-- Start Logo Section -->
	<!-- ヘッダー部分 -->
	<section id="logo-section" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="logo text-center">
						<h1>${page_title }</h1>
						<div class="col-md-4 col-md-offset-8 text-right noprint">
							<div style="display: inline-flex">
								<c:if test="${eventFlag == null}">
								<button type="button" class="favolite" id="falseCookie">
									<i class="fa fa-star"></i>お気に入り
								</button>
								</c:if>

								<!-- 印刷用アイコン -->
								<button type="button" class="print" onclick="window.print()">
									<i class="fa fa-print"></i>印刷
								</button>

								<form action="/Sotsuken/top" method="get">
									<button type="submit" class="top">
										<i class="fa fa-home"></i>TOP
									</button>
									<input type="hidden" name="top" value="top" />
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- End Logo Section -->
	<jsp:include page="${content_page}" />
			<sql:query sql="SELECT eventID,date, eventName,roomName,classID,
			GROUP_CONCAT(DISTINCT period ORDER BY FIELD(period, 1,2,3,4) separator ' ') as doperiod
			FROM tbl_event GROUP BY date, eventName HAVING classID LIKE ? || classID = 'AAAA'  ORDER BY date ASC"
				 var="rs" dataSource="jdbc/MySqlCon">
				<sql:param value="${page_title}" />
			</sql:query>

	<div class="printarea">
		<div class="container">
			<div class="panel panel-warning">
				<div class="panel-heading">
					<h3 class="panel-title">お知らせ</h3>
				</div>
					<div class="panel-body panel1">
						<ul>
						<c:forEach var="event" items="${rs.rows }" >
							<li class="line">${ event.date} ${ event.eventName} 場所 ${ event.roomName}</li>
						</c:forEach>
						</ul>
					</div>
			</div>
		</div>
	</div>
	<script>

	$("table tr:eq(2) td:eq(0)").html("ソフトバレーボール大会");
	$("table tr:eq(2) td:eq(0)").attr("rowspan","12");
	$("table tr:eq(2) td:eq(0)").css("background-color","#ffff66");
	$("table tr:eq(2) td:eq(0)").css("width","1em");
	$("table tr:eq(2) td:eq(0)").css("text-align","center");
	$("table tr:eq(2) td:eq(0)").css("font-weight","900");
	$("table tr:eq(2) td:eq(0)").css("pdding","1em");





	for(var row = 3;row < 15;row++){
	$("table tr:eq("+row+") td:eq(0)").remove();
	}




</script>
</body>
</html>