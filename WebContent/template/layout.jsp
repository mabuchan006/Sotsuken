<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<script >
 	$(function(e) {
 		$("#class-room").accordion();
 		f_drag();
 		f_drop(e);
 		f_temp_drag();
 		f_temp_drop(e);
 	});
</script>

</head>

<body>
	<div class="pure-container" data-effect="pure-effect-scaleRotate">
		<input type="checkbox" id="pure-toggle-left" class="pure-toggle"
			data-toggle="left" /> <label class="pure-toggle-label"
			for="pure-toggle-left" data-toggle-label="left"><span
			class="pure-toggle-icon"></span></label>

		<nav class="pure-drawer" data-position="left">


			<h1 style="padding: 100px 20px 20px; margin: 0;">管理者メニュー</h1>
			<ul>
				<li class="select2 moji"><h1 style="padding: 15px 40px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=teacher_manage">講師管理</a></h1></li>

				<li class="select2 moji"><h1 style="padding: 15px 40px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=subject_manage">科目管理</a></h1></li>

				<li class="select2 moji"><h1 style="padding: 15px 40px; margin: 0;">
				<a href="/Sotsuken/ManageUpdate?page=class_manage">クラス管理</a></h1></li>

				<li class="select2 moji"><h1 style="padding: 15px 40px; margin: 0;">
				<a href="/Sotsuken/divideUpdate">コマ割り管理</a></h1></li>


				<li>
					<ul id="flip3" class="dropmenu select2 ">
						<li class="select2 moji box" style="padding: 15px 40px; margin:  0 20px 0 0;"><a
							href="#">時間割管理</a>
							<ul >
								<li><a href="#">R</a></li>
								<li><a href="#">S</a></li>
								<li><a href="#">J</a></li>
								<li><a href="#">A</a></li>
							</ul></li>
					</ul>
				</li>
			</ul>


		</nav>

		<div class="pure-pusher-container ">
			<div class="pure-pusher">
				<div class="logo text-center">
					<h1>${page_title }</h1>

				</div>
				<jsp:include page="${content_page}" />


			</div>
		</div>
		<label class="pure-overlay" for="pure-toggle-left" data-overlay="left"></label>
	</div>


</body>
</html>