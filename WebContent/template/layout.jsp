<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<c:if test="${empty tchinf}">
<jsp:forward page="/Sotsuken/top" />
</c:if>
<c:if test="${!empty tchinf}">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:if test="${js != null}">
	<meta http-equiv="content-script-type" content="text/javascript" />
</c:if>

<title>${page_title}</title>

<c:if test="${js != null}">
	<c:forEach var="itemjs" items="${js}">
		<script type="text/javascript" src="${itemjs}"></script>
	</c:forEach>
</c:if>

<c:if test="${css != null}">
	<c:forEach var="itemcss" items="${css}">
		<link href="${itemcss}" rel="stylesheet" type="text/css">
	</c:forEach>

</c:if>
</c:if>
</head>

<body>
	<div class="pure-container" data-effect="pure-effect-scaleRotate">
		<input type="checkbox" id="pure-toggle-left" class="pure-toggle"
			data-toggle="left" /> <label class="pure-toggle-label"
			for="pure-toggle-left" data-toggle-label="left"><span
			class="pure-toggle-icon"></span></label>





		<nav class="pure-drawer" data-position="left">


			<h1 style="padding: 100px 20px 20px; margin: 0;">
			<a href="/Sotsuken/manage/manage_top.jsp" class="manage-top">管理メニュー</a></h1>

			<ul>
				<li class="select2 moji manage"><h1 style="padding: 15px 20px 15px 0px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=teacher_manage"><i class="fa fa-user fa-fw"></i>講師管理</a></h1></li>

				<li class="select2 moji manage"><h1 style="padding: 15px 20px 15px 0px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=subject_manage"><i class="fa fa-book fa-fw"></i>科目管理</a></h1></li>

				<li class="select2 moji manage"><h1 style="padding: 15px 20px 15px 0px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=class_manage"><i class="fa fa-mortar-board fa-fw"></i>クラス管理</a></h1></li>

				<li class="select2 moji manage"><h1 style="padding: 15px 20px 15px 0px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=event_manage"><i class="fa fa-exclamation-triangle fa-fw"></i>イベント管理</a></h1></li>

				<li class="select2 moji manage"><h1 style="padding: 15px 40px 15px 0px; margin: 0;">
				<a href="/Sotsuken/divideUpdate"><i class="fa fa-building-o fa-fw"></i>コマ割管理</a></h1></li>


				<li>
					<ul id="flip3" class="dropmenu select2 ">
						<li class="select2 moji box" style="padding: 15px 20px 15px 0px; margin:  0 20px 0 0;">
							<a><i class="fa fa-calendar fa-fw"></i>時間割作成</a>
							<ul>
								<li class="editView"><a href="/Sotsuken/editView?page=R">R</a></li>
								<li class="editView"><a href="/Sotsuken/editView?page=S">S</a></li>
								<li class="editView"><a href="/Sotsuken/editView?page=J">J</a></li>
								<li class="editView"><a href="/Sotsuken/editView?page=A">A</a></li>
							</ul>
						</li>
					</ul>
				</li>

				<li class="select2 moji"><h1 style="padding: 15px 20px; margin-top: 280px;">
				<a href="/Sotsuken/loginControl?state=logout"><i class="fa fa-reply ">logout</i></a></h1></li>
			</ul>


		</nav>

		<div class="pure-pusher-container ">
			<div class="pure-pusher">
			<div class="row col-md-9 col-md-offset-2">
				<div class="logo text-left">
					<c:if test="${!empty line_header }">
					<h1 class="${line_header }">${page_title }</h1>
					</c:if>


					<c:if test="${empty line_header }">
					<h1>${page_title }</h1>
					</c:if>

					<br />


				</div>
				</div>
				<jsp:include page="${content_page}" />


			</div>
		</div>
		<label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label>
	</div>


</body>
</html>