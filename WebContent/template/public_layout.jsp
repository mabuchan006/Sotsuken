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
		<c:if test="${eventFlag == null}">
			<sql:query sql="SELECT eventID,date, eventName,roomName,classID,endFlag,
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
							<li class="line">${ event.date} ${ event.eventName} 場所 :${ event.roomName}</li>
							<c:if test="${event.endFlag == 1}">
							<script>
							$("${ event.date}").html("<p class=\"tate\">${ event.eventName}</p>");
							$("${ event.date}").attr("rowspan","12");
							$("${ event.date}").css("background-color","#ffff66");
							$("${ event.date}").css("font-weight","900");
							//for(var row = 3;row < 15;row++){
								//$("table tr:eq("+row+") td:eq(0)").remove();
								//}


							</script>
							</c:if>
						</c:forEach>
						</ul>
					</div>
			</div>
		</div>
	</div>
	<script>
	//for(var row = 3;row < 15;row++){
	//$("table tr:eq("+row+") td:eq(0)").remove();
	//}

	$("table tr:eq(2) th").each(function(){
		alert($(this).attr("html"))
	})
}
	$("${ event.date}").attr("class");
	$(".tate").css("padding","26px");
	$(".tate").css("height", "150px");
	$(".tate").css("font-size","27px");
	$(".tate").css("writing-mode", "tb-rl");
	$(".tate").css("-webkit-writing-mode", "vertical-rl");

</script>
</c:if>
</body>
</html>